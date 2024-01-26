.class final Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;
.super Ljava/lang/Object;
.source "FinalMatrixTextureProcessorWrapper.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceViewWrapper"
.end annotation


# instance fields
.field private final eglContext:Landroid/opengl/EGLContext;

.field private final eglDisplay:Landroid/opengl/EGLDisplay;

.field private eglSurface:Landroid/opengl/EGLSurface;

.field private height:I

.field private surface:Landroid/view/Surface;

.field private final useHdr:Z

.field private width:I


# direct methods
.method public constructor <init>(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;ZLandroid/view/SurfaceView;)V
    .locals 0

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 426
    iput-object p2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->eglContext:Landroid/opengl/EGLContext;

    .line 427
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->useHdr:Z

    .line 428
    invoke-virtual {p4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 429
    invoke-virtual {p4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->surface:Landroid/view/Surface;

    .line 430
    invoke-virtual {p4}, Landroid/view/SurfaceView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->width:I

    .line 431
    invoke-virtual {p4}, Landroid/view/SurfaceView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->height:I

    return-void
.end method


# virtual methods
.method public declared-synchronized maybeRenderToSurfaceView(Lcom/google/android/exoplayer2/effect/FrameProcessingTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/util/GlUtil$GlException;,
            Lcom/google/android/exoplayer2/util/FrameProcessingException;
        }
    .end annotation

    monitor-enter p0

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->surface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 443
    monitor-exit p0

    return-void

    .line 446
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->eglSurface:Landroid/opengl/EGLSurface;

    if-nez v1, :cond_2

    .line 447
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 451
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->useHdr:Z

    if-eqz v2, :cond_1

    .line 452
    sget-object v2, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    goto :goto_0

    .line 453
    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    .line 448
    :goto_0
    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/util/GlUtil;->getEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;[I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->eglSurface:Landroid/opengl/EGLSurface;

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->eglSurface:Landroid/opengl/EGLSurface;

    .line 456
    iget-object v1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->eglContext:Landroid/opengl/EGLContext;

    iget v3, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->width:I

    iget v4, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->height:I

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/exoplayer2/util/GlUtil;->focusEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;II)V

    .line 457
    invoke-interface {p1}, Lcom/google/android/exoplayer2/effect/FrameProcessingTask;->run()V

    .line 458
    iget-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 460
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    monitor-enter p0

    .line 469
    :try_start_0
    iput p3, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->width:I

    .line 470
    iput p4, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->height:I

    .line 471
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    .line 472
    iget-object p2, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->surface:Landroid/view/Surface;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 473
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->surface:Landroid/view/Surface;

    const/4 p1, 0x0

    .line 474
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->eglSurface:Landroid/opengl/EGLSurface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    .line 480
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->surface:Landroid/view/Surface;

    .line 481
    iput-object p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->eglSurface:Landroid/opengl/EGLSurface;

    const/4 p1, -0x1

    .line 482
    iput p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->width:I

    .line 483
    iput p1, p0, Lcom/google/android/exoplayer2/effect/FinalMatrixTextureProcessorWrapper$SurfaceViewWrapper;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
