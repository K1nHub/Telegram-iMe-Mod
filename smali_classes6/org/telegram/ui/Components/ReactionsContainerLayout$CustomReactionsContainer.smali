.class Lorg/telegram/ui/Components/ReactionsContainerLayout$CustomReactionsContainer;
.super Landroid/widget/FrameLayout;
.source "ReactionsContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomReactionsContainer"
.end annotation


# instance fields
.field backgroundPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;)V
    .locals 0

    .line 1681
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$CustomReactionsContainer;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 1682
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1679
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$CustomReactionsContainer;->backgroundPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1687
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1688
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$CustomReactionsContainer;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "actionBarDefaultSubmenuItemIcon"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$CustomReactionsContainer;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v2, "dialogBackground"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x3f333333    # 0.7f

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 1689
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$CustomReactionsContainer;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1691
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1692
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/4 v3, 0x0

    .line 1693
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1695
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    .line 1697
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$CustomReactionsContainer;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v1

    .line 1698
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sub-float v6, v2, v4

    sub-float v7, v0, v4

    sub-float/2addr v7, v1

    add-float v8, v2, v4

    add-float v9, v0, v4

    add-float/2addr v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1699
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1700
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-virtual {p1, v6, v3, v2, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1701
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$CustomReactionsContainer;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1702
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1704
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 1705
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1706
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1707
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
