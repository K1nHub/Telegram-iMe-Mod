.class public Lorg/telegram/ui/Components/NestedSizeNotifierLayout;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "NestedSizeNotifierLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;
    }
.end annotation


# instance fields
.field attached:Z

.field bottomSheetContainerView:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

.field childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

.field maxTop:I

.field private nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field targetListView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    return-void
.end method

.method private childAttached()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

    invoke-interface {v0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateMaxTop()V
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->targetListView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->targetListView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

    invoke-interface {v1}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->maxTop:I

    :cond_0
    return-void
.end method


# virtual methods
.method public isPinnedToTop()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;->getTop()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->maxTop:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 135
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->attached:Z

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 144
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->attached:Z

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 157
    invoke-direct {p0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->updateMaxTop()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 34
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 35
    invoke-direct {p0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->updateMaxTop()V

    return-void
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 6

    .line 68
    iget-object p5, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->targetListView:Landroid/view/View;

    if-ne p1, p5, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childAttached()Z

    move-result p5

    if-eqz p5, :cond_5

    .line 69
    iget-object p5, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

    invoke-interface {p5}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;->getTop()I

    move-result p5

    if-gez p3, :cond_4

    .line 71
    iget v0, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->maxTop:I

    if-gt p5, v0, :cond_3

    .line 72
    iget-object p1, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

    invoke-interface {p1}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 74
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    const/4 p5, -0x1

    if-eq p2, p5, :cond_5

    .line 76
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object p5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    if-ne p5, v0, :cond_1

    if-eqz p2, :cond_5

    :cond_1
    const/4 v1, 0x1

    if-eqz p2, :cond_2

    move p2, p3

    goto :goto_0

    :cond_2
    sub-int/2addr p5, v0

    .line 80
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    aput p2, p4, v1

    const/4 p2, 0x0

    .line 81
    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 84
    :cond_3
    iget-object p4, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->bottomSheetContainerView:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p4, :cond_5

    iget-object p4, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->targetListView:Landroid/view/View;

    invoke-virtual {p4, p3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p4

    if-nez p4, :cond_5

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->bottomSheetContainerView:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->onNestedScroll(Landroid/view/View;IIII)V

    goto :goto_1

    .line 88
    :cond_4
    iget-object p5, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->bottomSheetContainerView:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p5, :cond_5

    .line 89
    invoke-virtual {p5, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 46
    iget-object p2, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->targetListView:Landroid/view/View;

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childAttached()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

    invoke-interface {p1}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

    invoke-interface {p2}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;->getTop()I

    move-result p2

    .line 49
    iget p3, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->maxTop:I

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    .line 50
    aput p5, p7, p2

    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 102
    iget-object p4, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p4, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 0

    .line 107
    iget-object p2, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p2, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 108
    iget-object p2, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->bottomSheetContainerView:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->onStopNestedScroll(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setBottomSheetContainerView(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->bottomSheetContainerView:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    return-void
.end method

.method public setChildLayout(Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

    if-eq v0, p1, :cond_1

    .line 125
    iput-object p1, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->childLayout:Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;

    .line 126
    iget-boolean v0, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->attached:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {p1}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout$ChildLayout;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 129
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->updateMaxTop()V

    :cond_1
    return-void
.end method

.method public setTargetListView(Landroid/view/View;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->targetListView:Landroid/view/View;

    .line 120
    invoke-direct {p0}, Lorg/telegram/ui/Components/NestedSizeNotifierLayout;->updateMaxTop()V

    return-void
.end method
