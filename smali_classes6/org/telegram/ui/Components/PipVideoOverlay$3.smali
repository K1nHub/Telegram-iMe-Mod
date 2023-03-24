.class Lorg/telegram/ui/Components/PipVideoOverlay$3;
.super Ljava/lang/Object;
.source "PipVideoOverlay.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipVideoOverlay;->showInternal(ZLandroid/app/Activity;Landroid/view/View;Lorg/telegram/ui/Components/PhotoViewerWebView;IIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PipVideoOverlay;


# direct methods
.method public static synthetic $r8$lambda$eV0vdQkYYDX80CCpvz5nNmleq4k(Lorg/telegram/ui/Components/PipVideoOverlay$3;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay$3;->lambda$onScale$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/PipVideoOverlay;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/PipVideoOverlay$3;)V
    .locals 0

    .line 569
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay$3;->updateLayout()V

    return-void
.end method

.method private synthetic lambda$onScale$0()V
    .locals 1

    .line 576
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2600(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method private updateLayout()V
    .locals 4

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2200(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1000(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$600(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$902(Lorg/telegram/ui/Components/PipVideoOverlay;I)I

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2200(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1200(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$600(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1102(Lorg/telegram/ui/Components/PipVideoOverlay;I)I

    .line 653
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2400(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2200(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$600(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$700(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$800(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v3

    invoke-static {v1, v2, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$602(Lorg/telegram/ui/Components/PipVideoOverlay;F)F

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1000(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$600(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$902(Lorg/telegram/ui/Components/PipVideoOverlay;I)I

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1200(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$600(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1102(Lorg/telegram/ui/Components/PipVideoOverlay;I)I

    .line 575
    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PipVideoOverlay$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay$3;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 580
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v0, v0, v2

    const/high16 v2, 0x41800000    # 16.0f

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$900(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 581
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 582
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1400(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 583
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 584
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_1

    .line 586
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 588
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 590
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1100(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr p1, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1100(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1500(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1500(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1600(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 593
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 594
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_2

    .line 596
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1500(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 598
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1500(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 605
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1700(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 606
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1702(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z

    .line 607
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1802(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z

    .line 608
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1900(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2000(Lorg/telegram/ui/Components/PipVideoOverlay;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 611
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2102(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z

    .line 612
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2200(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1000(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$800(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 613
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2200(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1200(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$800(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2400(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2200(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    .line 621
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1500(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/PipVideoOverlay$3;->updateLayout()V

    return-void

    .line 622
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 623
    new-instance v0, Lorg/telegram/ui/Components/PipVideoOverlay$3$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay$3$1;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay$3;Ljava/util/List;)V

    .line 634
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 635
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 637
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 639
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1500(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1500(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 642
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$3;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1500(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    :goto_2
    return-void
.end method
