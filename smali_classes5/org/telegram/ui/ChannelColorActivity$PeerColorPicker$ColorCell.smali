.class Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;
.super Landroid/view/View;
.source "ChannelColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorCell"
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final circlePath:Landroid/graphics/Path;

.field private final color2Path:Landroid/graphics/Path;

.field private hasColor2:Z

.field private hasColor3:Z

.field private final paint1:Landroid/graphics/Paint;

.field private final paint2:Landroid/graphics/Paint;

.field private final paint3:Landroid/graphics/Paint;

.field private selected:Z

.field private final selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field final synthetic this$0:Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;Landroid/content/Context;)V
    .locals 7

    .line 1890
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->this$0:Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    .line 1891
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1880
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->backgroundPaint:Landroid/graphics/Paint;

    .line 1881
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->paint1:Landroid/graphics/Paint;

    .line 1882
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->paint2:Landroid/graphics/Paint;

    .line 1883
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->paint3:Landroid/graphics/Paint;

    .line 1884
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->circlePath:Landroid/graphics/Path;

    .line 1885
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->color2Path:Landroid/graphics/Path;

    .line 1888
    new-instance p2, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 1926
    new-instance p2, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x140

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1892
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1954
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1955
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 1956
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1958
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1959
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->circlePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1960
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1961
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->hasColor2:Z

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1964
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1966
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->hasColor3:Z

    if-eqz v0, :cond_1

    .line 1967
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1968
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 1969
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const v3, 0x41466666    # 12.4f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 1970
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 1971
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v2

    .line 1972
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v6, v3

    int-to-float v3, v6

    div-float/2addr v3, v2

    .line 1968
    invoke-virtual {v0, v1, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x42340000    # 45.0f

    .line 1974
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    const v1, 0x40151eb8    # 2.33f

    .line 1975
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->paint3:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1976
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1979
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->selected:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 1982
    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1984
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/16 v4, 0x14

    .line 1986
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 1987
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    mul-float/2addr v6, v2

    sub-float/2addr v4, v6

    .line 1985
    invoke-static {v5, v4, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->backgroundPaint:Landroid/graphics/Paint;

    .line 1983
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1994
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    const/16 p1, 0x38

    .line 1940
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1942
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->circlePath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 1943
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->circlePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1945
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->color2Path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->rewind()V

    .line 1946
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->color2Path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1947
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->color2Path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1948
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->color2Path:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1949
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->color2Path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public set(Lorg/telegram/messenger/MessagesController$PeerColor;)V
    .locals 4

    .line 1912
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->this$0:Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->access$5000(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->this$0:Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->access$5000(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1913
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor3()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1914
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->paint1:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->this$0:Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    invoke-static {v3}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->access$5000(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1915
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->paint2:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->this$0:Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    invoke-static {v1}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->access$5000(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 1917
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->paint1:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->this$0:Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    invoke-static {v3}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->access$5000(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->paint2:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->this$0:Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    invoke-static {v2}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->access$5000(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1920
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->paint3:Landroid/graphics/Paint;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->this$0:Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;

    invoke-static {v2}, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;->access$5000(Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1921
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor2()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->hasColor2:Z

    .line 1922
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor3()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->hasColor3:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1896
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1999
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 2000
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 1

    .line 1928
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->selected:Z

    if-nez p2, :cond_0

    .line 1930
    iget-object p2, p0, Lorg/telegram/ui/ChannelColorActivity$PeerColorPicker$ColorCell;->selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 1932
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
