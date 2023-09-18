.class public Lcom/otaliastudios/opengl/surface/EglNativeSurface;
.super Ljava/lang/Object;
.source "EglSurface.kt"


# instance fields
.field private eglCore:Lcom/otaliastudios/opengl/core/EglCore;

.field private eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V
    .locals 1

    const-string v0, "eglCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eglSurface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    .line 13
    iput-object p2, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    return-void
.end method


# virtual methods
.method public final getEglCore$library_release()Lcom/otaliastudios/opengl/core/EglCore;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    return-object v0
.end method

.method public final getEglSurface$library_release()Lcom/otaliastudios/opengl/internal/EglSurface;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    return-object v0
.end method

.method public final makeCurrent()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/core/EglNativeCore;->makeSurfaceCurrent$library_release(Lcom/otaliastudios/opengl/internal/EglSurface;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/core/EglNativeCore;->releaseSurface$library_release(Lcom/otaliastudios/opengl/internal/EglSurface;)V

    .line 69
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_SURFACE()Lcom/otaliastudios/opengl/internal/EglSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    return-void
.end method

.method public final setPresentationTime(J)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->eglSurface:Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-virtual {v0, v1, p1, p2}, Lcom/otaliastudios/opengl/core/EglNativeCore;->setSurfacePresentationTime$library_release(Lcom/otaliastudios/opengl/internal/EglSurface;J)V

    return-void
.end method
