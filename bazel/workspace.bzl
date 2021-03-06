# brpc external dependencies

def brpc_workspace():
  native.http_archive(
      name = "com_google_protobuf",
      strip_prefix = "protobuf-b04e5cba356212e4e8c66c61bbe0c3a20537c5b9",
      url = "https://github.com/google/protobuf/archive/b04e5cba356212e4e8c66c61bbe0c3a20537c5b9.tar.gz",
  )


  native.http_archive(
      name = "com_github_gflags_gflags",
      strip_prefix = "gflags-46f73f88b18aee341538c0dfc22b1710a6abedef",
      url = "https://github.com/gflags/gflags/archive/46f73f88b18aee341538c0dfc22b1710a6abedef.tar.gz",
  )

  native.bind(
      name = "gflags",
      actual = "@com_github_gflags_gflags//:gflags",
  )

  native.new_http_archive(
      name = "com_github_google_leveldb",
      build_file = str(Label("//:bazel/third_party/leveldb.BUILD")),
      strip_prefix = "leveldb-a53934a3ae1244679f812d998a4f16f2c7f309a6",
      url = "https://github.com/google/leveldb/archive/a53934a3ae1244679f812d998a4f16f2c7f309a6.tar.gz"
  )

  native.new_http_archive(
      name = "com_github_google_glog",
      build_file = str(Label("//:bazel/third_party/glog.BUILD")),
      strip_prefix = "glog-a6a166db069520dbbd653c97c2e5b12e08a8bb26",
      url = "https://github.com/google/glog/archive/a6a166db069520dbbd653c97c2e5b12e08a8bb26.tar.gz"
  )

  native.http_archive(
      name = "com_google_googletest",
      strip_prefix = "googletest-0fe96607d85cf3a25ac40da369db62bbee2939a5",
      url = "https://github.com/google/googletest/archive/0fe96607d85cf3a25ac40da369db62bbee2939a5.tar.gz",
  )

  # cpplint from google style guide
  native.new_git_repository(
      name = "google_styleguide",
      build_file = "bazel/third_party/google_styleguide.BUILD",
      commit = "159b4c81bbca97a9ca00f1195a37174388398a67",
      remote = "https://github.com/google/styleguide.git",
      )
