.class public final Lcom/iMe/ui/catalog/tabs/user_channels/adapter/CatalogUserChannelsRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "CatalogUserChannelsRecycleAdapter.kt"

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
    value = "SMAP\nCatalogUserChannelsRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogUserChannelsRecycleAdapter.kt\ncom/iMe/ui/catalog/tabs/user_channels/adapter/CatalogUserChannelsRecycleAdapter\n+ 2 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,30:1\n10#2,2:31\n*S KotlinDebug\n*F\n+ 1 CatalogUserChannelsRecycleAdapter.kt\ncom/iMe/ui/catalog/tabs/user_channels/adapter/CatalogUserChannelsRecycleAdapter\n*L\n25#1:31,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/CreateCampaignProvider;)V
    .locals 2

    const-string v0, "createCampaignProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 14
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
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

    .line 23
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 24
    instance-of p1, p1, Lcom/iMe/model/catalog/CreateCampaignItem;

    if-eqz p1, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CATALOG_CREATE:I

    goto :goto_0

    .line 25
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CATALOG_CREATE:I

    :goto_0
    return p1
.end method
