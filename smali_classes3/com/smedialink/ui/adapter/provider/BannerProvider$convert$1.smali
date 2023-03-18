.class final Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BannerProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/BannerProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/BannerItem;)V
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
.field final synthetic $item:Lcom/smedialink/model/wallet/home/BannerItem;

.field final synthetic this$0:Lcom/smedialink/ui/adapter/provider/BannerProvider;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/adapter/provider/BannerProvider;Lcom/smedialink/model/wallet/home/BannerItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/BannerProvider;

    iput-object p2, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1;->$item:Lcom/smedialink/model/wallet/home/BannerItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1;->invoke(Landroidx/recyclerview/widget/RecyclerView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/BannerProvider;

    const/4 v2, 0x4

    .line 54
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 55
    invoke-static {v1}, Lcom/smedialink/ui/adapter/provider/BannerProvider;->access$getBannerScrollState$p(Lcom/smedialink/ui/adapter/provider/BannerProvider;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/RecycleViewExtKt;->restoreScrollState(Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/os/Parcelable;)V

    .line 53
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 57
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/BannerProvider;

    invoke-virtual {v0}, Lcom/smedialink/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BannersRecycleAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1;->$item:Lcom/smedialink/model/wallet/home/BannerItem;

    iget-object v2, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/BannerProvider;

    .line 58
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/home/BannerItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    .line 59
    invoke-static {v2}, Lcom/smedialink/ui/adapter/provider/BannerProvider;->access$getBannersDiffCallback$p(Lcom/smedialink/ui/adapter/provider/BannerProvider;)Lcom/smedialink/ui/wallet/home/v2/adapter/diff/BannerSlideDiffCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 60
    invoke-virtual {v2}, Lcom/smedialink/ui/adapter/provider/BannerProvider;->getBannerOnItemClickListener()Lcom/chad/library/adapter/base/listener/OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 57
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 62
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/BannerProvider;

    invoke-static {v0}, Lcom/smedialink/ui/adapter/provider/BannerProvider;->access$getBannerSnapHelper$p(Lcom/smedialink/ui/adapter/provider/BannerProvider;)Landroidx/recyclerview/widget/PagerSnapHelper;

    move-result-object v2

    new-instance v4, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1$3;

    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/BannerProvider;

    invoke-direct {v4, v0}, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1$3;-><init>(Lcom/smedialink/ui/adapter/provider/BannerProvider;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/extentions/common/RecycleViewExtKt;->attachSnapHelperWithListener$default(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/SnapHelper;Lcom/smedialink/utils/listeners/SnapOnScrollListener$Behavior;Lcom/smedialink/utils/listeners/OnSnapPositionChangeListener;ILjava/lang/Object;)V

    .line 67
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/RecycleViewExtKt;->preventScrollByParent(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
