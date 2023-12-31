.class final Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;
.super Landroid/view/View;
.source "ColorPickerBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlphaPickerView"
.end annotation


# instance fields
.field private alpha:F

.field private colorPaint:Landroid/graphics/Paint;

.field private outlinePaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    .line 863
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 858
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->colorPaint:Landroid/graphics/Paint;

    .line 859
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->outlinePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 864
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 865
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->outlinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 866
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->outlinePaint:Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private invalidateShader()V
    .locals 10

    .line 882
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->colorPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    const/4 v1, 0x2

    new-array v6, v1, [I

    const/4 v1, 0x0

    aput v1, v6, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v6, v2

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private updatePosition(F)V
    .locals 4

    const/4 v0, 0x6

    .line 906
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0xd

    .line 907
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    .line 908
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-float/2addr p1, v0

    add-float/2addr p1, v1

    .line 910
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v3

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->alpha:F

    .line 911
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->alpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$900(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;II)V

    .line 912
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 917
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 919
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x6

    .line 920
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    .line 921
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v5, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    add-float v7, v0, v3

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 922
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 923
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$1000(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 924
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$1000(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Landroid/graphics/Path;

    move-result-object v6

    const/16 v8, 0x10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v4, v9, v10, v11}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 925
    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$1000(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 926
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p1, v4, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->drawCheckerboard(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    .line 927
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 928
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v3

    invoke-virtual {v4, v3, v5, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 929
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/16 v2, 0xd

    .line 931
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    .line 932
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v1

    sub-float v4, v2, v4

    add-float v5, v3, v4

    .line 933
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v1, v3

    sub-float/2addr v6, v1

    iget v1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->alpha:F

    mul-float/2addr v6, v1

    add-float/2addr v3, v6

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 934
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->outlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 935
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->access$400(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->alpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {p1, v1, v0, v4, v2}, Lorg/telegram/ui/Components/Paint/Views/PaintColorsListView;->drawColorCircle(Landroid/graphics/Canvas;FFFI)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 871
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 872
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->invalidateShader()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 899
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 895
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->updatePosition(F)V

    .line 896
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 890
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 892
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->updatePosition(F)V

    :goto_0
    return v1
.end method

.method public setColor(I)V
    .locals 1

    .line 876
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->alpha:F

    .line 877
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$AlphaPickerView;->invalidateShader()V

    .line 878
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
