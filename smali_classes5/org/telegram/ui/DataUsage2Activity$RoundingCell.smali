.class public Lorg/telegram/ui/DataUsage2Activity$RoundingCell;
.super Landroid/view/View;
.source "DataUsage2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataUsage2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundingCell"
.end annotation


# instance fields
.field paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field private top:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 906
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 902
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$RoundingCell;->path:Landroid/graphics/Path;

    .line 903
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$RoundingCell;->paint:Landroid/graphics/Paint;

    .line 911
    iput-boolean v0, p0, Lorg/telegram/ui/DataUsage2Activity$RoundingCell;->top:Z

    .line 907
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const v1, -0x40d70a3d    # -0.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0xf000000

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 908
    iget-object p1, p0, Lorg/telegram/ui/DataUsage2Activity$RoundingCell;->paint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 941
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 942
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 929
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 930
    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$RoundingCell;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/DataUsage2Activity$RoundingCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0xd

    .line 935
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 936
    iget-boolean p1, p0, Lorg/telegram/ui/DataUsage2Activity$RoundingCell;->top:Z

    invoke-virtual {p0, p1}, Lorg/telegram/ui/DataUsage2Activity$RoundingCell;->setTop(Z)V

    return-void
.end method

.method public setTop(Z)V
    .locals 6

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$RoundingCell;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 916
    iput-boolean p1, p0, Lorg/telegram/ui/DataUsage2Activity$RoundingCell;->top:Z

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    .line 917
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    .line 918
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 919
    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$RoundingCell;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, p1, p1, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 921
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    .line 922
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/DataUsage2Activity$RoundingCell;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, p1, p1, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :goto_0
    return-void
.end method
