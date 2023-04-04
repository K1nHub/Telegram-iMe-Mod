.class public Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;
.super Ljava/lang/Object;
.source "VideoEncoderInput.java"


# instance fields
.field private mEglCore:Lcom/otaliastudios/opengl/core/EglCore;

.field private mEglSurface:Lcom/otaliastudios/opengl/surface/EglWindowSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/otaliastudios/opengl/core/EglCore;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/opengl/core/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;->mEglCore:Lcom/otaliastudios/opengl/core/EglCore;

    .line 36
    new-instance v0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;

    iget-object v1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;->mEglCore:Lcom/otaliastudios/opengl/core/EglCore;

    invoke-direct {v0, v1, p1, v2}, Lcom/otaliastudios/opengl/surface/EglWindowSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;->mEglSurface:Lcom/otaliastudios/opengl/surface/EglWindowSurface;

    .line 37
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->makeCurrent()V

    return-void
.end method


# virtual methods
.method public onFrame(J)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;->mEglSurface:Lcom/otaliastudios/opengl/surface/EglWindowSurface;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->setPresentationTime(J)V

    .line 42
    iget-object p1, p0, Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;->mEglSurface:Lcom/otaliastudios/opengl/surface/EglWindowSurface;

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;->swapBuffers()Z

    return-void
.end method

.method public release()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;->mEglSurface:Lcom/otaliastudios/opengl/surface/EglWindowSurface;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->release()V

    .line 49
    iget-object v0, p0, Lcom/otaliastudios/gif/transcode/internal/VideoEncoderInput;->mEglCore:Lcom/otaliastudios/opengl/core/EglCore;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/core/EglCore;->release()V

    return-void
.end method
