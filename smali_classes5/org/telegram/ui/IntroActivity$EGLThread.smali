.class public Lorg/telegram/ui/IntroActivity$EGLThread;
.super Lorg/telegram/messenger/DispatchQueue;
.source "IntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/IntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EGLThread"
.end annotation


# instance fields
.field private drawRunnable:Ljava/lang/Runnable;

.field private egl10:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private initied:Z

.field private lastDrawFrame:J

.field private maxRefreshRate:F

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private telegramMaskProvider:Lorg/telegram/messenger/GenericProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/GenericProvider<",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private textures:[I

.field final synthetic this$0:Lorg/telegram/ui/IntroActivity;


# direct methods
.method public static synthetic $r8$lambda$OdZncPCBBc1hXrJssQ-Pst90MLk(Lorg/telegram/ui/IntroActivity$EGLThread;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->lambda$shutdown$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$QDeu0WtK547Luy1HPTcEfAHtANs(Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->lambda$initGL$1(Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eKf2_0se0Hd5XceA3YvVrFAtlzA(Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->lambda$new$0(Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/IntroActivity;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->this$0:Lorg/telegram/ui/IntroActivity;

    const-string p1, "EGLThread"

    .line 653
    invoke-direct {p0, p1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x18

    new-array p1, p1, [I

    .line 636
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    .line 641
    sget-object p1, Lorg/telegram/ui/IntroActivity$EGLThread$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/IntroActivity$EGLThread$$ExternalSyntheticLambda2;

    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->telegramMaskProvider:Lorg/telegram/messenger/GenericProvider;

    .line 824
    new-instance p1, Lorg/telegram/ui/IntroActivity$EGLThread$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/IntroActivity$EGLThread$1;-><init>(Lorg/telegram/ui/IntroActivity$EGLThread;)V

    iput-object p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->drawRunnable:Ljava/lang/Runnable;

    .line 654
    iput-object p2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 625
    iget-object p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0

    .line 625
    iget-object p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/IntroActivity$EGLThread;)Z
    .locals 0

    .line 625
    iget-boolean p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->initied:Z

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 625
    iget-object p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/IntroActivity$EGLThread;)J
    .locals 2

    .line 625
    iget-wide v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->lastDrawFrame:J

    return-wide v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/IntroActivity$EGLThread;J)J
    .locals 0

    .line 625
    iput-wide p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->lastDrawFrame:J

    return-wide p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/IntroActivity$EGLThread;)F
    .locals 0

    .line 625
    iget p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->maxRefreshRate:F

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/IntroActivity$EGLThread;F)F
    .locals 0

    .line 625
    iput p1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->maxRefreshRate:F

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/IntroActivity$EGLThread;IIIZ)V
    .locals 0

    .line 625
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(IIIZ)V

    return-void
.end method

.method static synthetic access$2600(Lorg/telegram/ui/IntroActivity$EGLThread;)Lorg/telegram/messenger/GenericProvider;
    .locals 0

    .line 625
    iget-object p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->telegramMaskProvider:Lorg/telegram/messenger/GenericProvider;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/IntroActivity$EGLThread;Lorg/telegram/messenger/GenericProvider;IZ)V
    .locals 0

    .line 625
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(Lorg/telegram/messenger/GenericProvider;IZ)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljava/lang/Runnable;
    .locals 0

    .line 625
    iget-object p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->drawRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/IntroActivity$EGLThread;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0

    .line 625
    iget-object p0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p0
.end method

.method private initGL()Z
    .locals 26

    move-object/from16 v0, p0

    .line 658
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 660
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 661
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 662
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglGetDisplay failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 665
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    :cond_1
    const/4 v2, 0x2

    new-array v4, v2, [I

    .line 670
    iget-object v5, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 671
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglInitialize failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 674
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    :cond_3
    const/4 v1, 0x1

    new-array v10, v1, [I

    new-array v11, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 681
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/EmuDetector;->with(Landroid/content/Context;)Lorg/telegram/messenger/EmuDetector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/EmuDetector;->detect()Z

    move-result v4

    const/16 v12, 0xb

    const/16 v13, 0x13

    if-eqz v4, :cond_4

    new-array v4, v12, [I

    .line 682
    fill-array-data v4, :array_0

    goto :goto_0

    :cond_4
    new-array v4, v13, [I

    .line 691
    fill-array-data v4, :array_1

    :goto_0
    move-object v6, v4

    .line 704
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v8, 0x1

    move-object v7, v11

    move-object v9, v10

    invoke-interface/range {v4 .. v9}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 705
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_5

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 708
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    .line 710
    :cond_6
    aget v4, v10, v3

    if-lez v4, :cond_f

    .line 711
    aget-object v4, v11, v3

    iput-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v5, 0x3

    new-array v6, v5, [I

    .line 720
    fill-array-data v6, :array_2

    .line 721
    iget-object v7, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v7, v8, v4, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v4, :cond_8

    .line 723
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_7

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglCreateContext failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 726
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    .line 730
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    instance-of v6, v4, Landroid/graphics/SurfaceTexture;

    if-eqz v6, :cond_e

    .line 731
    iget-object v6, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v4, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iput-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v4, :cond_c

    .line 737
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v4, v6, :cond_9

    goto/16 :goto_1

    .line 744
    :cond_9
    iget-object v6, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v7, v4, v4, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 745
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_a

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 748
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    .line 752
    :cond_b
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v6, 0x17

    invoke-static {v6, v4, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 753
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_fast_arrow_shadow:I

    invoke-direct {v0, v4, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 754
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_fast_arrow:I

    invoke-direct {v0, v4, v1}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 755
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_fast_body:I

    invoke-direct {v0, v4, v2}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 756
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_fast_spiral:I

    invoke-direct {v0, v4, v5}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 757
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_bubble_dot:I

    const/4 v7, 0x4

    invoke-direct {v0, v4, v7}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 758
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_bubble:I

    const/4 v8, 0x5

    invoke-direct {v0, v4, v8}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 759
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_cam_lens:I

    const/4 v9, 0x6

    invoke-direct {v0, v4, v9}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 760
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_cam:I

    const/4 v10, 0x7

    invoke-direct {v0, v4, v10}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 761
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_pencil:I

    const/16 v11, 0x8

    invoke-direct {v0, v4, v11}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 762
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_pin:I

    const/16 v14, 0x9

    invoke-direct {v0, v4, v14}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 763
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_smile_eye:I

    const/16 v15, 0xa

    invoke-direct {v0, v4, v15}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 764
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_smile:I

    invoke-direct {v0, v4, v12}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 765
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_ic_videocam:I

    const/16 v12, 0xc

    invoke-direct {v0, v4, v12}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 766
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_knot_down:I

    const/16 v12, 0xd

    invoke-direct {v0, v4, v12}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 767
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_knot_up:I

    const/16 v15, 0xe

    invoke-direct {v0, v4, v15}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 768
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_powerful_infinity_white:I

    const/16 v14, 0xf

    invoke-direct {v0, v4, v14}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 769
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_powerful_infinity:I

    const/16 v14, 0x10

    invoke-direct {v0, v4, v14}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 770
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_powerful_mask:I

    const/16 v14, 0x11

    const-string v16, "windowBackgroundWhite"

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v0, v4, v14, v11, v3}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(IIIZ)V

    .line 771
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_powerful_star:I

    const/16 v11, 0x12

    invoke-direct {v0, v4, v11}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 772
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_private_door:I

    invoke-direct {v0, v4, v13}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 773
    sget v4, Lorg/telegram/messenger/R$drawable;->intro_private_screw:I

    const/16 v11, 0x14

    invoke-direct {v0, v4, v11}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 775
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_intro_plane:I

    const/16 v14, 0x15

    invoke-direct {v0, v4, v14}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(II)V

    .line 776
    sget-object v4, Lorg/telegram/ui/IntroActivity$EGLThread$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/IntroActivity$EGLThread$$ExternalSyntheticLambda1;

    const/16 v14, 0x16

    invoke-direct {v0, v4, v14}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(Lorg/telegram/messenger/GenericProvider;I)V

    .line 786
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->telegramMaskProvider:Lorg/telegram/messenger/GenericProvider;

    invoke-direct {v0, v4, v6}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(Lorg/telegram/messenger/GenericProvider;I)V

    .line 788
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->updateTelegramTextures()V

    .line 789
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->updatePowerfulTextures()V

    .line 790
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    aget v6, v4, v13

    aget v4, v4, v11

    invoke-static {v6, v4}, Lorg/telegram/messenger/Intro;->setPrivateTextures(II)V

    .line 791
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    aget v6, v4, v15

    aget v4, v4, v12

    invoke-static {v6, v4}, Lorg/telegram/messenger/Intro;->setFreeTextures(II)V

    .line 792
    iget-object v4, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    aget v2, v4, v2

    aget v5, v4, v5

    aget v6, v4, v1

    aget v3, v4, v3

    invoke-static {v2, v5, v6, v3}, Lorg/telegram/messenger/Intro;->setFastTextures(IIII)V

    .line 793
    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    aget v17, v2, v7

    aget v18, v2, v8

    aget v19, v2, v9

    aget v20, v2, v10

    const/16 v3, 0x8

    aget v21, v2, v3

    const/16 v3, 0x9

    aget v22, v2, v3

    const/16 v3, 0xa

    aget v23, v2, v3

    const/16 v3, 0xb

    aget v24, v2, v3

    const/16 v3, 0xc

    aget v25, v2, v3

    invoke-static/range {v17 .. v25}, Lorg/telegram/messenger/Intro;->setIcTextures(IIIIIIIII)V

    .line 794
    invoke-static {}, Lorg/telegram/messenger/Intro;->onSurfaceCreated()V

    .line 795
    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    sub-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/IntroActivity;->access$702(Lorg/telegram/ui/IntroActivity;J)J

    return v1

    .line 738
    :cond_c
    :goto_1
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_d

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createWindowSurface failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 741
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    .line 733
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    .line 713
    :cond_f
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_10

    const-string v1, "eglConfig not initialized"

    .line 714
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 716
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    return v3

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x18
        0x3038
    .end array-data

    :array_1
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
        0x18
        0x3026
        0x0
        0x3032
        0x1
        0x3031
        0x2
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private static synthetic lambda$initGL$1(Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4

    .line 777
    new-instance p0, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    const v0, -0xd35a20

    .line 778
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 779
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$color;->fork_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x96

    .line 780
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 781
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 782
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 783
    invoke-virtual {v2, v0, v0, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6

    const/16 p0, 0x96

    .line 642
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    const/16 v0, 0xc8

    .line 643
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 644
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string v2, "windowBackgroundWhite"

    .line 645
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 646
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 647
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 648
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    int-to-float p0, p0

    div-float/2addr p0, v4

    invoke-virtual {v1, v3, v5, p0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private synthetic lambda$shutdown$2()V
    .locals 1

    .line 922
    invoke-virtual {p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->finish()V

    .line 923
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private loadTexture(II)V
    .locals 1

    const/4 v0, 0x0

    .line 888
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(IIIZ)V

    return-void
.end method

.method private loadTexture(IIIZ)V
    .locals 5

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->this$0:Lorg/telegram/ui/IntroActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 893
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_0

    .line 895
    iget-object p4, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/4 v0, 0x1

    invoke-static {v0, p4, p2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 896
    iget-object p4, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    invoke-static {v0, p4, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 899
    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 900
    iget-object p4, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    aget p2, p4, p2

    const/16 p4, 0xde1

    invoke-static {p4, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p2, 0x2801

    const/16 v0, 0x2601

    .line 901
    invoke-static {p4, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2800

    .line 902
    invoke-static {p4, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2802

    const v0, 0x812f

    .line 903
    invoke-static {p4, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2803

    .line 904
    invoke-static {p4, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 907
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 908
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 909
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 910
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p3, 0x0

    .line 911
    invoke-virtual {v1, p1, p3, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 912
    invoke-static {p4, p2, v0, p2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 913
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 915
    :cond_1
    invoke-static {p4, p2, p1, p2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private loadTexture(Lorg/telegram/messenger/GenericProvider;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/GenericProvider<",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 869
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/IntroActivity$EGLThread;->loadTexture(Lorg/telegram/messenger/GenericProvider;IZ)V

    return-void
.end method

.method private loadTexture(Lorg/telegram/messenger/GenericProvider;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/GenericProvider<",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;IZ)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 874
    iget-object p3, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/4 v0, 0x1

    invoke-static {v0, p3, p2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 875
    iget-object p3, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    invoke-static {v0, p3, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :cond_0
    const/4 p3, 0x0

    .line 877
    invoke-interface {p1, p3}, Lorg/telegram/messenger/GenericProvider;->provide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 878
    iget-object p3, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    aget p2, p3, p2

    const/16 p3, 0xde1

    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p2, 0x2801

    const/16 v0, 0x2601

    .line 879
    invoke-static {p3, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2800

    .line 880
    invoke-static {p3, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2802

    const v0, 0x812f

    .line 881
    invoke-static {p3, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2803

    .line 882
    invoke-static {p3, p2, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/4 p2, 0x0

    .line 883
    invoke-static {p3, p2, p1, p2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 884
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 809
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 812
    iput-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 814
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 815
    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 816
    iput-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 818
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    .line 819
    iget-object v2, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->egl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 820
    iput-object v1, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method

.method public run()V
    .locals 1

    .line 936
    invoke-direct {p0}, Lorg/telegram/ui/IntroActivity$EGLThread;->initGL()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->initied:Z

    .line 937
    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    return-void
.end method

.method public setSurfaceTextureSize(II)V
    .locals 3

    int-to-float v0, p1

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    int-to-float v2, p2

    div-float/2addr v2, v1

    .line 931
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/messenger/Intro;->onSurfaceChanged(IIFI)V

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 921
    new-instance v0, Lorg/telegram/ui/IntroActivity$EGLThread$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/IntroActivity$EGLThread$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/IntroActivity$EGLThread;)V

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updatePowerfulTextures()V
    .locals 5

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v1, 0x11

    aget v1, v0, v1

    const/16 v2, 0x12

    aget v2, v0, v2

    const/16 v3, 0x10

    aget v3, v0, v3

    const/16 v4, 0xf

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lorg/telegram/messenger/Intro;->setPowerfulTextures(IIII)V

    return-void
.end method

.method public updateTelegramTextures()V
    .locals 4

    .line 801
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity$EGLThread;->textures:[I

    const/16 v1, 0x16

    aget v1, v0, v1

    const/16 v2, 0x15

    aget v2, v0, v2

    const/16 v3, 0x17

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/Intro;->setTelegramTextures(III)V

    return-void
.end method
