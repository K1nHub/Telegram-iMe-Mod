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

.field private videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;


# direct methods
.method public static synthetic $r8$lambda$6aonjDWJ5vsPmZSSLiN_GfEuBZc(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$initGL$0(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nYs2QF94DQ_MVOHMD4fta7_4dMo(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->lambda$handleMessage$1(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const-string p1, "CameraGLThread"

    .line 1199
    invoke-direct {p0, p1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    .line 1200
    iput-object p2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1202
    iput p3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    .line 1203
    iput p4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceHeight:I

    .line 1205
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    return-void
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;I)I
    .locals 0

    .line 1163
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    return p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;I)I
    .locals 0

    .line 1163
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceHeight:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V
    .locals 0

    .line 1163
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    return-void
.end method

.method private initGL()Z
    .locals 12

    .line 1232
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "start init gl"

    .line 1233
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1235
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 1237
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1238
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1239
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglGetDisplay failed "

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

    .line 1242
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    :cond_2
    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 1247
    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1248
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_3

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglInitialize failed "

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

    .line 1251
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    :cond_4
    const/4 v0, 0x1

    new-array v9, v0, [I

    new-array v10, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v3, 0xf

    new-array v5, v3, [I

    .line 1257
    fill-array-data v5, :array_0

    .line 1268
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v7, 0x1

    move-object v6, v10

    move-object v8, v9

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1269
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglChooseConfig failed "

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

    .line 1272
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1274
    :cond_6
    aget v3, v9, v2

    if-lez v3, :cond_14

    .line 1275
    aget-object v3, v10, v2

    const/4 v4, 0x3

    new-array v5, v4, [I

    .line 1284
    fill-array-data v5, :array_1

    .line 1285
    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v7, v3, v8, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v5, :cond_8

    .line 1287
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_7

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglCreateContext failed "

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

    .line 1290
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1294
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    instance-of v6, v5, Landroid/graphics/SurfaceTexture;

    if-eqz v6, :cond_13

    .line 1295
    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v3, v5, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_11

    .line 1301
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v5, :cond_9

    goto/16 :goto_1

    .line 1308
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v5, v6, v3, v3, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1309
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_a

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent failed "

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

    .line 1312
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1315
    :cond_b
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v3}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    .line 1317
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v3, v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    .line 1318
    iget-object v7, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v7}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v7

    div-float/2addr v5, v7

    div-float/2addr v5, v6

    const/16 v6, 0xc

    new-array v6, v6, [F

    .line 1319
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

    .line 1332
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {v1, v3, v8}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$1;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .line 1334
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

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1502(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 1335
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1337
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

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1602(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 1338
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1600(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1340
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1700(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v1

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1342
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v3, 0x8b31

    const-string/jumbo v4, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v1

    .line 1343
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v4, 0x8b30

    const-string v5, "#extension GL_OES_EGL_image_external : require\nprecision lowp float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$1800(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v3

    if-eqz v1, :cond_f

    if-eqz v3, :cond_f

    .line 1345
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    .line 1346
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1347
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1348
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v1, v0, [I

    .line 1350
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const v4, 0x8b82

    invoke-static {v3, v4, v1, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1351
    aget v1, v1, v2

    if-nez v1, :cond_d

    .line 1352
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_c

    const-string v1, "failed link shader"

    .line 1353
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1355
    :cond_c
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1356
    iput v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    goto :goto_0

    .line 1358
    :cond_d
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v3, "aPosition"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    .line 1359
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string v3, "aTextureCoord"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    .line 1360
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string/jumbo v3, "uMVPMatrix"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->vertexMatrixHandle:I

    .line 1361
    iget v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    const-string/jumbo v3, "uSTMatrix"

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureMatrixHandle:I

    .line 1371
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1372
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v1

    aget v1, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v4, 0x2601

    .line 1373
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 1374
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    const v4, 0x812f

    .line 1375
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 1376
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1378
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v1

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1380
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v3

    aget v2, v3, v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    .line 1381
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1382
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;)V

    .line 1383
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_e

    const-string v1, "gl initied"

    .line 1384
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_e
    return v0

    .line 1364
    :cond_f
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_10

    const-string v0, "failed creating shader"

    .line 1365
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1367
    :cond_10
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1302
    :cond_11
    :goto_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_12

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWindowSurface failed "

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

    .line 1305
    :cond_12
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1297
    :cond_13
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    return v2

    .line 1277
    :cond_14
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_15

    const-string v0, "eglConfig not initialized"

    .line 1278
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1280
    :cond_15
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

.method private synthetic lambda$handleMessage$1(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1527
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->requestRender()V

    return-void
.end method

.method private synthetic lambda$initGL$0(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1381
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->requestRender()V

    return-void
.end method

.method private onDraw(Ljava/lang/Integer;)V
    .locals 9

    .line 1422
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->initied:Z

    if-nez v0, :cond_0

    return-void

    .line 1426
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

    .line 1427
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1428
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 1429
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

    .line 1434
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 1436
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->recording:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 1437
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$2200(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->startRecording(Ljava/io/File;Landroid/opengl/EGLContext;)V

    .line 1438
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->recording:Z

    .line 1439
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->currentSession:Lorg/telegram/messenger/camera/CameraSession;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getCurrentOrientation()I

    move-result v0

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_4

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_5

    .line 1441
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    .line 1442
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1202(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1443
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1302(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1447
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, p1, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->frameAvailable(Landroid/graphics/SurfaceTexture;Ljava/lang/Integer;J)V

    .line 1449
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1700(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 1451
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->drawProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const p1, 0x84c0

    .line 1452
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1453
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    const v2, 0x8d65

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1455
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0xc

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1500(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1456
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1458
    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    const/4 v4, 0x2

    const/16 v7, 0x8

    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1600(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1459
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1461
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureMatrixHandle:I

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$1700(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v3

    invoke-static {p1, v1, v0, v3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1462
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->vertexMatrixHandle:I

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v3

    invoke-static {p1, v1, v0, v3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p1, 0x5

    const/4 v1, 0x4

    .line 1464
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1466
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->positionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1467
    iget p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->textureHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1468
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1469
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1471
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void
.end method

.method private updateScale()V
    .locals 4

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/Size;->getWidth()I

    move-result v0

    .line 1210
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/Size;->getHeight()I

    move-result v1

    .line 1212
    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    int-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    .line 1218
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1202(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1219
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1302(Lorg/telegram/ui/Components/InstantCameraView;F)F

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    .line 1221
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1202(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1222
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1302(Lorg/telegram/ui/Components/InstantCameraView;F)F

    goto :goto_0

    .line 1224
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->surfaceWidth:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1202(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1225
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView;->access$1302(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1227
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera scaleX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " scaleY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)F

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

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1401
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1402
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1404
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 1405
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1406
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1408
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 1409
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1410
    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1482
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 1547
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "set gl rednderer session"

    .line 1548
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1550
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/messenger/camera/CameraSession;

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->currentSession:Lorg/telegram/messenger/camera/CameraSession;

    if-ne v0, p1, :cond_2

    .line 1552
    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSession;->getWorldAngle()I

    move-result p1

    .line 1553
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v0

    invoke-static {v0, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-eqz p1, :cond_a

    .line 1555
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v1

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/16 :goto_0

    .line 1558
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->currentSession:Lorg/telegram/messenger/camera/CameraSession;

    goto/16 :goto_0

    .line 1499
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, v0, v5, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1500
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 1501
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

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 1506
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_6

    .line 1507
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2300(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 1508
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1509
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1510
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v4

    aput v0, p1, v4

    .line 1511
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2502(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1512
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object p1

    aput v4, p1, v4

    .line 1513
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1600(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->duplicate()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2602(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 1514
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1100(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/messenger/camera/Size;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2702(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/messenger/camera/Size;)Lorg/telegram/messenger/camera/Size;

    .line 1516
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraId:Ljava/lang/Integer;

    .line 1517
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2802(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 1519
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object p1

    invoke-static {v1, p1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1520
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object p1

    aget p1, p1, v4

    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const/16 v5, 0x2600

    .line 1521
    invoke-static {v0, p1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 1522
    invoke-static {v0, p1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const v5, 0x812f

    .line 1523
    invoke-static {v0, p1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 1524
    invoke-static {v0, p1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1526
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1900(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    aget v0, v0, v4

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    .line 1527
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;)V

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1528
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->cameraSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;Landroid/graphics/SurfaceTexture;)V

    .line 1530
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;

    move-result-object p1

    invoke-direct {p1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    .line 1532
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1200(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p1, v5

    .line 1533
    iget-object v6, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v6}, Lorg/telegram/ui/Components/InstantCameraView;->access$1300(Lorg/telegram/ui/Components/InstantCameraView;)F

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

    .line 1542
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

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$1602(Lorg/telegram/ui/Components/InstantCameraView;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 1543
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$1600(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 1489
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->finish()V

    .line 1490
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->recording:Z

    if-eqz v0, :cond_8

    .line 1491
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->videoEncoder:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->stopRecording(I)V

    .line 1493
    :cond_8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1495
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 1486
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->onDraw(Ljava/lang/Integer;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public reinitForNewCamera()V
    .locals 2

    .line 1391
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 1393
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    .line 1395
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->updateScale()V

    return-void
.end method

.method public requestRender()V
    .locals 3

    .line 1573
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1575
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

    .line 1476
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->initGL()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$CameraGLThread;->initied:Z

    .line 1477
    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    return-void
.end method

.method public setCurrentSession(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 2

    .line 1415
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 1417
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method

.method public shutdown(I)V
    .locals 3

    .line 1566
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1568
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/telegram/messenger/DispatchQueue;->sendMessage(Landroid/os/Message;I)V

    :cond_0
    return-void
.end method
