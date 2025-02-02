# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  arithmetic = {
    pname = "arithmetic";
    version = "dd9bd585a8d444399eb5a31d088567e0ef56f43a";
    src = fetchFromGitHub {
      owner = "sequencer";
      repo = "arithmetic";
      rev = "dd9bd585a8d444399eb5a31d088567e0ef56f43a";
      fetchSubmodules = false;
      sha256 = "sha256-PquHsdyKbN/xKV4UhtTmBAVic2PwiUPvw50oZKUN08I=";
    };
    date = "2023-12-08";
  };
  berkeley-hardfloat = {
    pname = "berkeley-hardfloat";
    version = "b3c8a38c286101973b3bc071f7918392343faba7";
    src = fetchFromGitHub {
      owner = "ucb-bar";
      repo = "berkeley-hardfloat";
      rev = "b3c8a38c286101973b3bc071f7918392343faba7";
      fetchSubmodules = false;
      sha256 = "sha256-3j6K/qFuH8PqJT6zHVTIphq9HWxmSGoIqDo9GV1bxmU=";
    };
    date = "2023-10-25";
  };
  cde = {
    pname = "cde";
    version = "52768c97a27b254c0cc0ac9401feb55b29e18c28";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "cde";
      rev = "52768c97a27b254c0cc0ac9401feb55b29e18c28";
      fetchSubmodules = false;
      sha256 = "sha256-bmiVhuriiuDFFP5gXcP2kKwdrFQ2I0Cfz3N2zed+IyY=";
    };
    date = "2023-08-05";
  };
  chisel = {
    pname = "chisel";
    version = "efe9646f422178f7deb12a976ee89842fa8a5ccf";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "chisel";
      rev = "efe9646f422178f7deb12a976ee89842fa8a5ccf";
      fetchSubmodules = false;
      sha256 = "sha256-0eMlw6Kdnd2oKxoczAjopEm+17o3iZ3+fNQkVGprIFg=";
    };
    date = "2023-12-19";
  };
  riscv-opcodes = {
    pname = "riscv-opcodes";
    version = "61d2ef45dcb4a276a1e69643880cb75a9ca5ba79";
    src = fetchFromGitHub {
      owner = "riscv";
      repo = "riscv-opcodes";
      rev = "61d2ef45dcb4a276a1e69643880cb75a9ca5ba79";
      fetchSubmodules = false;
      sha256 = "sha256-jdXKNIigKAqn2bbrMn6HxB61AM8KwSCvFEoL1N604rw=";
    };
    date = "2023-11-27";
  };
  rocket-chip = {
    pname = "rocket-chip";
    version = "b3fa8df9bfb3a6d5b1d57dc4a0633fc6028242ac";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "rocket-chip";
      rev = "b3fa8df9bfb3a6d5b1d57dc4a0633fc6028242ac";
      fetchSubmodules = false;
      sha256 = "sha256-hQcjdwIObdMLrmLaK/yGTdClbbGlVC61K/o6dehiHFU=";
    };
    date = "2023-11-25";
  };
  rocket-chip-inclusive-cache = {
    pname = "rocket-chip-inclusive-cache";
    version = "7f391c5e4cba3cdd4388efb778bd80da35d5574a";
    src = fetchFromGitHub {
      owner = "chipsalliance";
      repo = "rocket-chip-inclusive-cache";
      rev = "7f391c5e4cba3cdd4388efb778bd80da35d5574a";
      fetchSubmodules = false;
      sha256 = "sha256-mr3PA/wlXkC/Cu/H5T6l1xtBrK9KQQmGOfL3TMxq5T4=";
    };
    date = "2023-08-15";
  };
  rvdecoderdb = {
    pname = "rvdecoderdb";
    version = "6c8ae11a99a1bfc06965a1dc00aa491d4a847553";
    src = fetchFromGitHub {
      owner = "sequencer";
      repo = "rvdecoderdb";
      rev = "6c8ae11a99a1bfc06965a1dc00aa491d4a847553";
      fetchSubmodules = false;
      sha256 = "sha256-s8X1pZceNyAqzE+mKEK7TVL4FP30GJbCOTa376vko+M=";
    };
    date = "2023-11-28";
  };
  tilelink = {
    pname = "tilelink";
    version = "cd177e4636eb4a20326795a66e9ab502f9b2500a";
    src = fetchFromGitHub {
      owner = "sequencer";
      repo = "tilelink";
      rev = "cd177e4636eb4a20326795a66e9ab502f9b2500a";
      fetchSubmodules = false;
      sha256 = "sha256-PIPLdZSCNKHBbho0YWGODSEM8toRBlOYC2gcbh+gqIY=";
    };
    date = "2023-08-11";
  };
}
