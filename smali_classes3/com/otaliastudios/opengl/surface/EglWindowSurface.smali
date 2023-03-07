.class public Lcom/otaliastudios/opengl/surface/EglWindowSurface;
.super Lcom/otaliastudios/opengl/surface/EglSurface;
.source "EglWindowSurface.kt"


# instance fields
.field private releaseSurface:Z

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;Z)V
    .locals 1

    const-string v0, "eglCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, p2}, Lcom/otaliastudios/opengl/core/EglCore;->createWindowSurface$egloo_release(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/opengl/surface/EglSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/opengl/EGLSurface;)V

    .line 28
    iput-object p2, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->surface:Landroid/view/Surface;

    .line 29
    iput-boolean p3, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->releaseSurface:Z

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/otaliastudios/opengl/surface/EglSurface;->release()V

    .line 55
    iget-boolean v0, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->releaseSurface:Z

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->surface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public final swapBuffers()Z
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/surface/EglSurface;->getEglCore()Lcom/otaliastudios/opengl/core/EglCore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/surface/EglSurface;->getEglSurface()Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/core/EglCore;->swapSurfaceBuffers$egloo_release(Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
