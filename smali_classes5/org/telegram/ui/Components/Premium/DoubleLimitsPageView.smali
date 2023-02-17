.class public Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;
.super Landroid/widget/FrameLayout;
.source "DoubleLimitsPageView.java"

# interfaces
.implements Lorg/telegram/ui/Components/Premium/PagerHeaderView;


# instance fields
.field adapter:Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;

.field final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 23
    new-instance v1, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;-><init>(IZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;->adapter:Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;

    .line 24
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 27
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;->adapter:Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;

    iput-object p0, p1, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->containerView:Landroid/view/ViewGroup;

    const/4 p1, -0x1

    .line 28
    invoke-static {p1, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 39
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 33
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 34
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;->adapter:Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Components/Premium/DoubledLimitsBottomSheet$Adapter;->measureGradient(Landroid/content/Context;II)V

    return-void
.end method

.method public setOffset(F)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 47
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public setTopOffset(I)V
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/DoubleLimitsPageView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method
