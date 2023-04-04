.class public final Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "CatalogAllCategoriesRecycleAdapter.kt"

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
    value = "SMAP\nCatalogAllCategoriesRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogAllCategoriesRecycleAdapter.kt\ncom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter\n+ 2 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,41:1\n10#2,2:42\n*S KotlinDebug\n*F\n+ 1 CatalogAllCategoriesRecycleAdapter.kt\ncom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter\n*L\n36#1:42,2\n*E\n"
.end annotation


# instance fields
.field private final categoryWithCampaignsProvider:Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;)V
    .locals 2

    const-string v0, "categoryWithCampaignsProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;->categoryWithCampaignsProvider:Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;

    .line 18
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
.method public final getCategoryWithCampaignsProvider()Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;->categoryWithCampaignsProvider:Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;

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

    .line 34
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 35
    instance-of p1, p1, Lcom/iMe/model/catalog/CategoryWithCampaignsItem;

    if-eqz p1, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CATALOG_CATEGORY_WITH_CAMPAIGNS:I

    goto :goto_0

    .line 36
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CATALOG_CATEGORY_WITH_CAMPAIGNS:I

    :goto_0
    return p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;->onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 25
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;->categoryWithCampaignsProvider:Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->onViewRecycled(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    return-void
.end method

.method public setNewInstance(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;->categoryWithCampaignsProvider:Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;

    invoke-virtual {v0}, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->clearAdaptersMap()V

    .line 30
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method
