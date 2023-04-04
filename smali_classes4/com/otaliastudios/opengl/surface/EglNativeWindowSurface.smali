.class public abstract Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;
.super Lcom/otaliastudios/opengl/surface/EglSurface;
.source "EglWindowSurface.kt"


# direct methods
.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V
    .locals 1

    const-string v0, "eglCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eglSurface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/opengl/surface/EglSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V

    return-void
.end method


# virtual methods
.method public final swapBuffers()Z
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->getEglCore$library_release()Lcom/otaliastudios/opengl/core/EglCore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->getEglSurface$library_release()Lcom/otaliastudios/opengl/internal/EglSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/core/EglNativeCore;->swapSurfaceBuffers$library_release(Lcom/otaliastudios/opengl/internal/EglSurface;)Z

    move-result v0

    return v0
.end method
