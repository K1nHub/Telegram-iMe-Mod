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
    .locals 6

    .line 614
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    .line 615
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 608
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    .line 609
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    .line 610
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 616
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 619
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    new-array v2, v2, [F

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, p1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    aput p1, v2, p2

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-direct {v3, v2, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 623
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x3f400000    # 0.75f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, 0x50000000

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 625
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    const v0, -0xe56301

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 626
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 628
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    const v0, 0x402a3d71    # 2.66f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 629
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p2

    invoke-virtual {p1, p2, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 654
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v3

    invoke-interface {v3, p1, v1, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getTransformedTouch(Landroid/view/MotionEvent;FF)[F

    move-result-object v1

    const/4 v2, 0x0

    .line 655
    aget v3, v1, v2

    const/4 v4, 0x1

    .line 656
    aget v1, v1, v4

    const/4 v5, 0x3

    if-eqz v0, :cond_9

    if-eq v0, v4, :cond_7

    const/4 v6, 0x2

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_7

    const/4 v6, 0x5

    if-eq v0, v6, :cond_9

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    goto/16 :goto_2

    .line 676
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v0, v5, :cond_1

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v0, v3, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/EntityView;FF)Z

    move-result v0

    goto/16 :goto_4

    :cond_1
    if-eqz v0, :cond_6

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1300(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v0

    sub-float v0, v3, v0

    .line 681
    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v7

    sub-float v7, v1, v7

    .line 683
    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$100(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v0, v0, v8

    if-gtz v0, :cond_2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-lez v0, :cond_8

    .line 684
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$102(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    .line 696
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v0

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-interface {v0, v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getCenterLocation(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[I

    move-result-object v0

    .line 697
    aget v7, v0, v2

    int-to-float v7, v7

    aget v8, v0, v4

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v9}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1300(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v7

    .line 698
    aget v8, v0, v2

    int-to-float v8, v8

    aget v9, v0, v4

    int-to-float v9, v9

    invoke-static {v8, v9, v3, v1}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v10, v7, v9

    if-lez v10, :cond_3

    div-float/2addr v8, v7

    .line 701
    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    .line 705
    :cond_3
    iget v7, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v7, v4, :cond_4

    .line 706
    aget v6, v0, v4

    int-to-float v6, v6

    sub-float/2addr v6, v1

    float-to-double v6, v6

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float/2addr v0, v3

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    :goto_0
    double-to-float v9, v6

    goto :goto_1

    :cond_4
    if-ne v7, v6, :cond_5

    .line 708
    aget v6, v0, v4

    int-to-float v6, v6

    sub-float v6, v1, v6

    float-to-double v6, v6

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float v0, v3, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    goto :goto_0

    .line 711
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$400(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    move-result-object v7

    invoke-interface {v7}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getCropRotation()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    .line 713
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1302(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    .line 714
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1402(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v2

    goto :goto_4

    .line 725
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1600(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    .line 726
    iput v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    :cond_8
    :goto_3
    move v0, v4

    goto :goto_4

    .line 660
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v0, v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->pointInsideHandle(FF)I

    move-result v0

    if-eqz v0, :cond_6

    .line 662
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1302(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1402(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)F

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$202(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)Z

    .line 668
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_8

    .line 669
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_3

    .line 732
    :goto_4
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->currentHandle:I

    if-ne v1, v5, :cond_a

    .line 733
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->access$1700(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 736
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    move v2, v4

    :cond_c
    return v2
.end method

.method protected pointInsideHandle(FF)I
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method protected updatePosition()V
    .locals 3

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getSelectionBounds()Lorg/telegram/ui/Components/Rect;

    move-result-object v0

    .line 634
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 635
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->x:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 636
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->y:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 637
    iget v2, v0, Lorg/telegram/ui/Components/Rect;->width:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 638
    iget v0, v0, Lorg/telegram/ui/Components/Rect;->height:F

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 639
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->this$0:Lorg/telegram/ui/Components/Paint/Views/EntityView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRotation()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    return-void
.end method
