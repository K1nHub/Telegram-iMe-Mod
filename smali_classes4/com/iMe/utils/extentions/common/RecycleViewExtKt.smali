.class public final Lcom/iMe/utils/extentions/common/RecycleViewExtKt;
.super Ljava/lang/Object;
.source "RecycleViewExt.kt"


# direct methods
.method public static final attachSnapHelperWithListener(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/SnapHelper;Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;Lcom/iMe/utils/listeners/OnSnapPositionChangeListener;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "snapHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "behavior"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSnapPositionChangeListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 30
    new-instance v0, Lcom/iMe/utils/listeners/SnapOnScrollListener;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/utils/listeners/SnapOnScrollListener;-><init>(Landroidx/recyclerview/widget/SnapHelper;Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;Lcom/iMe/utils/listeners/OnSnapPositionChangeListener;)V

    .line 31
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static synthetic attachSnapHelperWithListener$default(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/SnapHelper;Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;Lcom/iMe/utils/listeners/OnSnapPositionChangeListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 26
    sget-object p2, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;->NOTIFY_ON_SCROLL_STATE_IDLE:Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    .line 24
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt;->attachSnapHelperWithListener(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/SnapHelper;Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;Lcom/iMe/utils/listeners/OnSnapPositionChangeListener;)V

    return-void
.end method

.method public static final disableDefaultAnimation(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    instance-of v0, p0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    :goto_1
    return-void
.end method

.method public static final isLastItem(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final preventScrollByParent(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/iMe/utils/extentions/common/RecycleViewExtKt$preventScrollByParent$1;

    invoke-direct {v0}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt$preventScrollByParent$1;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public static final restoreScrollState(Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/os/Parcelable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    :goto_0
    return-void
.end method

.method public static final setHorizontalRecyclerInPagerScrollHelper(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/iMe/utils/extentions/common/RecycleViewExtKt$setHorizontalRecyclerInPagerScrollHelper$1;

    invoke-direct {v0}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt$setHorizontalRecyclerInPagerScrollHelper$1;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method
