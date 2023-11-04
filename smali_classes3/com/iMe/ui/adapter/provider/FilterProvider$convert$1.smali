.class final Lcom/iMe/ui/adapter/provider/FilterProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FilterProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/FilterProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/common/FiltersListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/common/FiltersListItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/FilterProvider;


# direct methods
.method constructor <init>(Lcom/iMe/ui/adapter/provider/FilterProvider;Lcom/iMe/model/common/FiltersListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/FilterProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/FilterProvider;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/FilterProvider$convert$1;->$item:Lcom/iMe/model/common/FiltersListItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/FilterProvider$convert$1;->invoke(Landroidx/recyclerview/widget/RecyclerView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/FilterProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/FilterProvider;

    const/4 v2, 0x4

    .line 52
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 53
    invoke-static {v1}, Lcom/iMe/ui/adapter/provider/FilterProvider;->access$getFiltersScrollState$p(Lcom/iMe/ui/adapter/provider/FilterProvider;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt;->restoreScrollState(Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/os/Parcelable;)V

    .line 50
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/FilterProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/FilterProvider;

    invoke-virtual {v0}, Lcom/iMe/ui/adapter/provider/FilterProvider;->getFiltersRecycleAdapter()Lcom/iMe/ui/adapter/FiltersRecycleAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/FilterProvider$convert$1;->$item:Lcom/iMe/model/common/FiltersListItem;

    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/FilterProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/FilterProvider;

    .line 56
    invoke-virtual {v1}, Lcom/iMe/model/common/FiltersListItem;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    .line 57
    invoke-static {v2}, Lcom/iMe/ui/adapter/provider/FilterProvider;->access$getFiltersDiffCallback$p(Lcom/iMe/ui/adapter/provider/FilterProvider;)Lcom/iMe/ui/adapter/diff/FiltersDiffCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 58
    invoke-virtual {v2}, Lcom/iMe/ui/adapter/provider/FilterProvider;->getOnFilterClickListener()Lcom/chad/library/adapter/base/listener/OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 55
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 60
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/RecycleViewExtKt;->preventScrollByParent(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
