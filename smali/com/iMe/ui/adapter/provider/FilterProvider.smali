.class public final Lcom/iMe/ui/adapter/provider/FilterProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "FilterProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/common/FiltersListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final filtersDiffCallback:Lcom/iMe/ui/adapter/diff/FiltersDiffCallback;

.field private final filtersRecycleAdapter:Lcom/iMe/ui/adapter/FiltersRecycleAdapter;

.field private filtersScrollState:Landroid/os/Parcelable;

.field private final itemViewType:I

.field private final layoutId:I

.field private onFilterClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/FiltersRecycleAdapter;)V
    .locals 1

    const-string v0, "filtersRecycleAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/FilterProvider;->filtersRecycleAdapter:Lcom/iMe/ui/adapter/FiltersRecycleAdapter;

    .line 27
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_LIST:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/FilterProvider;->itemViewType:I

    .line 28
    sget p1, Lorg/telegram/messenger/R$layout;->fork_recycle_item_filters_list:I

    iput p1, p0, Lcom/iMe/ui/adapter/provider/FilterProvider;->layoutId:I

    .line 31
    new-instance p1, Lcom/iMe/ui/adapter/diff/FiltersDiffCallback;

    invoke-direct {p1}, Lcom/iMe/ui/adapter/diff/FiltersDiffCallback;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/FilterProvider;->filtersDiffCallback:Lcom/iMe/ui/adapter/diff/FiltersDiffCallback;

    return-void
.end method

.method public static final synthetic access$getFiltersDiffCallback$p(Lcom/iMe/ui/adapter/provider/FilterProvider;)Lcom/iMe/ui/adapter/diff/FiltersDiffCallback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/FilterProvider;->filtersDiffCallback:Lcom/iMe/ui/adapter/diff/FiltersDiffCallback;

    return-object p0
.end method

.method public static final synthetic access$getFiltersScrollState$p(Lcom/iMe/ui/adapter/provider/FilterProvider;)Landroid/os/Parcelable;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/FilterProvider;->filtersScrollState:Landroid/os/Parcelable;

    return-object p0
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/common/FiltersListItem;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget v0, Lorg/telegram/messenger/R$id;->recycle_filters:I

    new-instance v1, Lcom/iMe/ui/adapter/provider/FilterProvider$convert$1;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/adapter/provider/FilterProvider$convert$1;-><init>(Lcom/iMe/ui/adapter/provider/FilterProvider;Lcom/iMe/model/common/FiltersListItem;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/common/FiltersListItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/common/FiltersListItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "payloads"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/iMe/ui/adapter/provider/FilterProvider;->filtersRecycleAdapter:Lcom/iMe/ui/adapter/FiltersRecycleAdapter;

    invoke-virtual {p2}, Lcom/iMe/model/common/FiltersListItem;->getFilters()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, p3, v0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/iMe/model/common/FiltersListItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/FilterProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/common/FiltersListItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/iMe/model/common/FiltersListItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/FilterProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/common/FiltersListItem;Ljava/util/List;)V

    return-void
.end method

.method public final getFiltersRecycleAdapter()Lcom/iMe/ui/adapter/FiltersRecycleAdapter;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/FilterProvider;->filtersRecycleAdapter:Lcom/iMe/ui/adapter/FiltersRecycleAdapter;

    return-object v0
.end method

.method public getItemViewType()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/iMe/ui/adapter/provider/FilterProvider;->itemViewType:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/iMe/ui/adapter/provider/FilterProvider;->layoutId:I

    return v0
.end method

.method public final getOnFilterClickListener()Lcom/chad/library/adapter/base/listener/OnItemClickListener;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/FilterProvider;->onFilterClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;

    return-object v0
.end method

.method public final onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/iMe/ui/adapter/provider/FilterProvider;->getItemViewType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->isViewType(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    sget v0, Lorg/telegram/messenger/R$id;->recycle_filters:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/FilterProvider;->filtersScrollState:Landroid/os/Parcelable;

    :cond_1
    return-void
.end method

.method public final setOnFilterClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/FilterProvider;->onFilterClickListener:Lcom/chad/library/adapter/base/listener/OnItemClickListener;

    return-void
.end method
