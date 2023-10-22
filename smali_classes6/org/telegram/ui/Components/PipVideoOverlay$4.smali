.class Lorg/telegram/ui/Components/PipVideoOverlay$4;
.super Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;
.source "PipVideoOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipVideoOverlay;->showInternal(ZLandroid/app/Activity;Landroid/view/View;Lorg/telegram/ui/Components/PhotoViewerWebView;IIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private startPipX:F

.field private startPipY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

.field final synthetic val$touchSlop:I


# direct methods
.method public static synthetic $r8$lambda$VqeF_3Mw2akQY39t5lwpeTjdfbc(Lorg/telegram/ui/Components/PipVideoOverlay$4;FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/PipVideoOverlay$4;->lambda$onScroll$0(FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/PipVideoOverlay;I)V
    .locals 0

    .line 673
    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    iput p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->val$touchSlop:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onScroll$0(FLandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    if-nez p3, :cond_1

    .line 834
    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$900(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    add-float/2addr p1, p3

    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p5, p3

    div-float/2addr p5, p4

    cmpl-float p1, p1, p5

    const/high16 p4, 0x41800000    # 16.0f

    if-ltz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$900(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    :cond_1
    return-void
.end method


# virtual methods
.method public hasDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 776
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3200(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3200(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3300(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3400(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3500(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1700(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3600(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1800(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 780
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3700(Lorg/telegram/ui/Components/PipVideoOverlay;)J

    move-result-wide v1

    .line 781
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3800(Lorg/telegram/ui/Components/PipVideoOverlay;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v5

    if-eqz p1, :cond_2

    const-wide/16 v1, 0x3a98

    cmp-long p1, v3, v1

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 717
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3200(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3200(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3300(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/PhotoViewerWebView;

    move-result-object v0

    if-eqz v0, :cond_a

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3400(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3500(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1700(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3600(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1800(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 721
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3200(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    .line 722
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1000(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$600(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-ltz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v1

    .line 724
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3700(Lorg/telegram/ui/Components/PipVideoOverlay;)J

    move-result-wide v2

    .line 725
    iget-object v4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v4}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3800(Lorg/telegram/ui/Components/PipVideoOverlay;)J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v6

    if-eqz v6, :cond_a

    const-wide/16 v6, 0x3a98

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    goto/16 :goto_5

    :cond_3
    const-wide/16 v6, 0x2710

    if-eqz p1, :cond_4

    add-long v8, v2, v6

    goto :goto_1

    :cond_4
    sub-long v8, v2, v6

    :goto_1
    cmp-long v2, v2, v8

    if-eqz v2, :cond_a

    cmp-long v2, v8, v4

    const-wide/16 v10, 0x0

    if-lez v2, :cond_5

    move v1, v0

    move-wide v8, v4

    goto :goto_3

    :cond_5
    cmp-long v2, v8, v10

    if-gez v2, :cond_7

    const-wide/16 v2, -0x2328

    cmp-long v2, v8, v2

    if-gez v2, :cond_6

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    move-wide v8, v10

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_3
    if-eqz v1, :cond_9

    .line 747
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3900(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setOneShootAnimation(Z)V

    .line 748
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3900(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v1

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoForwardDrawable;->setLeftSide(Z)V

    .line 749
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3900(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/VideoForwardDrawable;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lorg/telegram/ui/Components/VideoForwardDrawable;->addTime(J)V

    .line 750
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v1, v8, v9}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$4000(Lorg/telegram/ui/Components/PipVideoOverlay;J)V

    .line 751
    iget-object v1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const-wide/16 v6, -0x2710

    :goto_4
    long-to-float p1, v8

    long-to-float v2, v4

    div-float/2addr p1, v2

    invoke-static {v1, v6, v7, p1, v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$4100(Lorg/telegram/ui/Components/PipVideoOverlay;JFZ)V

    .line 752
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2700(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 753
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2702(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3100(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V

    .line 754
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2900(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 755
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2902(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z

    .line 756
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3000(Lorg/telegram/ui/Components/PipVideoOverlay;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x9c4

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_9
    return v0

    :cond_a
    :goto_5
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2700(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    .line 679
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2600(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 680
    iget-object v2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2600(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 681
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 683
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2802(Lorg/telegram/ui/Components/PipVideoOverlay;Landroid/view/View;)Landroid/view/View;

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 688
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1400(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->startPipX:F

    .line 689
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1600(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->startPipY:F

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 787
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1700(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2100(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    .line 789
    invoke-static {p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1400(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 790
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 791
    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1400(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$900(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    const/high16 v0, 0x40e00000    # 7.0f

    div-float v0, p3, v0

    add-float/2addr p2, v0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    div-float/2addr v2, v1

    cmpl-float p2, p2, v2

    const/high16 v1, 0x41800000    # 16.0f

    if-ltz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$900(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result p2

    sub-int/2addr v0, p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sub-int/2addr v0, p2

    int-to-float p2, v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 792
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 794
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1500(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    .line 795
    invoke-static {p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1600(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 796
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    .line 797
    invoke-static {p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1600(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result p2

    const/high16 p3, 0x41200000    # 10.0f

    div-float/2addr p4, p3

    add-float/2addr p2, p4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    sget-object p4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1100(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result v0

    sub-int/2addr p4, v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p4, v0

    int-to-float p4, p4

    invoke-static {p2, p3, p4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 798
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1500(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 806
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1700(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$100(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2100(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 807
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->val$touchSlop:I

    int-to-float v0, v0

    cmpl-float p3, p3, v0

    if-gez p3, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget p4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->val$touchSlop:I

    int-to-float p4, p4

    cmpl-float p3, p3, p4

    if-ltz p3, :cond_1

    .line 808
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p3, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1702(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z

    .line 810
    iget-object p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 811
    iget-object p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1500(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 813
    iget-object p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p3, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1802(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z

    .line 814
    iget-object p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1900(Lorg/telegram/ui/Components/PipVideoOverlay;)V

    .line 815
    iget-object p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2000(Lorg/telegram/ui/Components/PipVideoOverlay;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 818
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1700(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 819
    iget-object p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1400(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result p3

    .line 820
    iget p4, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->startPipX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    add-float/2addr p4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p4, v0

    .line 821
    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    iget v3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->startPipY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    add-float/2addr v3, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr v3, p1

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1602(Lorg/telegram/ui/Components/PipVideoOverlay;F)F

    .line 822
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$900(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float/2addr p1, p2

    cmpg-float p1, p4, p1

    if-lez p1, :cond_6

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$900(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    cmpl-float p1, p4, p1

    if-ltz p1, :cond_2

    goto/16 :goto_1

    .line 830
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$4200(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 831
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$4200(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 832
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/PipVideoOverlay$4$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p4}, Lorg/telegram/ui/Components/PipVideoOverlay$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PipVideoOverlay$4;F)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 838
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 839
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 840
    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 841
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 843
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$4202(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z

    goto/16 :goto_3

    .line 845
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 846
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_0

    .line 848
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2200(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p2, p4}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1402(Lorg/telegram/ui/Components/PipVideoOverlay;F)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 849
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$4300(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object p1

    invoke-static {p1, p4}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->access$4400(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;F)V

    .line 851
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2200(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1600(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 852
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$4300(Lorg/telegram/ui/Components/PipVideoOverlay;)Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1600(Lorg/telegram/ui/Components/PipVideoOverlay;)F

    move-result p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;->access$4500(Lorg/telegram/ui/Components/PipVideoOverlay$PipConfig;F)V

    .line 853
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2400(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/ViewGroup;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2200(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 823
    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$4200(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 824
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p1

    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 825
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 826
    iget-object p2, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$900(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p4, p2

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, p2

    div-float/2addr v0, p3

    cmpl-float p3, p4, v0

    const/high16 p4, 0x41800000    # 16.0f

    if-ltz p3, :cond_7

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    goto :goto_2

    :cond_7
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iget-object p3, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p3}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$900(Lorg/telegram/ui/Components/PipVideoOverlay;)I

    move-result p3

    :goto_2
    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 827
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$1300(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 829
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$4202(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z

    :cond_9
    :goto_3
    return v2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 695
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$100(Lorg/telegram/ui/Components/PipVideoOverlay;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 699
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2900(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 700
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3000(Lorg/telegram/ui/Components/PipVideoOverlay;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 701
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2902(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z

    .line 704
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2700(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2702(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z

    .line 705
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2700(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3100(Lorg/telegram/ui/Components/PipVideoOverlay;Z)V

    .line 707
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2700(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2900(Lorg/telegram/ui/Components/PipVideoOverlay;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 708
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$3000(Lorg/telegram/ui/Components/PipVideoOverlay;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x9c4

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 709
    iget-object p1, p0, Lorg/telegram/ui/Components/PipVideoOverlay$4;->this$0:Lorg/telegram/ui/Components/PipVideoOverlay;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PipVideoOverlay;->access$2902(Lorg/telegram/ui/Components/PipVideoOverlay;Z)Z

    :cond_2
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 768
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay$4;->hasDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PipVideoOverlay$4;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 771
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
