.class public Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;
.super Ljava/lang/Object;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorButton"
.end annotation


# instance fields
.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final bounds:Landroid/graphics/RectF;

.field private final circlePath:Landroid/graphics/Path;

.field public final clickBounds:Landroid/graphics/RectF;

.field private final color2Path:Landroid/graphics/Path;

.field private hasColor2:Z

.field private hasColor3:Z

.field public id:I

.field private final paint1:Landroid/graphics/Paint;

.field private final paint2:Landroid/graphics/Paint;

.field private final paint3:Landroid/graphics/Paint;

.field private selected:Z

.field private final selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)V
    .locals 8

    .line 1568
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1559
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    .line 1560
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    .line 1561
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint3:Landroid/graphics/Paint;

    .line 1562
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->circlePath:Landroid/graphics/Path;

    .line 1563
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    .line 1566
    new-instance v0, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 1607
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x140

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1617
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1618
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->clickBounds:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1627
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1628
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 1629
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1631
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1632
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 1633
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->circlePath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->circlePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1635
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1636
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor2:Z

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 1638
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1639
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1640
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1641
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1642
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1644
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1646
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor3:Z

    if-eqz v0, :cond_1

    .line 1647
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1648
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3ea147ae    # 0.315f

    mul-float/2addr v0, v1

    .line 1649
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1650
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    div-float/2addr v0, v4

    sub-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1651
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v0

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1652
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1653
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    add-float/2addr v6, v0

    .line 1649
    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x42340000    # 45.0f

    .line 1655
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    const v0, 0x40151eb8    # 2.33f

    .line 1656
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint3:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1657
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1660
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selected:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 1663
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4300(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1664
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4300(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Landroid/graphics/Paint;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4100(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1665
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1666
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1667
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v4

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4300(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, -0x40000000    # -2.0f

    invoke-static {v5, v6, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    .line 1668
    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4300(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Landroid/graphics/Paint;

    move-result-object v0

    .line 1665
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1672
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public layout(Landroid/graphics/RectF;)V
    .locals 1

    .line 1620
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public layoutClickBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 1623
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public set(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1571
    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor3:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor2:Z

    .line 1572
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public set(Lorg/telegram/messenger/MessagesController$PeerColor;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1586
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4100(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4100(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->isDark()Z

    move-result v0

    .line 1587
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4200(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    .line 1588
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor2()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor3()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1589
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4100(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1590
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4100(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 1592
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4100(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1593
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4100(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1595
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint3:Landroid/graphics/Paint;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4100(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1596
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor2(Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor2:Z

    .line 1597
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor3(Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor3:Z

    goto :goto_3

    .line 1599
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4100(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1600
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor6(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4100(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-static {v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->access$4100(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1601
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor6(Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor2:Z

    .line 1602
    iput-boolean v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor3:Z

    :goto_3
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 1

    .line 1609
    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selected:Z

    if-nez p2, :cond_0

    .line 1611
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 1613
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
