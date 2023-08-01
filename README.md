# werf-issue
Minimal repro of werf issue

Running `werf build`:
```
bash-5.1$ werf build
Version: v1.2.248
Using werf config render file: /tmp/werf-config-render-3812975279

┌ Concurrent build plan (no more than 5 images at the same time)
│ Set #0:
│ - ⛵ image werf-issue-base [linux/arm64]
│ - ⛵ image werf-issue-base [linux/amd64]
│
│ Set #1:
│ - ⛵ image werf-issue/stage/unit [linux/arm64]
│ - ⛵ image werf-issue/stage/unit [linux/amd64]
│
│ Set #2:
│ - ⛵ image werf-issue [linux/arm64]
│ - ⛵ image werf-issue [linux/amd64]
└ Concurrent build plan (no more than 5 images at the same time)

┌ ⛵ image werf-issue-base [linux/arm64]
│ Use previously built image for werf-issue-base/WORKDIR1
│      name: werf-issue:26cf23570fc4510c49bed90ac48fbb9e37be3f5678d89978e809dc53-1690894831029
│        id: 255171fdfea7
│   created: 2023-08-01 13:00:23.975362669 +0000 UTC
│      size: 0 B
│  platform: linux/arm64
└ ⛵ image werf-issue-base [linux/arm64] (0.09 seconds)

┌ ⛵ image werf-issue-base [linux/amd64]
│ Use previously built image for werf-issue-base/WORKDIR1
│      name: werf-issue:098763dd312339bd1cf7c0e98dbde7c75f3d4c9021b99c30dd2c8544-1690894838118
│        id: f12d8622dffb
│   created: 2023-08-01 13:00:31.071646069 +0000 UTC
│      size: 0 B
│  platform: linux/amd64
└ ⛵ image werf-issue-base [linux/amd64] (0.09 seconds)

┌ ⛵ image werf-issue/stage/unit [linux/arm64]
│ Use previously built image for werf-issue/stage/unit/WORKDIR1
│      name: werf-issue:e4150ea4dd06cfa693135c60388084655d8ff88bab0f953d0ff6d729-1690894423015
│        id: e7c66533a2bc
│   created: 2023-08-01 12:53:01.162952927 +0000 UTC
│      size: 0 B
│  platform: linux/arm64
└ ⛵ image werf-issue/stage/unit [linux/arm64] (0.03 seconds)

┌ ⛵ image werf-issue/stage/unit [linux/amd64]
│ Use previously built image for werf-issue/stage/unit/WORKDIR1
│      name: werf-issue:3cacb85f658c3736358fe10218dd9d467428ce6c4bfe34809e926df6-1690894430935
│        id: 6b949d110652
│   created: 2023-08-01 12:53:43.048498776 +0000 UTC
│      size: 0 B
│  platform: linux/amd64
└ ⛵ image werf-issue/stage/unit [linux/amd64] (0.03 seconds)

┌ ⛵ image werf-issue [linux/arm64]
│ Use previously built image for werf-issue/COPY1
│      name: werf-issue:1f56e7ae847f5f19bbb00acaff6c334d7fb01d9d8e57e7b6396fe1c1-1690894854260
│        id: 200925750dc8
│   created: 2023-08-01 13:00:39.899371058 +0000 UTC
│      size: 0 B
│  platform: linux/arm64
│
│ Use previously built image for werf-issue/COPY2
│      name: werf-issue:d566db45c3b4d398f4b74b9445d1f5cacf0d7a572bba8e5c124c8330-1690894870228
│        id: ef6b42d934c8
│   created: 2023-08-01 13:00:55.816384472 +0000 UTC
│      size: 0 B
│  platform: linux/arm64
│
│ Use previously built image for werf-issue/COPY3
│      name: werf-issue:0750e71367750b1fa01433c24690a05eba52de7a0b9f1c39f8c90068-1690894885902
│        id: 5089426c57f3
│   created: 2023-08-01 13:01:11.560458725 +0000 UTC
│      size: 0 B
│  platform: linux/arm64
└ ⛵ image werf-issue [linux/arm64] (0.19 seconds)

┌ ⛵ image werf-issue [linux/amd64]
│ Use previously built image for werf-issue/COPY1
│      name: werf-issue:cdb434d0c56d5cb093d7598c83501a1b997d97041fa611f4b5c9e7f5-1690894854265
│        id: cf943e106f69
│   created: 2023-08-01 13:00:46.674719806 +0000 UTC
│      size: 0 B
│  platform: linux/amd64
│
│ Use previously built image for werf-issue/COPY2
│      name: werf-issue:e10e44a72299b60bf0f5c5f39cea657ef84d35e71dac570724df1df8-1690894870239
│        id: 73263cb0db47
│   created: 2023-08-01 13:00:55.817011291 +0000 UTC
│      size: 0 B
│  platform: linux/amd64
│
│ Use previously built image for werf-issue/COPY3
│      name: werf-issue:832e893579dc59129b0ee2f195dc6317d36701c3b5451e26f641f788-1690894885913
│        id: 7c2315eb8a12
│   created: 2023-08-01 13:01:18.70404522 +0000 UTC
│      size: 0 B
│  platform: linux/amd64
└ ⛵ image werf-issue [linux/amd64] (0.19 seconds)

┌ Build summary
│ Set #0:
│ - ⛵ image werf-issue-base [linux/arm64] (0.09 seconds)
│ - ⛵ image werf-issue-base [linux/amd64] (0.09 seconds)
│
│ Set #1:
│ - ⛵ image werf-issue/stage/unit [linux/arm64] (0.03 seconds)
│ - ⛵ image werf-issue/stage/unit [linux/amd64] (0.03 seconds)
│
│ Set #2:
│ - ⛵ image werf-issue [linux/amd64] (0.19 seconds)
│ - ⛵ image werf-issue [linux/arm64] (0.19 seconds)
└ Build summary
panic: runtime error: invalid memory address or nil pointer dereference
[signal SIGSEGV: segmentation violation code=0x1 addr=0x10 pc=0x3115bdc]

goroutine 1 [running]:
github.com/werf/werf/pkg/build/image.NewMultiplatformImage.func1(0x7fa08c3b0dd8?)
        /git/pkg/build/image/multiplatform_image.go:35 +0x3c
github.com/werf/werf/pkg/util.MapFuncToSlice[...](...)
        /git/pkg/util/slice.go:5
github.com/werf/werf/pkg/build/image.NewMultiplatformImage({0xc000691270, 0xf}, {0xc000df5a40, 0x2, 0x2}, {0x1e19fbc?, 0xc0001bdcc0?}, {0x0, 0x1, 0x1})
        /git/pkg/build/image/multiplatform_image.go:33 +0x166
github.com/werf/werf/pkg/build.(*BuildPhase).AfterImages(0xc0016c3d60, {0x498ccc8?, 0xc0005bb8c0})
        /git/pkg/build/build_phase.go:265 +0x616
github.com/werf/werf/pkg/build.(*Conveyor).runPhases.func1()
        /git/pkg/build/conveyor.go:587 +0x36
github.com/werf/logboek/internal/stream.(*LogProcess).DoError(0xc000c5da40, 0xc0015ee580)
        /go/pkg/mod/github.com/werf/logboek@v0.5.5/internal/stream/process_types.go:195 +0xd5
github.com/werf/werf/pkg/build.(*Conveyor).runPhases(0xc000551600?, {0x498ccc8?, 0xc0005bb8c0}, {0xc000df4450, 0x1, 0x1}, 0x47?)
        /git/pkg/build/conveyor.go:586 +0x48f
github.com/werf/werf/pkg/build.(*Conveyor).Build(0xc000551600, {0x498ccc8, 0xc0005bb8c0}, {{{0x0, 0x0}, 0x0, 0x0}, {{0x0, 0x0, 0x0}}, ...})
        /git/pkg/build/conveyor.go:540 +0x273
github.com/werf/werf/cmd/werf/build.run.func1(0x49bad18?)
        /git/cmd/werf/build/main.go:261 +0x58
github.com/werf/werf/pkg/build.(*ConveyorWithRetryWrapper).WithRetryBlock.func1()
        /git/pkg/build/conveyor_with_retry.go:60 +0x1d8
github.com/werf/werf/pkg/storage/manager.RetryOnUnexpectedStagesStorageState({0x0?, 0x0?}, {0xc0005d5358?, 0x1e26826?}, 0xc0015b7348)
        /git/pkg/storage/manager/storage_manager.go:110 +0x28
github.com/werf/werf/pkg/build.(*ConveyorWithRetryWrapper).WithRetryBlock(0x0?, {0x498ccc8?, 0xc0005bb8c0?}, 0x0?)
        /git/pkg/build/conveyor_with_retry.go:45 +0x6b
github.com/werf/werf/cmd/werf/build.run({0x498ccc8, 0xc0005bb8c0}, {0x49bad18, 0xc000fbe640}, {0x499de60?, 0xc000fe37a0?}, {{0x0, 0x0, 0x0}, 0x0})
        /git/cmd/werf/build/main.go:260 +0xa68
github.com/werf/werf/cmd/werf/build.runMain({0x498ccc8, 0xc0005bb8c0}, {{0x0?, 0x0?, 0xc0005d5b40?}, 0x57?})
        /git/cmd/werf/build/main.go:192 +0x6b5
github.com/werf/werf/cmd/werf/build.NewCmd.func1.1()
        /git/cmd/werf/build/main.go:63 +0x46
github.com/werf/werf/cmd/werf/common.LogRunningTime(0xc0005d5c58)
        /git/cmd/werf/common/common.go:1349 +0x42
github.com/werf/werf/cmd/werf/build.NewCmd.func1(0xc00117e300, {0x6c0bcb8, 0x0, 0x0})
        /git/cmd/werf/build/main.go:62 +0x1be
main.setupTelemetryInit.func1(0xc00117e300?, {0x6c0bcb8, 0x0, 0x0})
        /git/cmd/werf/main.go:297 +0xd2
github.com/spf13/cobra.(*Command).execute(0xc00117e300, {0x6c0bcb8, 0x0, 0x0})
        /go/pkg/mod/github.com/spf13/cobra@v1.7.0/command.go:940 +0x862
github.com/spf13/cobra.(*Command).ExecuteC(0xc0010a8300)
        /go/pkg/mod/github.com/spf13/cobra@v1.7.0/command.go:1068 +0x3bd
github.com/spf13/cobra.(*Command).Execute(...)
        /go/pkg/mod/github.com/spf13/cobra@v1.7.0/command.go:992
main.main()
        /git/cmd/werf/main.go:84 +0x199
```
