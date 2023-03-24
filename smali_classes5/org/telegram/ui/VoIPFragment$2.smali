.class Lorg/telegram/ui/VoIPFragment$2;
.super Landroid/widget/FrameLayout;
.source "VoIPFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field check:Z

.field pressedTime:J

.field pressedX:F

.field pressedY:F

.field final synthetic this$0:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFragment;Landroid/content/Context;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 518
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 519
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v2}, Lorg/telegram/ui/VoIPFragment;->access$500(Lorg/telegram/ui/VoIPFragment;)Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 520
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v6, v2

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v2}, Lorg/telegram/ui/VoIPFragment;->access$500(Lorg/telegram/ui/VoIPFragment;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    int-to-float v7, v2

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    iget-object v8, v2, Lorg/telegram/ui/VoIPFragment;->overlayPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    if-lt v0, v1, :cond_1

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$500(Lorg/telegram/ui/VoIPFragment;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 524
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v1}, Lorg/telegram/ui/VoIPFragment;->access$500(Lorg/telegram/ui/VoIPFragment;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    iget-object v6, v0, Lorg/telegram/ui/VoIPFragment;->overlayBottomPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .line 650
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$2900(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    iget-boolean v1, v0, Lorg/telegram/ui/VoIPFragment;->currentUserIsVideo:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/ui/VoIPFragment;->callingUserIsVideo:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 653
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    .line 654
    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$2900(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    .line 655
    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$3000(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;

    move-result-object v0

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    .line 656
    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$3100(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPFloatingLayout;

    move-result-object v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$3200(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 658
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$800(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    iget-object v0, v0, Lorg/telegram/ui/VoIPFragment;->zoomBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 667
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1

    .line 659
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 660
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    iget v1, v0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$1300(Lorg/telegram/ui/VoIPFragment;)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v2}, Lorg/telegram/ui/VoIPFragment;->access$1500(Lorg/telegram/ui/VoIPFragment;)F

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$1800(Lorg/telegram/ui/VoIPFragment;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v1}, Lorg/telegram/ui/VoIPFragment;->access$1900(Lorg/telegram/ui/VoIPFragment;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 662
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 663
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$600(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$700(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$800(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$900(Lorg/telegram/ui/VoIPFragment;)V

    return v1

    .line 540
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 541
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPFragment;->access$602(Lorg/telegram/ui/VoIPFragment;Z)Z

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPFragment;->access$702(Lorg/telegram/ui/VoIPFragment;Z)Z

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0, v1}, Lorg/telegram/ui/VoIPFragment;->access$802(Lorg/telegram/ui/VoIPFragment;Z)Z

    .line 545
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$1000(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIPTextureView;

    move-result-object v0

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v8, 0x5

    if-ne v2, v8, :cond_2

    goto/16 :goto_2

    .line 573
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v5, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$700(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    move v5, v0

    move v8, v5

    move v2, v1

    .line 576
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 577
    iget-object v9, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v9}, Lorg/telegram/ui/VoIPFragment;->access$1600(Lorg/telegram/ui/VoIPFragment;)I

    move-result v9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-ne v9, v10, :cond_3

    move v5, v2

    .line 580
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v9}, Lorg/telegram/ui/VoIPFragment;->access$1700(Lorg/telegram/ui/VoIPFragment;)I

    move-result v9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-ne v9, v10, :cond_4

    move v8, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eq v5, v0, :cond_8

    if-ne v8, v0, :cond_6

    goto/16 :goto_1

    .line 588
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float/2addr v2, v9

    float-to-double v9, v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float/2addr v2, v11

    float-to-double v11, v2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v2, v9

    iget-object v9, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v9}, Lorg/telegram/ui/VoIPFragment;->access$1100(Lorg/telegram/ui/VoIPFragment;)F

    move-result v9

    div-float/2addr v2, v9

    iput v2, v0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    iget v2, v0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    const v9, 0x3f80a3d7    # 1.005f

    cmpl-float v2, v2, v9

    if-lez v2, :cond_7

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$800(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float/2addr v2, v9

    float-to-double v9, v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float/2addr v2, v11

    float-to-double v11, v2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v2, v9

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1102(Lorg/telegram/ui/VoIPFragment;F)F

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v2, v9

    div-float/2addr v2, v6

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1302(Lorg/telegram/ui/VoIPFragment;F)F

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1202(Lorg/telegram/ui/VoIPFragment;F)F

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v2, v9

    div-float/2addr v2, v6

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1502(Lorg/telegram/ui/VoIPFragment;F)F

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1402(Lorg/telegram/ui/VoIPFragment;F)F

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    iput v3, v0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    const/4 v2, 0x0

    .line 594
    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1802(Lorg/telegram/ui/VoIPFragment;F)F

    .line 595
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1902(Lorg/telegram/ui/VoIPFragment;F)F

    .line 596
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0, v7}, Lorg/telegram/ui/VoIPFragment;->access$802(Lorg/telegram/ui/VoIPFragment;Z)Z

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0, v7}, Lorg/telegram/ui/VoIPFragment;->access$702(Lorg/telegram/ui/VoIPFragment;Z)Z

    .line 601
    :cond_7
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v0, v2

    div-float/2addr v0, v6

    .line 602
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    .line 604
    iget-object v3, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v3}, Lorg/telegram/ui/VoIPFragment;->access$1200(Lorg/telegram/ui/VoIPFragment;)F

    move-result v3

    sub-float/2addr v3, v0

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$1400(Lorg/telegram/ui/VoIPFragment;)F

    move-result v0

    sub-float/2addr v0, v2

    .line 606
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    neg-float v3, v3

    iget v5, v2, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Lorg/telegram/ui/VoIPFragment;->access$1802(Lorg/telegram/ui/VoIPFragment;F)F

    .line 607
    iget-object v2, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    neg-float v0, v0

    iget v3, v2, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Lorg/telegram/ui/VoIPFragment;->access$1902(Lorg/telegram/ui/VoIPFragment;F)F

    .line 608
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_4

    .line 585
    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$900(Lorg/telegram/ui/VoIPFragment;)V

    goto/16 :goto_4

    .line 610
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v7, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0, p1}, Lorg/telegram/ui/VoIPFragment;->access$2000(Lorg/telegram/ui/VoIPFragment;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_f

    .line 611
    :cond_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$900(Lorg/telegram/ui/VoIPFragment;)V

    goto/16 :goto_4

    .line 548
    :cond_c
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_e

    .line 549
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v8

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v9

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v10

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v11

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 550
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFill:F

    mul-float/2addr v8, v9

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    div-float/2addr v8, v6

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Lorg/telegram/ui/Components/voip/VoIPTextureView;->scaleTextureToFill:F

    mul-float/2addr v9, v10

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    div-float/2addr v9, v6

    invoke-virtual {v2, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 551
    sget-boolean v8, Lorg/telegram/ui/GroupCallActivity;->isLandscapeMode:Z

    const/16 v9, 0x5a

    if-nez v8, :cond_d

    .line 552
    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v2, Landroid/graphics/RectF;->top:F

    .line 553
    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v0, v9

    int-to-float v0, v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    .line 555
    :cond_d
    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v2, Landroid/graphics/RectF;->top:F

    .line 556
    iget v8, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v0, v9

    int-to-float v0, v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 558
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$602(Lorg/telegram/ui/VoIPFragment;Z)Z

    .line 559
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$600(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$900(Lorg/telegram/ui/VoIPFragment;)V

    .line 563
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$600(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$700(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v5, :cond_f

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v2, v5

    float-to-double v8, v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v2, v5

    float-to-double v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v2, v8

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1102(Lorg/telegram/ui/VoIPFragment;F)F

    .line 565
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v2, v5

    div-float/2addr v2, v6

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1302(Lorg/telegram/ui/VoIPFragment;F)F

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1202(Lorg/telegram/ui/VoIPFragment;F)F

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v2, v5

    div-float/2addr v2, v6

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1502(Lorg/telegram/ui/VoIPFragment;F)F

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1402(Lorg/telegram/ui/VoIPFragment;F)F

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    iput v3, v0, Lorg/telegram/ui/VoIPFragment;->pinchScale:F

    .line 569
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1602(Lorg/telegram/ui/VoIPFragment;I)I

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->access$1702(Lorg/telegram/ui/VoIPFragment;I)I

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0, v7}, Lorg/telegram/ui/VoIPFragment;->access$702(Lorg/telegram/ui/VoIPFragment;Z)Z

    .line 614
    :cond_f
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->access$2100(Lorg/telegram/ui/VoIPFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_14

    if-eq v0, v7, :cond_11

    if-eq v0, v4, :cond_10

    goto/16 :goto_6

    .line 624
    :cond_10
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment$2;->check:Z

    goto/16 :goto_6

    .line 627
    :cond_11
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPFragment$2;->check:Z

    if-eqz v0, :cond_15

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/VoIPFragment$2;->pressedX:F

    sub-float/2addr v0, v2

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lorg/telegram/ui/VoIPFragment$2;->pressedY:F

    sub-float/2addr p1, v2

    .line 630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    .line 631
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    iget v4, p1, Lorg/telegram/ui/VoIPFragment;->touchSlop:F

    mul-float/2addr v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_13

    iget-wide v4, p0, Lorg/telegram/ui/VoIPFragment$2;->pressedTime:J

    sub-long v4, v2, v4

    const-wide/16 v8, 0x12c

    cmp-long v0, v4, v8

    if-gez v0, :cond_13

    iget-wide v4, p1, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v8

    if-lez v0, :cond_13

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lorg/telegram/ui/VoIPFragment;->lastContentTapTime:J

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$2200(Lorg/telegram/ui/VoIPFragment;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1, v1}, Lorg/telegram/ui/VoIPFragment;->access$2300(Lorg/telegram/ui/VoIPFragment;Z)V

    goto :goto_5

    .line 635
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$2400(Lorg/telegram/ui/VoIPFragment;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 636
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$2500(Lorg/telegram/ui/VoIPFragment;)Z

    move-result v0

    xor-int/2addr v0, v7

    invoke-static {p1, v0}, Lorg/telegram/ui/VoIPFragment;->access$2600(Lorg/telegram/ui/VoIPFragment;Z)V

    .line 637
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$400(Lorg/telegram/ui/VoIPFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/VoIPFragment;->access$2702(Lorg/telegram/ui/VoIPFragment;I)I

    .line 638
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$2800(Lorg/telegram/ui/VoIPFragment;)V

    .line 641
    :cond_13
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/ui/VoIPFragment$2;->check:Z

    goto :goto_6

    .line 618
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/VoIPFragment$2;->pressedX:F

    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/VoIPFragment$2;->pressedY:F

    .line 620
    iput-boolean v7, p0, Lorg/telegram/ui/VoIPFragment$2;->check:Z

    .line 621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/VoIPFragment$2;->pressedTime:J

    .line 645
    :cond_15
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$2;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->access$600(Lorg/telegram/ui/VoIPFragment;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-boolean p1, p0, Lorg/telegram/ui/VoIPFragment$2;->check:Z

    if-eqz p1, :cond_17

    :cond_16
    move v1, v7

    :cond_17
    return v1
.end method
