// SPDX-License-Identifier: Apache-2.0
// SPDX-FileCopyrightText: 2022 Jiuyang Liu <liu@jiuyang.me>

package tests.elaborate

import chisel3._
import chisel3.aop.Select
import chisel3.aop.injecting.InjectingAspect
import chisel3.stage.ChiselGeneratorAnnotation
import chisel3.experimental.SerializableModuleGenerator
import chisel3.internal.panama.circt.PanamaCIRCTConverterAnnotation
import v.{V, VParameter}
import firrtl.AnnotationSeq
import firrtl.stage.FirrtlCircuitAnnotation
import mainargs._

import java.io.{BufferedOutputStream, FileOutputStream}

object Main {
  @main def elaborate(
                       @arg(name = "dir") dir: String,
                       @arg(name = "config") config: String,
                       @arg(name = "tb") tb: Boolean
                     ) = {
    val dir_ = os.Path(dir, os.pwd)
    val config_ = os.Path(config, os.pwd)

    val generator = upickle.default.read[SerializableModuleGenerator[V, VParameter]](ujson.read(os.read(config_)))
    var topName: String = "unnamed"
    val annos: AnnotationSeq = Seq(
      new chisel3.stage.phases.Elaborate,
      chisel3.internal.panama.Convert
    ).foldLeft(
      Seq(
        ChiselGeneratorAnnotation(() => /* if(tb) new TestBench(generator) else */ generator.module())
      ): AnnotationSeq
    ) { case (annos, stage) => stage.transform(annos) }
      .flatMap {
        case PanamaCIRCTConverterAnnotation(converter) =>
          converter.verilogStream.writeBytesTo(new BufferedOutputStream(new FileOutputStream((dir_ / s"$topName.v").toString)))
          None
        case _: chisel3.stage.DesignAnnotation[_] => None
        case a => Some(a)
      }
    os.write(dir_ / s"$topName.anno.json", firrtl.annotations.JsonProtocol.serialize(annos))
  }

  def main(args: Array[String]): Unit = ParserForMethods(this).runOrExit(args)
}
