; ModuleID = 'h264ref.vlc.symbol2uvlc.ll'
target datalayout = "e-m:e-p:32:32:32-i64:64:64-i32:32:32-i16:16:16-i1:8:8-f64:64:64-f32:32:32-v64:64:64-v32:32:32-a:0-n16:32"
target triple = "hexagon"

%struct.syntaxelement.214 = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement.214*, %struct.EncodingEnvironment.221*)* }
%struct.EncodingEnvironment.221 = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }

; Function Attrs: norecurse nounwind
define i32 @symbol2uvlc(%struct.syntaxelement.214* nocapture %sym) #0 {
  %1 = getelementptr inbounds %struct.syntaxelement.214, %struct.syntaxelement.214* %sym, i32 0, i32 3
  %2 = load i32, i32* %1, align 4
  %3 = sdiv i32 %2, 2
  %4 = shl i32 1, %3
  %5 = getelementptr inbounds %struct.syntaxelement.214, %struct.syntaxelement.214* %sym, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %4, -1
  %8 = and i32 %7, %6
  %9 = or i32 %8, %4
  %10 = getelementptr inbounds %struct.syntaxelement.214, %struct.syntaxelement.214* %sym, i32 0, i32 5
  store i32 %9, i32* %10, align 4
  ret i32 0
}

attributes #0 = { norecurse nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="hexagonv60" "target-features"="-hvx,-hvx-double" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (http://llvm.org/git/clang.git 2d49f0a0ae8366964a93e3b7b26e29679bee7160) (http://llvm.org/git/llvm.git 60bc66b44837125843b58ed3e0fd2e6bb948d839)"}
