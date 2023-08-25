.class public final Lcom/iMe/ui/wallet/crypto/buy/adapter/BuyCryptoProductRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "BuyCryptoProductRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseNodeAdapter<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuyCryptoProductRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuyCryptoProductRecycleAdapter.kt\ncom/iMe/ui/wallet/crypto/buy/adapter/BuyCryptoProductRecycleAdapter\n+ 2 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,34:1\n10#2,2:35\n*S KotlinDebug\n*F\n+ 1 BuyCryptoProductRecycleAdapter.kt\ncom/iMe/ui/wallet/crypto/buy/adapter/BuyCryptoProductRecycleAdapter\n*L\n29#1:35,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/SimplexFooterProvider;Lcom/iMe/ui/adapter/provider/SimplexProductProvider;)V
    .locals 2

    const-string/jumbo v0, "simplexFooterProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "simplexProductProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 16
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 20
    invoke-static {p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

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

    .line 26
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 27
    instance-of p2, p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->PRODUCT_FOR_BUY:I

    goto :goto_0

    .line 28
    :cond_0
    instance-of p1, p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;

    if-eqz p1, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->FOOTER:I

    goto :goto_0

    .line 29
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TRANSACTION:I

    :goto_0
    return p1
.end method
