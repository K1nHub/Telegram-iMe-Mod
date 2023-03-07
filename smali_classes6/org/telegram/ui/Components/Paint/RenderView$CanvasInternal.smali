.class Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;
.super Lorg/telegram/messenger/DispatchQueue;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanvasInternal"
.end annotation


# instance fields
.field private bufferHeight:I

.field private bufferWidth:I

.field private drawRunnable:Ljava/lang/Runnable;

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private initialized:Z

.field private volatile ready:Z

.field private scheduledRunnable:Ljava/lang/Runnable;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/RenderView;


# direct methods
.method public static synthetic $r8$lambda$JY1Dvv7_w8NrIcb2ncFMz5xGPEY(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->lambda$requestRender$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$TKU9VuLexaGoDHF-wyg42YIPv6w(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->lambda$getTexture$3([Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gr0lcUoKguLIgtAFfIbTFqNdgGE(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->lambda$shutdown$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$onipHif6tFO752p7UyrjZ2509zs(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->lambda$scheduleRedraw$1()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    const-string p1, "CanvasInternal"

    .line 346
    invoke-direct {p0, p1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    .line 486
    new-instance p1, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$1;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->drawRunnable:Ljava/lang/Runnable;

    .line 347
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z
    .locals 0

    .line 328
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->setCurrentContext()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0

    .line 328
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 328
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0

    .line 328
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z
    .locals 0

    .line 328
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Z
    .locals 0

    .line 328
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->ready:Z

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;Z)Z
    .locals 0

    .line 328
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->ready:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I
    .locals 0

    .line 328
    iget p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferWidth:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)I
    .locals 0

    .line 328
    iget p0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferHeight:I

    return p0
.end method

.method private checkBitmap()V
    .locals 7

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Size;->width:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 465
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 466
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 467
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1002(Lorg/telegram/ui/Components/Paint/RenderView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1102(Lorg/telegram/ui/Components/Paint/RenderView;Z)Z

    :cond_1
    return-void
.end method

.method private initGL()Z
    .locals 10

    .line 361
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 363
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 364
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 365
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglGetDisplay failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 368
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v2

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 373
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 374
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglInitialize failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 377
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v2

    :cond_3
    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v9, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v3, 0xf

    new-array v5, v3, [I

    .line 383
    fill-array-data v5, :array_0

    .line 394
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v7, 0x1

    move-object v6, v9

    move-object v8, v1

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 395
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglChooseConfig failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 398
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v2

    .line 400
    :cond_5
    aget v1, v1, v2

    if-lez v1, :cond_e

    .line 401
    aget-object v1, v9, v2

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 410
    fill-array-data v3, :array_1

    .line 411
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v1, v6, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v3, :cond_7

    .line 413
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_6

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglCreateContext failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 416
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v2

    .line 420
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    instance-of v4, v3, Landroid/graphics/SurfaceTexture;

    if-eqz v4, :cond_d

    .line 421
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v3, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_b

    .line 427
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v3, :cond_8

    goto :goto_0

    .line 434
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v1, v1, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 435
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_9

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 438
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v2

    :cond_a
    const/16 v1, 0xbe2

    .line 442
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v1, 0xbd0

    .line 443
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v1, 0xb90

    .line 444
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v1, 0xb71

    .line 445
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 447
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Paint/Painting;->setupShaders()V

    .line 448
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->checkBitmap()V

    .line 449
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    invoke-static {}, Lorg/telegram/ui/Components/Paint/Utils;->HasGLError()V

    return v0

    .line 428
    :cond_b
    :goto_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_c

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWindowSurface failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 431
    :cond_c
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v2

    .line 423
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    return v2

    .line 403
    :cond_e
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_f

    const-string v0, "eglConfig not initialized"

    .line 404
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 406
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

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

.method private synthetic lambda$getTexture$3([Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 5

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Paint/Painting;->getSize()Lorg/telegram/ui/Components/Size;

    move-result-object v3

    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Painting;->getPaintingData(Landroid/graphics/RectF;Z)Lorg/telegram/ui/Components/Paint/Painting$PaintingData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, v0, Lorg/telegram/ui/Components/Paint/Painting$PaintingData;->bitmap:Landroid/graphics/Bitmap;

    aput-object v0, p1, v2

    .line 578
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$requestRender$0()V
    .locals 1

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->drawRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$scheduleRedraw$1()V
    .locals 1

    const/4 v0, 0x0

    .line 533
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->drawRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$shutdown$2()V
    .locals 1

    .line 558
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->finish()V

    .line 559
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private setCurrentContext()Z
    .locals 5

    .line 474
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 478
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v3, 0x3059

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 479
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 544
    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 546
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 547
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 548
    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 550
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 551
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 552
    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method

.method public getTexture()Landroid/graphics/Bitmap;
    .locals 3

    .line 567
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 570
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-array v1, v1, [Landroid/graphics/Bitmap;

    .line 573
    :try_start_0
    new-instance v2, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1, v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;[Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 580
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 582
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 584
    aget-object v0, v1, v0

    return-object v0
.end method

.method public requestRender()V
    .locals 1

    .line 523
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$1000(Lorg/telegram/ui/Components/Paint/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initGL()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->initialized:Z

    .line 357
    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public scheduleRedraw()V
    .locals 3

    .line 527
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    .line 532
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->scheduledRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1

    .line 537
    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setBufferSize(II)V
    .locals 0

    .line 518
    iput p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferWidth:I

    .line 519
    iput p2, p0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->bufferHeight:I

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 557
    new-instance v0, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
