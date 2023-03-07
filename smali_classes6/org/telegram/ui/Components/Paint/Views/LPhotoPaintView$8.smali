.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;
.super Landroid/widget/FrameLayout;
.source "LPhotoPaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;-><init>(Landroid/content/Context;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastRainbowX:F

.field private lastRainbowY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;)V
    .locals 1

    .line 576
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 578
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    const/4 p2, 0x0

    .line 581
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 582
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object p2

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 583
    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private checkRainbow(FF)V
    .locals 4

    .line 587
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->lastRainbowX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->lastRainbowY:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 588
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->lastRainbowX:F

    .line 589
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->lastRainbowY:F

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 591
    fill-array-data v0, :array_0

    .line 601
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/SweepGradient;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v0, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        -0x14b4b5
        -0x117d12
        -0x9f7f1c
        -0xff0001
        -0x703200
        -0x100
        -0x5b00
        -0x14b4b5
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 615
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 617
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 618
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 619
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    .line 620
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    .line 621
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getRight()I

    move-result v6

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v8

    invoke-static {v5, v6, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    int-to-float v5, v5

    .line 622
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v6

    iget-object v8, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v8}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v9}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v9

    invoke-static {v6, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    int-to-float v6, v6

    .line 618
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v3, 0x20

    .line 624
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    .line 625
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1600(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v7, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 627
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_7

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v3

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_7

    .line 628
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 629
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    .line 631
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 632
    instance-of v5, v1, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-eqz v5, :cond_0

    .line 633
    move-object v4, v1

    check-cast v4, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getColorClickableView()Landroid/view/View;

    move-result-object v4

    :cond_0
    move-object v9, v4

    .line 636
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    .line 637
    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getScaleY()F

    move-result v5

    invoke-virtual {v9}, Landroid/view/View;->getPivotX()F

    move-result v6

    invoke-virtual {v9}, Landroid/view/View;->getPivotY()F

    move-result v10

    invoke-virtual {v7, v4, v5, v6, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 639
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v5}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v5

    sub-float v5, v8, v5

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v6

    mul-float v5, v5, v6

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float v5, v5, v10

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 641
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 642
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 643
    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v6, v11

    int-to-float v11, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v6, v11

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v11, v13

    int-to-float v13, v5

    div-float/2addr v13, v12

    add-float/2addr v11, v13

    .line 644
    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v13}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 645
    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v13}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1700(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)I

    move-result v14

    invoke-static {v13, v14}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1800(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    if-nez v13, :cond_1

    move-object v14, v1

    goto :goto_0

    :cond_1
    move-object v14, v13

    .line 646
    :goto_0
    invoke-virtual {v14, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 647
    instance-of v15, v13, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    if-eqz v15, :cond_2

    .line 648
    check-cast v13, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/Paint/Views/PaintTextOptionsView;->getColorClickableView()Landroid/view/View;

    move-result-object v14

    .line 650
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getX()F

    move-result v13

    invoke-virtual {v14}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v13, v15

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    div-float/2addr v15, v12

    add-float/2addr v13, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v15}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v15

    invoke-static {v6, v13, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    .line 651
    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v13

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v13, v15

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v15, v14

    int-to-float v14, v15

    div-float/2addr v14, v12

    add-float/2addr v13, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v14}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1900(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v14

    invoke-static {v11, v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    .line 653
    :cond_3
    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v13}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v13

    if-eqz v13, :cond_4

    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v13}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-lez v13, :cond_4

    .line 654
    iget-object v13, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v13}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 655
    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v14}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getX()F

    move-result v14

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v14, v15

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v15

    add-float/2addr v14, v15

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v12

    add-float/2addr v14, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v15}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v15

    invoke-static {v6, v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    .line 656
    iget-object v14, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v14}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getY()F

    move-result v14

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v14, v1

    invoke-virtual {v13}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v14, v1

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v12

    add-float/2addr v14, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v1

    invoke-static {v11, v14, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    :cond_4
    move v13, v11

    move v11, v6

    .line 658
    invoke-direct {v0, v11, v13}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->checkRainbow(FF)V

    .line 660
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v12

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    .line 661
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 662
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1400(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 663
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v12

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v4

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    :cond_5
    move v12, v1

    sub-float v1, v11, v12

    sub-float v3, v13, v12

    add-float v4, v11, v12

    add-float v5, v13, v12

    .line 665
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    .line 666
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 668
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$2000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 669
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$2000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$2000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 670
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$2100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Swatch;

    move-result-object v2

    iget v2, v2, Lorg/telegram/ui/Components/Paint/Swatch;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 671
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$2100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 673
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v12, v2

    .line 674
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$2000(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v7, v11, v13, v2, v3}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->drawColorCircle(Landroid/graphics/Canvas;FFFI)V

    .line 676
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$2100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v3}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$2100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v4

    mul-float v3, v3, v4

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 677
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$2100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)F

    move-result v2

    sub-float/2addr v8, v2

    mul-float v1, v1, v8

    sub-float/2addr v12, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$2100(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v7, v11, v13, v12, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 680
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 607
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 608
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$8;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$1200(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method
