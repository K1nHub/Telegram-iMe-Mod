.class public Lorg/telegram/ui/Components/FilterGLThread;
.super Lorg/telegram/messenger/DispatchQueue;
.source "FilterGLThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;
    }
.end annotation


# instance fields
.field private blurred:Z

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private drawRunnable:Ljava/lang/Runnable;

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private filterShaders:Lorg/telegram/ui/Components/FilterShaders;

.field private initied:Z

.field private lastRenderCallTime:J

.field private orientation:I

.field private renderBufferHeight:I

.field private renderBufferWidth:I

.field private renderDataSet:Z

.field private simpleInputTexCoordHandle:I

.field private simplePositionHandle:I

.field private simpleShaderProgram:I

.field private simpleSourceImageHandle:I

.field private volatile surfaceHeight:I

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private volatile surfaceWidth:I

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private updateSurface:Z

.field private videoDelegate:Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;

.field private videoFrameAvailable:Z

.field private videoHeight:I

.field private videoSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private videoTexture:[I

.field private videoTextureMatrix:[F

.field private videoWidth:I


# direct methods
.method public static synthetic $r8$lambda$By6v6Mcz3sQ2JNtzvJhhHyWN4fQ(Lorg/telegram/ui/Components/FilterGLThread;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FilterGLThread;->lambda$initGL$1(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J4osYD9BNfokqT1uFL-7DJCx2Cg(Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterGLThread;->lambda$initGL$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$OcnNlrC1T-oYh_6MRx2MOcgimHw(Lorg/telegram/ui/Components/FilterGLThread;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/FilterGLThread;->lambda$requestRender$7(ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$TaFuzPrcp98k0zdYH-rXw1_Ldxs(Lorg/telegram/ui/Components/FilterGLThread;Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FilterGLThread;->lambda$setFilterGLThreadDelegate$0(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YRhfUdHOGO--RabpV6q8-ellU74(Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterGLThread;->lambda$shutdown$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$lkNu33NBCqtXmgsGzb-uJ8hHnIw(Lorg/telegram/ui/Components/FilterGLThread;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FilterGLThread;->lambda$setVideoSize$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$lkenepau3bF5QAqD7wgE1XZzQlk(Lorg/telegram/ui/Components/FilterGLThread;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FilterGLThread;->lambda$setSurfaceTextureSize$6(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$qeR6hdqb-ByADPuAyRCWdnJC95g(Lorg/telegram/ui/Components/FilterGLThread;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FilterGLThread;->lambda$getTexture$4([Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/graphics/Bitmap;IZ)V
    .locals 2

    const-string v0, "PhotoFilterGLThread"

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;Z)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 46
    iput-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoTextureMatrix:[F

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 47
    iput-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoTexture:[I

    .line 313
    new-instance v0, Lorg/telegram/ui/Components/FilterGLThread$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FilterGLThread$1;-><init>(Lorg/telegram/ui/Components/FilterGLThread;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->drawRunnable:Ljava/lang/Runnable;

    .line 77
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 78
    iput-object p2, p0, Lorg/telegram/ui/Components/FilterGLThread;->currentBitmap:Landroid/graphics/Bitmap;

    .line 79
    iput p3, p0, Lorg/telegram/ui/Components/FilterGLThread;->orientation:I

    .line 80
    new-instance p1, Lorg/telegram/ui/Components/FilterShaders;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/FilterShaders;-><init>(Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 82
    fill-array-data p1, :array_0

    if-eqz p4, :cond_0

    const/4 p2, 0x2

    .line 89
    aget p3, p1, p2

    .line 90
    aget p4, p1, v1

    aput p4, p1, p2

    aput p3, p1, v1

    const/4 p2, 0x6

    .line 93
    aget p3, p1, p2

    const/4 p4, 0x4

    .line 94
    aget v0, p1, p4

    aput v0, p1, p2

    aput p3, p1, p4

    :cond_0
    const/16 p2, 0x20

    .line 98
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 99
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/FilterGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 101
    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 102
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;)V
    .locals 2

    const-string v0, "VideoFilterGLThread"

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;Z)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 46
    iput-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoTextureMatrix:[F

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 47
    iput-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoTexture:[I

    .line 313
    new-instance v1, Lorg/telegram/ui/Components/FilterGLThread$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FilterGLThread$1;-><init>(Lorg/telegram/ui/Components/FilterGLThread;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->drawRunnable:Ljava/lang/Runnable;

    .line 109
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 110
    iput-object p2, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoDelegate:Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;

    .line 111
    new-instance p1, Lorg/telegram/ui/Components/FilterShaders;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/FilterShaders;-><init>(Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    .line 112
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/FilterGLThread;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->initied:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/FilterGLThread;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoFrameAvailable:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/FilterGLThread;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoFrameAvailable:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/FilterGLThread;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderDataSet:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoDelegate:Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/FilterGLThread;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderBufferWidth:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/FilterGLThread;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderBufferHeight:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/FilterGLThread;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->blurred:Z

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/FilterGLThread;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->blurred:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/FilterGLThread;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->surfaceWidth:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/FilterGLThread;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->surfaceHeight:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/FilterGLThread;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleShaderProgram:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/FilterGLThread;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleSourceImageHandle:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/FilterGLThread;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleInputTexCoordHandle:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/FilterGLThread;)Ljava/nio/FloatBuffer;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->textureBuffer:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/FilterGLThread;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->simplePositionHandle:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/FilterGLThread;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->updateSurface:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/FilterGLThread;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->updateSurface:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/FilterGLThread;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/FilterGLThread;)[F
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoTextureMatrix:[F

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterGLThread;->setRenderData()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    return-object p0
.end method

.method private getRenderBufferBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .line 371
    iget v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderBufferWidth:I

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderBufferHeight:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 374
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 375
    iget v3, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderBufferWidth:I

    iget v4, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderBufferHeight:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 376
    iget v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderBufferWidth:I

    iget v2, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderBufferHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 377
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initGL()Z
    .locals 10

    .line 120
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 122
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 123
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 124
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglGetDisplay failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterGLThread;->finish()V

    return v2

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 132
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglInitialize failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 136
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterGLThread;->finish()V

    return v2

    :cond_3
    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v9, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v3, 0xf

    new-array v5, v3, [I

    .line 142
    fill-array-data v5, :array_0

    .line 153
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v7, 0x1

    move-object v6, v9

    move-object v8, v1

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 154
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglChooseConfig failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 157
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterGLThread;->finish()V

    return v2

    .line 159
    :cond_5
    aget v1, v1, v2

    if-lez v1, :cond_14

    .line 160
    aget-object v1, v9, v2

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 169
    fill-array-data v3, :array_1

    .line 170
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v1, v6, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v3, :cond_7

    .line 172
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_6

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglCreateContext failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 175
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterGLThread;->finish()V

    return v2

    .line 179
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    instance-of v4, v3, Landroid/graphics/SurfaceTexture;

    if-eqz v4, :cond_13

    .line 180
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v3, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_11

    .line 186
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v3, :cond_8

    goto/16 :goto_2

    .line 193
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v1, v1, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 194
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_9

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 197
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterGLThread;->finish()V

    return v2

    :cond_a
    const v1, 0x8b31

    const-string v3, "attribute vec4 position;attribute vec2 inputTexCoord;varying vec2 texCoord;void main() {gl_Position = position;texCoord = inputTexCoord;}"

    .line 201
    invoke-static {v1, v3}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v1

    const v3, 0x8b30

    const-string v4, "varying highp vec2 texCoord;uniform sampler2D sourceImage;void main() {gl_FragColor = texture2D(sourceImage, texCoord);}"

    .line 202
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/FilterShaders;->loadShader(ILjava/lang/String;)I

    move-result v3

    if-eqz v1, :cond_10

    if-eqz v3, :cond_10

    .line 204
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleShaderProgram:I

    .line 205
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 206
    iget v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleShaderProgram:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 207
    iget v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleShaderProgram:I

    const-string v3, "position"

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 208
    iget v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleShaderProgram:I

    const-string v4, "inputTexCoord"

    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 210
    iget v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v1, v0, [I

    .line 212
    iget v5, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleShaderProgram:I

    const v6, 0x8b82

    invoke-static {v5, v6, v1, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 213
    aget v1, v1, v2

    if-nez v1, :cond_b

    .line 214
    iget v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 215
    iput v2, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleShaderProgram:I

    goto :goto_0

    .line 217
    :cond_b
    iget v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleShaderProgram:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->simplePositionHandle:I

    .line 218
    iget v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleShaderProgram:I

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleInputTexCoordHandle:I

    .line 219
    iget v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleShaderProgram:I

    const-string v3, "sourceImage"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->simpleSourceImageHandle:I

    .line 227
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c

    .line 228
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 229
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_1

    .line 231
    :cond_c
    iget v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoWidth:I

    .line 232
    iget v3, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoHeight:I

    :goto_1
    move v8, v1

    move v9, v3

    .line 235
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoDelegate:Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;

    if-eqz v1, :cond_d

    .line 236
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoTexture:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 238
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoTextureMatrix:[F

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 239
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoTexture:[I

    aget v3, v3, v2

    invoke-direct {v1, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 240
    new-instance v3, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FilterGLThread;)V

    invoke-virtual {v1, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 242
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoTexture:[I

    aget v1, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2800

    const v4, 0x46180400    # 9729.0f

    .line 243
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    .line 244
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v4, 0x812f

    .line 245
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 246
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 248
    new-instance v1, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/FilterGLThread;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 251
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterShaders;->create()Z

    move-result v1

    if-nez v1, :cond_e

    .line 252
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterGLThread;->finish()V

    return v2

    :cond_e
    if-eqz v8, :cond_f

    if-eqz v9, :cond_f

    .line 257
    iget-object v4, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    iget-object v5, p0, Lorg/telegram/ui/Components/FilterGLThread;->currentBitmap:Landroid/graphics/Bitmap;

    iget v6, p0, Lorg/telegram/ui/Components/FilterGLThread;->orientation:I

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoTexture:[I

    aget v7, v1, v2

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Components/FilterShaders;->setRenderData(Landroid/graphics/Bitmap;IIII)V

    .line 258
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderDataSet:Z

    .line 259
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterShaders;->getRenderBufferWidth()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderBufferWidth:I

    .line 260
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterShaders;->getRenderBufferHeight()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderBufferHeight:I

    :cond_f
    return v0

    :cond_10
    return v2

    .line 187
    :cond_11
    :goto_2
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_12

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWindowSurface failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 190
    :cond_12
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterGLThread;->finish()V

    return v2

    .line 182
    :cond_13
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterGLThread;->finish()V

    return v2

    .line 162
    :cond_14
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_15

    const-string v0, "eglConfig not initialized"

    .line 163
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 165
    :cond_15
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterGLThread;->finish()V

    return v2

    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private synthetic lambda$getTexture$4([Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 5

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->getRenderFrameBuffer()I

    move-result v0

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/FilterGLThread;->blurred:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FilterShaders;->getRenderTexture(I)I

    move-result v0

    const v2, 0x8ce0

    const/16 v3, 0xde1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 391
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 392
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterGLThread;->getRenderBufferBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, p1, v4

    .line 393
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 394
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 395
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method private synthetic lambda$initGL$1(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(ZZZ)V

    return-void
.end method

.method private synthetic lambda$initGL$2()V
    .locals 2

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoDelegate:Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;->onVideoSurfaceCreated(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private synthetic lambda$requestRender$7(ZZZ)V
    .locals 4

    if-eqz p1, :cond_0

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterShaders;->requestUpdateBlurTexture()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 438
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->updateSurface:Z

    .line 440
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    if-nez p3, :cond_2

    .line 441
    iget-wide v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->lastRenderCallTime:J

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long p3, v0, v2

    if-lez p3, :cond_3

    .line 442
    :cond_2
    iput-wide p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->lastRenderCallTime:J

    .line 443
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->drawRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$setFilterGLThreadDelegate$0(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/FilterShaders;->setDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    return-void
.end method

.method private synthetic lambda$setSurfaceTextureSize$6(II)V
    .locals 0

    .line 417
    iput p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->surfaceWidth:I

    .line 418
    iput p2, p0, Lorg/telegram/ui/Components/FilterGLThread;->surfaceHeight:I

    return-void
.end method

.method private synthetic lambda$setVideoSize$3(II)V
    .locals 1

    .line 268
    iget v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoHeight:I

    if-ne v0, p2, :cond_0

    return-void

    .line 271
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoWidth:I

    .line 272
    iput p2, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoHeight:I

    const/16 v0, 0x500

    if-gt p1, v0, :cond_1

    if-le p2, v0, :cond_2

    .line 274
    :cond_1
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoWidth:I

    .line 275
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoHeight:I

    :cond_2
    const/4 p1, 0x0

    .line 277
    iput-boolean p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderDataSet:Z

    .line 278
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterGLThread;->setRenderData()V

    .line 279
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterGLThread;->drawRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$shutdown$5()V
    .locals 1

    .line 407
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterGLThread;->finish()V

    .line 408
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private setRenderData()V
    .locals 7

    .line 304
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderDataSet:Z

    if-nez v0, :cond_1

    iget v5, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoWidth:I

    if-lez v5, :cond_1

    iget v6, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoHeight:I

    if-gtz v6, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterGLThread;->currentBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lorg/telegram/ui/Components/FilterGLThread;->orientation:I

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->videoTexture:[I

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/FilterShaders;->setRenderData(Landroid/graphics/Bitmap;IIII)V

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderDataSet:Z

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->getRenderBufferWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderBufferWidth:I

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->filterShaders:Lorg/telegram/ui/Components/FilterShaders;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->getRenderBufferHeight()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->renderBufferHeight:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->currentBitmap:Landroid/graphics/Bitmap;

    .line 285
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 287
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 288
    iput-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 290
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    .line 291
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 292
    iput-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 294
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2

    .line 295
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 296
    iput-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 298
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 299
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_3
    return-void
.end method

.method public getTexture()Landroid/graphics/Bitmap;
    .locals 3

    .line 382
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->initied:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 385
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [Landroid/graphics/Bitmap;

    .line 388
    :try_start_0
    new-instance v2, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v1, v0}, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/FilterGLThread;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 400
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 402
    aget-object v0, v1, v0

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestRender(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(ZZZ)V

    return-void
.end method

.method public requestRender(ZZZ)V
    .locals 1

    .line 433
    new-instance v0, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p3, p2}, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/FilterGLThread;ZZZ)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 1

    .line 424
    invoke-direct {p0}, Lorg/telegram/ui/Components/FilterGLThread;->initGL()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/FilterGLThread;->initied:Z

    .line 425
    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    return-void
.end method

.method public setFilterGLThreadDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V
    .locals 1

    .line 116
    new-instance v0, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/FilterGLThread;Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSurfaceTextureSize(II)V
    .locals 1

    .line 416
    new-instance v0, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/FilterGLThread;II)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    .line 267
    new-instance v0, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/FilterGLThread;II)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 406
    new-instance v0, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/FilterGLThread$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/FilterGLThread;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
