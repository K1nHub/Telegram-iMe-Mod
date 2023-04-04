.class public Lcom/otaliastudios/opengl/surface/EglWindowSurface;
.super Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;
.source "EglWindowSurface.kt"


# instance fields
.field private releaseSurface:Z

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;Z)V
    .locals 1

    const-string v0, "eglCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, p2}, Lcom/otaliastudios/opengl/core/EglNativeCore;->createWindowSurface$library_release(Ljava/lang/Object;)Lcom/otaliastudios/opengl/internal/EglSurface;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V

    .line 28
    iput-object p2, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->surface:Landroid/view/Surface;

    .line 29
    iput-boolean p3, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->releaseSurface:Z

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->release()V

    .line 45
    iget-boolean v0, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->releaseSurface:Z

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :goto_0
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->surface:Landroid/view/Surface;

    :cond_1
    return-void
.end method
