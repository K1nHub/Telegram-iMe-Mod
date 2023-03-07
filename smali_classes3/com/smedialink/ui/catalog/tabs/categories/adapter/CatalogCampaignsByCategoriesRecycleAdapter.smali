.class public final Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "CatalogCampaignsByCategoriesRecycleAdapter.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseNodeAdapter<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogCampaignsByCategoriesRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogCampaignsByCategoriesRecycleAdapter.kt\ncom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter\n+ 2 AnyExt.kt\ncom/smedialink/utils/extentions/common/AnyExtKt\n*L\n1#1,46:1\n10#2,2:47\n*S KotlinDebug\n*F\n+ 1 CatalogCampaignsByCategoriesRecycleAdapter.kt\ncom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter\n*L\n41#1:47,2\n*E\n"
.end annotation


# instance fields
.field private final filterProvider:Lcom/smedialink/ui/adapter/provider/FilterProvider;

.field private final globalStateProvider:Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/adapter/provider/FilterProvider;Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;Lcom/smedialink/ui/adapter/provider/CampaignProvider;)V
    .locals 2

    const-string v0, "filterProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalStateProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 21
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;->filterProvider:Lcom/smedialink/ui/adapter/provider/FilterProvider;

    .line 19
    iput-object p2, p0, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;->globalStateProvider:Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    .line 24
    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 25
    invoke-static {p3}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 26
    invoke-static {p2}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
.method public final getFilterProvider()Lcom/smedialink/ui/adapter/provider/FilterProvider;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;->filterProvider:Lcom/smedialink/ui/adapter/provider/FilterProvider;

    return-object v0
.end method

.method public final getGlobalStateProvider()Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;->globalStateProvider:Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    return-object v0
.end method

.method protected getItemType(Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 38
    instance-of p2, p1, Lcom/smedialink/model/common/FiltersListItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->FILTERS_LIST:I

    goto :goto_0

    .line 39
    :cond_0
    instance-of p2, p1, Lcom/smedialink/model/catalog/CampaignItem;

    if-eqz p2, :cond_1

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->CATALOG_CAMPAIGN:I

    goto :goto_0

    .line 40
    :cond_1
    instance-of p1, p1, Lcom/smedialink/model/common/GlobalStateItem;

    if-eqz p1, :cond_2

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    goto :goto_0

    .line 41
    :cond_2
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->CATALOG_CAMPAIGN:I

    :goto_0
    return p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;->onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;->filterProvider:Lcom/smedialink/ui/adapter/provider/FilterProvider;

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/adapter/provider/FilterProvider;->onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method
