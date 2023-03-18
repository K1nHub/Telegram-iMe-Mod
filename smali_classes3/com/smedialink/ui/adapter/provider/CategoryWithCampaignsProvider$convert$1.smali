.class final Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CategoryWithCampaignsProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCategoryWithCampaignsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoryWithCampaignsProvider.kt\ncom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,91:1\n56#2,6:92\n*S KotlinDebug\n*F\n+ 1 CategoryWithCampaignsProvider.kt\ncom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1\n*L\n65#1:92,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field final synthetic $item:Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;

.field final synthetic this$0:Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;


# direct methods
.method public static synthetic $r8$lambda$QdshuuCVNwR-E97NARgdUX2HY90(Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;->invoke$lambda$5$lambda$2(Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UiNhMEt0taFknGE3ZeSZxbgojOw(Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;->invoke$lambda$5$lambda$4$lambda$3(Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;)V

    return-void
.end method

.method constructor <init>(Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;

    iput-object p2, p0, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;->$helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p3, p0, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;->$item:Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$1(Lkotlin/Lazy;)Lcom/smedialink/ui/catalog/tabs/all/adapter/CatalogAllChannelsRecycleAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/smedialink/ui/catalog/tabs/all/adapter/CatalogAllChannelsRecycleAdapter;",
            ">;)",
            "Lcom/smedialink/ui/catalog/tabs/all/adapter/CatalogAllChannelsRecycleAdapter;"
        }
    .end annotation

    .line 65
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/catalog/tabs/all/adapter/CatalogAllChannelsRecycleAdapter;

    return-object p0
.end method

.method private static final invoke$lambda$5$lambda$2(Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;->getOnChannelItemClick()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/smedialink/model/catalog/CampaignItem;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/smedialink/model/catalog/CampaignItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final invoke$lambda$5$lambda$4$lambda$3(Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;->getOnLoadMoreChannels()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;->getCategory()Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;->invoke(Landroidx/recyclerview/widget/RecyclerView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;

    iget-object v2, p0, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;->$helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const/4 v3, 0x4

    .line 62
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 63
    invoke-static {v1}, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;->access$getChannelsRecyclersScrollStates$p(Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/RecycleViewExtKt;->restoreScrollState(Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/os/Parcelable;)V

    .line 61
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1$invoke$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1$invoke$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;->invoke$lambda$1(Lkotlin/Lazy;)Lcom/smedialink/ui/catalog/tabs/all/adapter/CatalogAllChannelsRecycleAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;->$item:Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;

    iget-object v2, p0, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;->this$0:Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;

    .line 67
    invoke-virtual {v1}, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;->getCampaigns()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    .line 68
    invoke-static {v2}, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;->access$getChannelsDiffCallback$p(Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;)Lcom/smedialink/ui/catalog/tabs/all/adapter/diff/ChannelsDiffCallback;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 69
    new-instance v3, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 73
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v3

    .line 74
    invoke-virtual {v1}, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;->getCampaigns()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 75
    new-instance v4, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, v1}, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;)V

    invoke-virtual {v3, v4}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    .line 76
    new-instance v4, Lcom/smedialink/ui/custom/HorizontalLoadMoreView;

    invoke-direct {v4}, Lcom/smedialink/ui/custom/HorizontalLoadMoreView;-><init>()V

    invoke-virtual {v3, v4}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V

    .line 77
    invoke-virtual {v1}, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;->isEndReached()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 78
    invoke-virtual {v3, v4}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    .line 83
    :goto_0
    invoke-static {v2}, Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;->access$getChannelsAdapters$p(Lcom/smedialink/ui/adapter/provider/CategoryWithCampaignsProvider;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/smedialink/model/catalog/CategoryWithCampaignsItem;->getCategory()Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 85
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/RecycleViewExtKt;->setHorizontalRecyclerInPagerScrollHelper(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
