.class Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;
.super Lorg/telegram/messenger/DispatchQueue;
.source "ThanosEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThanosEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawingThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;
    }
.end annotation


# instance fields
.field private volatile alive:Z

.field private deltaTimeHandle:I

.field private densityHandle:I

.field private destroy:Ljava/lang/Runnable;

.field private drawProgram:I

.field private drawnAnimations:Z

.field private egl:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private gridSizeHandle:I

.field private height:I

.field private final invalidate:Ljava/lang/Runnable;

.field private killed:Z

.field private longevityHandle:I

.field private matrixHandle:I

.field private offsetHandle:I

.field private particlesCountHandle:I

.field private final pendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;",
            ">;"
        }
    .end annotation
.end field

.field private rectPosHandle:I

.field private rectSizeHandle:I

.field private resetHandle:I

.field public volatile running:Z

.field private seedHandle:I

.field private sizeHandle:I

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureHandle:I

.field private timeHandle:I

.field private final toAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final toRunStartCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public static synthetic $r8$lambda$OShxbxcICXfj0GyfgdNlE1ObMdU()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->lambda$draw$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ha6h2DePZTNzRTcTcoGfk0Imc5c()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->lambda$run$0()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;II)V
    .locals 2

    const-string v0, "ThanosEffect.DrawingThread"

    const/4 v1, 0x0

    .line 265
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Z

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    .line 564
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawnAnimations:Z

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    .line 267
    iput-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 268
    iput-object p2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->invalidate:Ljava/lang/Runnable;

    .line 269
    iput-object p3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->destroy:Ljava/lang/Runnable;

    .line 270
    iput p4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->width:I

    .line 271
    iput p5, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->height:I

    .line 273
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->particlesCountHandle:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->gridSizeHandle:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->offsetHandle:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->rectSizeHandle:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->seedHandle:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->rectPosHandle:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->densityHandle:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->longevityHandle:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->textureHandle:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    return p0
.end method

.method static synthetic access$1902(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;I)I
    .locals 0

    .line 256
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->matrixHandle:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->resetHandle:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->timeHandle:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;)I
    .locals 0

    .line 256
    iget p0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->deltaTimeHandle:I

    return p0
.end method

.method private addAnimationInternal(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V
    .locals 5

    .line 698
    iget-object v0, p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES31;->glGenTextures(I[II)V

    .line 699
    iget-object v0, p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->texture:[I

    aget v0, v0, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const/16 v4, 0x2601

    .line 700
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 701
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v4, 0x812f

    .line 702
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 703
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 704
    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->access$500(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v3, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 705
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 707
    invoke-static {p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->access$500(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 708
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->access$502(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->running:Z

    return-void
.end method

.method private animationHeightPart(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)F
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 558
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 559
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    iget v2, v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_0
    iget p1, p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->viewHeight:I

    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    return p1
.end method

.method private cancelAnimationInternal(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 687
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 688
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    .line 689
    iget-object v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 690
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->done(Z)V

    .line 691
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkGlErrors()V
    .locals 3

    .line 1210
    :goto_0
    invoke-static {}, Landroid/opengl/GLES31;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thanos gles error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private draw()V
    .locals 5

    .line 566
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x4000

    .line 568
    invoke-static {v0}, Landroid/opengl/GLES31;->glClear(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 570
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    .line 571
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    .line 572
    iget-boolean v4, v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->firstDraw:Z

    if-eqz v4, :cond_1

    .line 573
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->animationHeightPart(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)F

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->calcParticlesGrid(F)V

    .line 574
    iget-object v4, v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 575
    iget-object v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_1
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawnAnimations:Z

    .line 579
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->draw()V

    .line 580
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->isDead()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 581
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->done(Z)V

    .line 582
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 583
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->running:Z

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/2addr v1, v3

    goto :goto_0

    .line 588
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->checkGlErrors()V

    .line 591
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 609
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    iget-object v1, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 611
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawnAnimations:Z

    if-eqz v0, :cond_5

    .line 614
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    :cond_5
    return-void

    :catch_0
    move v1, v0

    .line 593
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 594
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    iget-object v2, v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 596
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toRunStartCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 597
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 598
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->done(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 600
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 601
    sget-object v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda0;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 604
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void
.end method

.method private init()V
    .locals 10

    .line 436
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/4 v1, 0x0

    .line 438
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 439
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v3, :cond_0

    .line 440
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 444
    invoke-interface {v2, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :cond_1
    const/16 v0, 0xb

    new-array v4, v0, [I

    .line 449
    fill-array-data v4, :array_0

    const/4 v0, 0x1

    new-array v8, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v7, v0, [I

    .line 459
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x1

    move-object v5, v8

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 460
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->kill()V

    return-void

    .line 463
    :cond_2
    aget-object v2, v8, v1

    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 465
    fill-array-data v3, :array_1

    .line 469
    iget-object v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v2, v6, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v2, :cond_3

    .line 471
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    .line 475
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v5, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v2, :cond_4

    .line 477
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    .line 481
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v2, v2, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 482
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    :cond_5
    const v2, 0x8b31

    .line 486
    invoke-static {v2}, Landroid/opengl/GLES31;->glCreateShader(I)I

    move-result v2

    const v3, 0x8b30

    .line 487
    invoke-static {v3}, Landroid/opengl/GLES31;->glCreateShader(I)I

    move-result v3

    if-eqz v2, :cond_b

    if-nez v3, :cond_6

    goto/16 :goto_0

    .line 492
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$raw;->thanos_vertex:I

    invoke-static {v6, v5}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n// "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/opengl/GLES31;->glShaderSource(ILjava/lang/String;)V

    .line 493
    invoke-static {v2}, Landroid/opengl/GLES31;->glCompileShader(I)V

    new-array v4, v0, [I

    const v7, 0x8b81

    .line 495
    invoke-static {v2, v7, v4, v1}, Landroid/opengl/GLES31;->glGetShaderiv(II[II)V

    .line 496
    aget v8, v4, v1

    if-eq v8, v0, :cond_7

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThanosEffect, compile vertex shader error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/opengl/GLES31;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 498
    invoke-static {v2}, Landroid/opengl/GLES31;->glDeleteShader(I)V

    .line 499
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    .line 502
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lorg/telegram/messenger/R$raw;->thanos_fragment:I

    invoke-static {v6, v9}, Lorg/telegram/ui/Components/RLottieDrawable;->readRes(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/opengl/GLES31;->glShaderSource(ILjava/lang/String;)V

    .line 503
    invoke-static {v3}, Landroid/opengl/GLES31;->glCompileShader(I)V

    .line 504
    invoke-static {v3, v7, v4, v1}, Landroid/opengl/GLES31;->glGetShaderiv(II[II)V

    .line 505
    aget v5, v4, v1

    if-eq v5, v0, :cond_8

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThanosEffect, compile fragment shader error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/opengl/GLES31;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 507
    invoke-static {v3}, Landroid/opengl/GLES31;->glDeleteShader(I)V

    .line 508
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    .line 511
    :cond_8
    invoke-static {}, Landroid/opengl/GLES31;->glCreateProgram()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    if-nez v5, :cond_9

    .line 513
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    .line 516
    :cond_9
    invoke-static {v5, v2}, Landroid/opengl/GLES31;->glAttachShader(II)V

    .line 517
    iget v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    invoke-static {v2, v3}, Landroid/opengl/GLES31;->glAttachShader(II)V

    const-string v2, "outUV"

    const-string v3, "outPosition"

    const-string v5, "outVelocity"

    const-string v6, "outTime"

    .line 519
    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 520
    iget v3, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const v5, 0x8c8c

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES31;->glTransformFeedbackVaryings(I[Ljava/lang/String;I)V

    .line 521
    iget v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    invoke-static {v2}, Landroid/opengl/GLES31;->glLinkProgram(I)V

    .line 522
    iget v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v4, v1}, Landroid/opengl/GLES31;->glGetProgramiv(II[II)V

    .line 523
    aget v2, v4, v1

    if-eq v2, v0, :cond_a

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThanosEffect, link program error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    invoke-static {v1}, Landroid/opengl/GLES31;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 525
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    .line 529
    :cond_a
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "matrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->matrixHandle:I

    .line 530
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "rectSize"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->rectSizeHandle:I

    .line 531
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "rectPos"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->rectPosHandle:I

    .line 532
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "reset"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->resetHandle:I

    .line 533
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "time"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->timeHandle:I

    .line 534
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "deltaTime"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->deltaTimeHandle:I

    .line 535
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "particlesCount"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->particlesCountHandle:I

    .line 536
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "size"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->sizeHandle:I

    .line 537
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "gridSize"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->gridSizeHandle:I

    .line 538
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "tex"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->textureHandle:I

    .line 539
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "seed"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->seedHandle:I

    .line 540
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "dp"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->densityHandle:I

    .line 541
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "longevity"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->longevityHandle:I

    .line 542
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    const-string v2, "offset"

    invoke-static {v0, v2}, Landroid/opengl/GLES31;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->offsetHandle:I

    .line 544
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->width:I

    iget v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->height:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES31;->glViewport(IIII)V

    const/16 v0, 0xbe2

    .line 545
    invoke-static {v0}, Landroid/opengl/GLES31;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    .line 546
    invoke-static {v0, v1}, Landroid/opengl/GLES31;->glBlendFunc(II)V

    const/4 v0, 0x0

    .line 547
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES31;->glClearColor(FFFF)V

    .line 549
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES31;->glUseProgram(I)V

    .line 551
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->sizeHandle:I

    iget v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->width:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->height:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES31;->glUniform2f(IFF)V

    return-void

    .line 489
    :cond_b
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

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
        0x3040
        0x40
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data
.end method

.method private killInternal()V
    .locals 3

    .line 389
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Z

    .line 391
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 392
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    const/4 v2, 0x1

    .line 393
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->done(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 399
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 401
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 403
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->destroy:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 404
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 405
    iput-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->destroy:Ljava/lang/Runnable;

    :cond_4
    return-void
.end method

.method private static synthetic lambda$draw$1()V
    .locals 3

    .line 602
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect;->access$2002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "nothanos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$run$0()V
    .locals 3

    .line 333
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThanosEffect;->access$2002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "nothanos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private resizeInternal(II)V
    .locals 1

    .line 369
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Z

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->width:I

    .line 371
    iput p2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->height:I

    const/4 v0, 0x0

    .line 372
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES31;->glViewport(IIII)V

    .line 373
    iget v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->sizeHandle:I

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {v0, p1, p2}, Landroid/opengl/GLES31;->glUniform2f(IFF)V

    return-void
.end method


# virtual methods
.method public animate(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7

    .line 675
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Z

    if-nez v0, :cond_0

    return-void

    .line 676
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;-><init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 677
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    .line 678
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->running:Z

    if-nez p1, :cond_1

    .line 680
    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    .line 682
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public animate(Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 1

    .line 635
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Z

    if-nez v0, :cond_0

    return-void

    .line 636
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;-><init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Landroid/view/View;FLjava/lang/Runnable;)V

    .line 637
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    .line 638
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->running:Z

    if-nez p1, :cond_1

    .line 640
    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    .line 642
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public animateGroup(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 624
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Z

    if-nez v0, :cond_0

    return-void

    .line 625
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;-><init>(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 626
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    .line 627
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->running:Z

    if-nez p1, :cond_1

    .line 629
    iget-object p1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    .line 631
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public cancel(Landroid/view/View;)V
    .locals 4

    .line 647
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Z

    if-nez v0, :cond_0

    return-void

    .line 648
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 650
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    .line 652
    iget-object v2, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 653
    iget-object v0, v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 654
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 656
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 662
    iget-object v2, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    .line 663
    iget-object v3, v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 664
    iget-object v1, v2, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->doneCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    .line 665
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v1, 0x5

    .line 670
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 285
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    .line 304
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->cancelAnimationInternal(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 308
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->pendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    .line 310
    iget v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetLeft:F

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetLeft:F

    .line 311
    iget v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetTop:F

    iget v3, p1, Landroid/os/Message;->arg2:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->offsetTop:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 300
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->addAnimationInternal(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    return-void

    .line 296
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void

    .line 291
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->resizeInternal(II)V

    .line 292
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->draw()V

    return-void

    .line 287
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->draw()V

    return-void
.end method

.method public kill()V
    .locals 2

    .line 378
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killed:Z

    if-eqz v0, :cond_0

    return-void

    .line 380
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 382
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public requestDraw()V
    .locals 2

    .line 348
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 350
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public resize(II)V
    .locals 2

    .line 355
    invoke-virtual {p0}, Lorg/telegram/messenger/DispatchQueue;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->alive:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 357
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 321
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 339
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 340
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->addAnimationInternal(Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    :cond_1
    invoke-super {p0}, Lorg/telegram/messenger/DispatchQueue;->run()V

    return-void

    :catch_0
    move-exception v1

    .line 323
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 324
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 325
    iget-object v1, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;

    .line 326
    iget-object v2, v1, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->startCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 327
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v2, 0x1

    .line 329
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$Animation;->done(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->toAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 332
    sget-object v0, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/Components/ThanosEffect$DrawingThread$$ExternalSyntheticLambda1;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 335
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThanosEffect$DrawingThread;->killInternal()V

    return-void
.end method
