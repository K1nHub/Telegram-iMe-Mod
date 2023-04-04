.class public final Lcom/iMe/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "WalletSwapProtocolsRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseNodeAdapter<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSwapProtocolsRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSwapProtocolsRecycleAdapter.kt\ncom/iMe/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter\n+ 2 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,39:1\n10#2,2:40\n*S KotlinDebug\n*F\n+ 1 WalletSwapProtocolsRecycleAdapter.kt\ncom/iMe/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter\n*L\n34#1:40,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/CexProtocolProvider;Lcom/iMe/ui/adapter/provider/DexProtocolProvider;Lcom/iMe/ui/adapter/provider/HeaderProvider;)V
    .locals 2

    const-string v0, "cexProtocolProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dexProtocolProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 19
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    invoke-static {p3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 23
    invoke-static {p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 24
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

    .line 30
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 31
    instance-of p2, p1, Lcom/iMe/model/wallet/swap/DexProtocolItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SWAP_PROTOCOL:I

    goto :goto_0

    .line 32
    :cond_0
    instance-of p2, p1, Lcom/iMe/model/wallet/swap/CexProtocolItem;

    if-eqz p2, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CENTRALIZED_EXCHANGES:I

    goto :goto_0

    .line 33
    :cond_1
    instance-of p1, p1, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz p1, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER:I

    goto :goto_0

    .line 34
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SWAP_PROTOCOL:I

    :goto_0
    return p1
.end method
