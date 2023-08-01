FROM public.ecr.aws/docker/library/python:3.11.4-bullseye as base

# this "dummy" stage is needed otherwise it causes a panic
LABEL foo="bar"

# panic: runtime error: invalid memory address or nil pointer dereference
# [signal SIGSEGV: segmentation violation code=0x1 addr=0x28 pc=0x311ca63]

# goroutine 123 [running]:
# github.com/werf/werf/pkg/build.(*BuildPhase).AfterImageStages(0xc000f4e840?, {0x3fe11fb?, 0xc0005cfd40?}, 0xc000355680)
#         /git/pkg/build/build_phase.go:571 +0x63
# github.com/werf/werf/pkg/build.(*Conveyor).doImage.func2()
#         /git/pkg/build/conveyor.go:729 +0x489
# github.com/werf/logboek/internal/stream.(*Stream).logProcess.func1()
#         /go/pkg/mod/github.com/werf/logboek@v0.5.5/internal/stream/process.go:150 +0x1b
# github.com/werf/logboek/internal/stream.(*Stream).logProcess(0xc0003114d0, {0xc0010a8990?, 0x38?}, 0xc0005cfda0, 0xc0005c9a00)
#         /go/pkg/mod/github.com/werf/logboek@v0.5.5/internal/stream/process.go:157 +0x1cf
# github.com/werf/logboek/internal/stream.(*LogProcess).DoError(0xc0005c99c0, 0xc0005c9a00)
#         /go/pkg/mod/github.com/werf/logboek@v0.5.5/internal/stream/process_types.go:201 +0xa5
# github.com/werf/werf/pkg/build.(*Conveyor).doImage(0x0?, {0x498ccc8?, 0xc0005cfd40}, 0xc000355680, {0xc0004fd010, 0x1, 0x1})
#         /git/pkg/build/conveyor.go:702 +0x198
# github.com/werf/werf/pkg/build.(*Conveyor).doImagesInParallel.func3({0x498ccc8, 0xc0005cfd40}, 0xc0007f3f78?)
#         /git/pkg/build/conveyor.go:657 +0x215
# github.com/werf/werf/pkg/util/parallel.DoTasks.func1()
#         /git/pkg/util/parallel/parallel.go:80 +0x304
# created by github.com/werf/werf/pkg/util/parallel.DoTasks
#         /git/pkg/util/parallel/parallel.go:73 +0x21e
