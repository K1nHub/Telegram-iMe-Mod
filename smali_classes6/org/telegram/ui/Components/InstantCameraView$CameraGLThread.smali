.class public Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;
.super Lorg/telegram/messenger/DispatchQueue;
.source "InstantCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraGLThread"
.end annotation


# instance fields
.field private cameraId:Ljava/lang/Integer;

.field private cameraSurface:Landroid/graphics/SurfaceTexture;

.field private currentSession:Lorg/telegram/messenger/camera/CameraSession;

.field private drawProgram:I

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private initied:Z

.field private positionHandle:I

.field private recording:Z

.field private surfaceHeight:I

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private surfaceWidth:I

.field private textureHandle:I

.field private textureMatrixHandle:I

.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;

.field private vertexMatrixHandle:I


# direct methods
.method public static synthetic $r8$lambda$-2OnGnm8SMGyjwUSrvkaAyjg5-c(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$onDraw$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$6aonjDWJ5vsPmZSSLiN_GfEuBZc(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$initGL$0(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ti-WYuNYGG4vO-7tTEE1QAL8bLk(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$handleMessage$3(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c88HN7PnSycRjvQpO6dq5l-zpKw(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$onDraw$2()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1346
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const-string p1, "CameraGLThread"

    .line 1347
    invoke-direct {p0, p1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    .line 1348
    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1350
    iput p3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    .line 1351
    iput p4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceHeight:I

    .line 1353
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    return-void
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;I)I
    .locals 0

    .line 1313
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    return p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;I)I
    .locals 0

    .line 1313
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceHeight:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V
    .locals 0

    .line 1313
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    return-void
.end method

.method private initGL()Z
    .locals 12

    .line 1380
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "InstantCamera start init gl"

    .line 1381
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1383
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 1385
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1386
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1387
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglGetDisplay failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1390
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    :cond_2
    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 1395
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1396
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglInitialize failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1399
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    :cond_4
    const/4 v0, 0x1

    new-array v9, v0, [I

    new-array v10, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v3, 0xf

    new-array v5, v3, [I

    .line 1405
    fill-array-data v5, :array_0

    .line 1416
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v7, 0x1

    move-object v6, v10

    move-object v8, v9

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1417
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglChooseConfig failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1420
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1422
    :cond_6
    aget v3, v9, v2

    if-lez v3, :cond_15

    .line 1423
    aget-object v3, v10, v2

    const/4 v4, 0x3

    new-array v5, v4, [I

    .line 1432
    fill-array-data v5, :array_1

    .line 1433
    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v7, v3, v8, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v5, :cond_8

    .line 1435
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_7

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglCreateContext failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1438
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1442
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    instance-of v6, v5, Landroid/graphics/SurfaceTexture;

    if-eqz v6, :cond_14

    .line 1443
    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v3, v5, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_12

    .line 1449
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v5, :cond_9

    goto/16 :goto_1

    .line 1456
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v5, v6, v3, v3, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1457
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_a

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera eglMakeCurrent failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1460
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1464
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v3, v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    .line 1465
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v7

    div-float/2addr v5, v7

    div-float/2addr v5, v6

    const/16 v6, 0xc

    new-array v6, v6, [F

    .line 1466
    fill-array-data v6, :array_2

    const/16 v7, 0x8

    new-array v7, v7, [F

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float v10, v9, v3

    aput v10, v7, v2

    sub-float v11, v9, v5

    aput v11, v7, v0

    add-float/2addr v3, v9

    aput v3, v7, v1

    aput v11, v7, v4

    const/4 v1, 0x4

    aput v10, v7, v1

    const/4 v1, 0x5

    add-float/2addr v5, v9

    aput v5, v7, v1

    const/4 v1, 0x6

    aput v3, v7, v1

    const/4 v1, 0x7

    aput v5, v7, v1

    .line 1479
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v1

    if-nez v1, :cond_c

    .line 1480
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-direct {v3, v1, v8}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$1;)V

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1502(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .line 1483
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/16 v3, 0x30

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1702(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 1484
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1700(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1486
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1802(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 1487
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1489
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v1

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1491
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v3, 0x8b31

    const-string v4, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v1

    .line 1492
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v4, 0x8b30

    const-string v5, "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v3

    if-eqz v1, :cond_10

    if-eqz v3, :cond_10

    .line 1494
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    .line 1495
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1496
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1497
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v1, v0, [I

    .line 1499
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const v4, 0x8b82

    invoke-static {v3, v4, v1, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1500
    aget v1, v1, v2

    if-nez v1, :cond_e

    .line 1501
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_d

    const-string v1, "InstantCamera failed link shader"

    .line 1502
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1504
    :cond_d
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1505
    iput v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    goto :goto_0

    .line 1507
    :cond_e
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v3, "aPosition"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    .line 1508
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v3, "aTextureCoord"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    .line 1509
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v3, "uMVPMatrix"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->vertexMatrixHandle:I

    .line 1510
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v3, "uSTMatrix"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureMatrixHandle:I

    .line 1520
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1521
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v1

    aget v1, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v4, 0x2601

    .line 1522
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 1523
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v4, 0x812f

    .line 1524
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 1525
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1527
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2200(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v1

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1529
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v3

    aget v2, v3, v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    .line 1530
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1531
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2300(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;)V

    .line 1532
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_f

    const-string v1, "InstantCamera gl initied"

    .line 1533
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_f
    return v0

    .line 1513
    :cond_10
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_11

    const-string v0, "InstantCamera failed creating shader"

    .line 1514
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1516
    :cond_11
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1450
    :cond_12
    :goto_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_13

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera createWindowSurface failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1453
    :cond_13
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1445
    :cond_14
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1425
    :cond_15
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_16

    const-string v0, "InstantCamera eglConfig not initialized"

    .line 1426
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1428
    :cond_16
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

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
        0x0
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

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$handleMessage$3(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1716
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->requestRender()V

    return-void
.end method

.method private synthetic lambda$initGL$0(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1530
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->requestRender()V

    return-void
.end method

.method private synthetic lambda$onDraw$1()V
    .locals 3

    .line 1606
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$onDraw$2()V
    .locals 2

    .line 1651
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3200(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1654
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3300(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1655
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3300(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1656
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3302(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1658
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3200(Lorg/telegram/ui/Components/InstantCameraView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3302(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method

.method private onDraw(Ljava/lang/Integer;)V
    .locals 10

    .line 1584
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->initied:Z

    if-nez v0, :cond_0

    return-void

    .line 1588
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1589
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1590
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 1591
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "eglMakeCurrent failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1596
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 1599
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->recording:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    .line 1600
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1601
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$1;)V

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1502(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .line 1603
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->access$2400(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1604
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1605
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2502(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 1606
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1611
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2600(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v4

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->startRecording(Ljava/io/File;Landroid/opengl/EGLContext;)V

    .line 1612
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->currentSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentOrientation()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_7

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_8

    .line 1614
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v3

    .line 1615
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$1302(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1616
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1402(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1618
    :cond_8
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->recording:Z

    goto :goto_1

    :cond_9
    move v0, v2

    .line 1621
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1622
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v3, v4, p1, v5, v6}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameAvailable(Landroid/graphics/SurfaceTexture;Ljava/lang/Integer;J)V

    .line 1625
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 1627
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const p1, 0x84c0

    .line 1628
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1629
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object p1

    aget p1, p1, v2

    const v3, 0x8d65

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1631
    iget v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0xc

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1700(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1632
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1634
    iget v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    const/4 v5, 0x2

    const/16 v8, 0x8

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1635
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1637
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureMatrixHandle:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v4

    invoke-static {p1, v1, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1638
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->vertexMatrixHandle:I

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2200(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v4

    invoke-static {p1, v1, v2, v4, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x5

    const/4 v1, 0x4

    .line 1640
    invoke-static {p1, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1642
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1643
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1644
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1645
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1647
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p1, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    if-eqz v0, :cond_b

    .line 1650
    new-instance p1, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method private updateScale()V
    .locals 4

    .line 1357
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v0

    .line 1358
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v1

    .line 1360
    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    int-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    .line 1366
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1302(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1367
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1402(Lorg/telegram/ui/Components/InstantCameraView;F)F

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 1369
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1302(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1370
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1402(Lorg/telegram/ui/Components/InstantCameraView;F)F

    goto :goto_0

    .line 1372
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1302(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1373
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1402(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1375
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstantCamera camera scaleX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " scaleY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 1548
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1549
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1550
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    .line 1552
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_3

    .line 1553
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v3, 0x3059

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1554
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1556
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 1557
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1558
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aput v2, v0, v2

    .line 1561
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_4

    .line 1562
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1563
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1564
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1566
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_5

    .line 1567
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1568
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1570
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_6

    .line 1571
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1572
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_6
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1671
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 1738
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "InstantCamera set gl rednderer session"

    .line 1739
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1741
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/messenger/camera/CameraSession;

    .line 1742
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->currentSession:Lorg/telegram/messenger/camera/CameraSession;

    if-ne v0, p1, :cond_2

    .line 1743
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result p1

    .line 1744
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2200(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v0

    invoke-static {v0, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz p1, :cond_b

    .line 1746
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2200(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v1

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/16 :goto_0

    .line 1749
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->currentSession:Lorg/telegram/messenger/camera/CameraSession;

    goto/16 :goto_0

    .line 1688
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v0, v5, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1689
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 1690
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "InstantCamera eglMakeCurrent failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 1695
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_6

    .line 1696
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2700(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 1697
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1698
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1699
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2800(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v4

    aput v0, p1, v4

    .line 1700
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2902(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1701
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object p1

    aput v4, p1, v4

    .line 1702
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3002(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 1703
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3102(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    .line 1705
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    .line 1706
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2502(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 1708
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object p1

    invoke-static {v1, p1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1709
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object p1

    aget p1, p1, v4

    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const/16 v5, 0x2601

    .line 1710
    invoke-static {v0, p1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 1711
    invoke-static {v0, p1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const v5, 0x812f

    .line 1712
    invoke-static {v0, p1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 1713
    invoke-static {v0, p1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1715
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v4

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    .line 1716
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1717
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2300(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;)V

    .line 1720
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1721
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    move-result-object p1

    invoke-direct {p1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    .line 1723
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p1, v5

    .line 1724
    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v6}, Lorg/telegram/ui/Components/InstantCameraView;->access$1400(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v6

    div-float/2addr v0, v6

    div-float/2addr v0, v5

    const/16 v5, 0x8

    new-array v5, v5, [F

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v7, v6, p1

    aput v7, v5, v4

    sub-float v8, v6, v0

    aput v8, v5, v1

    add-float/2addr p1, v6

    aput p1, v5, v3

    aput v8, v5, v2

    const/4 v1, 0x4

    aput v7, v5, v1

    const/4 v1, 0x5

    add-float/2addr v0, v6

    aput v0, v5, v1

    const/4 v1, 0x6

    aput p1, v5, v1

    const/4 p1, 0x7

    aput v0, v5, p1

    .line 1733
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1802(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 1734
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 1678
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    .line 1679
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->recording:Z

    if-eqz v0, :cond_9

    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_9

    .line 1680
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->stopRecording(II)V

    .line 1682
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1684
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 1675
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->onDraw(Ljava/lang/Integer;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public reinitForNewCamera()V
    .locals 2

    .line 1540
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 1542
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    .line 1544
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    return-void
.end method

.method public requestRender()V
    .locals 3

    .line 1764
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1766
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1665
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->initGL()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->initied:Z

    .line 1666
    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    return-void
.end method

.method public setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 2

    .line 1577
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 1579
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method

.method public shutdown(II)V
    .locals 2

    .line 1757
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1759
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method
