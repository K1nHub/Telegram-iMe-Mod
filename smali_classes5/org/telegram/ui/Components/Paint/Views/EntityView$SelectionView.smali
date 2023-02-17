.class public Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
.super Landroid/widget/FrameLayout;
.source "EntityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/EntityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionView"
.end annotation


# instance fields
.field private currentHandle:I

.field protected dotPaint:Landroid/graphics/Paint;

.field protected dotStrokePaint:Landroid/graphics/Paint;

.field protected paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/content/Context;)V
    .locals 7

    .line 547
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 548
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 541
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    .line 542
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    .line 543
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 549
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    new-array v4, v2, [F

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, p1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    aput p1, v4, p2

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-direct {v3, v4, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 556
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    const/high16 v6, 0x70000000

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 558
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    const v3, -0xc33511

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 559
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 560
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 561
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 562
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, v5, p2, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 586
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 587
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getTransformedTouch(FF)[F

    move-result-object v4

    const/4 v5, 0x0

    .line 588
    aget v6, v4, v5

    const/4 v7, 0x1

    .line 589
    aget v4, v4, v7

    const/4 v8, 0x3

    if-eqz v1, :cond_8

    if-eq v1, v7, :cond_6

    const/4 v9, 0x2

    if-eq v1, v9, :cond_0

    if-eq v1, v8, :cond_6

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    const/4 v2, 0x6

    if-eq v1, v2, :cond_6

    goto/16 :goto_3

    .line 609
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v1, v8, :cond_1

    .line 610
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v1, v6, v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/EntityView;FF)Z

    move-result v5

    goto/16 :goto_3

    :cond_1
    if-eqz v1, :cond_9

    .line 613
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1200(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v1

    sub-float v1, v6, v1

    .line 614
    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1300(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v10

    sub-float v10, v4, v10

    .line 616
    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v11}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$100(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_7

    .line 617
    :cond_2
    iget-object v11, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v11, v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$102(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    .line 618
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getRotation()F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    double-to-float v11, v11

    float-to-double v12, v1

    float-to-double v14, v11

    .line 619
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v12, v12, v16

    float-to-double v10, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v10, v10, v14

    add-double/2addr v12, v10

    double-to-float v1, v12

    .line 620
    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v10, v7, :cond_3

    const/high16 v10, -0x40800000    # -1.0f

    mul-float v1, v1, v10

    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v1, v1, v11

    .line 624
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v1, v11

    add-float/2addr v1, v10

    .line 625
    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    .line 627
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v1

    iget-object v10, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-interface {v1, v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getCenterLocation(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[I

    move-result-object v1

    const/4 v10, 0x0

    .line 629
    iget v11, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v11, v7, :cond_4

    .line 630
    aget v9, v1, v7

    int-to-float v9, v9

    sub-float/2addr v9, v3

    float-to-double v9, v9

    aget v1, v1, v5

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    :goto_0
    double-to-float v10, v1

    goto :goto_1

    :cond_4
    if-ne v11, v9, :cond_5

    .line 632
    aget v9, v1, v7

    int-to-float v9, v9

    sub-float/2addr v3, v9

    float-to-double v9, v3

    aget v1, v1, v5

    int-to-float v1, v1

    sub-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    goto :goto_0

    .line 635
    :cond_5
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    float-to-double v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getCropRotation()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    .line 637
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1202(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    .line 638
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1302(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    goto :goto_2

    .line 649
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 650
    iput v5, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    :cond_7
    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    .line 593
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->pointInsideHandle(FF)I

    move-result v1

    if-eqz v1, :cond_9

    .line 595
    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    .line 596
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1202(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    .line 597
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1302(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    .line 598
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$202(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    .line 601
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v1, :cond_7

    .line 602
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    .line 656
    :cond_9
    :goto_3
    iget v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v1, v8, :cond_a

    .line 657
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/view/GestureDetector;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_a
    return v5
.end method

.method protected pointInsideHandle(FF)I
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method protected updatePosition()V
    .locals 3

    .line 566
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getSelectionBounds()Lorg/telegram/ui/Components/Rect;

    move-result-object v0

    .line 567
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 568
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->x:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 569
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->y:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 570
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->width:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 571
    iget v0, v0, Lorg/telegram/ui/Components/Rect;->height:F

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 572
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRotation()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    return-void
.end method
