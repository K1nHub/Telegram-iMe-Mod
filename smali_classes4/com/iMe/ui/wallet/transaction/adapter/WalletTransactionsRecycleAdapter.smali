.class public final Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseNodeAdapter;
.source "WalletTransactionsRecycleAdapter.kt"

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
    value = "SMAP\nWalletTransactionsRecycleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTransactionsRecycleAdapter.kt\ncom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter\n+ 2 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,50:1\n10#2,2:51\n*S KotlinDebug\n*F\n+ 1 WalletTransactionsRecycleAdapter.kt\ncom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter\n*L\n45#1:51,2\n*E\n"
.end annotation


# instance fields
.field private final globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

.field private final headerProvider:Lcom/iMe/ui/adapter/provider/HeaderProvider;

.field private final tokenTransactionProvider:Lcom/iMe/ui/adapter/provider/TokenTransactionProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/adapter/provider/StakingOperationProvider;Lcom/iMe/ui/adapter/provider/CryptoBoxActionProvider;Lcom/iMe/ui/adapter/provider/GlobalStateProvider;Lcom/iMe/ui/adapter/provider/HeaderProvider;Lcom/iMe/ui/adapter/provider/TokenTransactionProvider;)V
    .locals 2

    const-string/jumbo v0, "stakingOperationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoBoxActionProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalStateProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenTransactionProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 26
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    iput-object p3, p0, Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;->globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    .line 24
    iput-object p4, p0, Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;->headerProvider:Lcom/iMe/ui/adapter/provider/HeaderProvider;

    .line 25
    iput-object p5, p0, Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;->tokenTransactionProvider:Lcom/iMe/ui/adapter/provider/TokenTransactionProvider;

    .line 29
    invoke-static {p3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 30
    invoke-static {p4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 31
    invoke-static {p5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 32
    invoke-static {p1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 33
    invoke-static {p2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->asItem(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    return-void
.end method


# virtual methods
.method public final getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;->globalStateProvider:Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    return-object v0
.end method

.method public final getHeaderProvider()Lcom/iMe/ui/adapter/provider/HeaderProvider;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;->headerProvider:Lcom/iMe/ui/adapter/provider/HeaderProvider;

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

    .line 39
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 40
    instance-of p2, p1, Lcom/iMe/model/wallet/transaction/TransactionItem;

    if-eqz p2, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TRANSACTION:I

    goto :goto_0

    .line 41
    :cond_0
    instance-of p2, p1, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    if-eqz p2, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->STAKING_OPERATION:I

    goto :goto_0

    .line 42
    :cond_1
    instance-of p2, p1, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    if-eqz p2, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CRYPTOBOX_ACTION:I

    goto :goto_0

    .line 43
    :cond_2
    instance-of p2, p1, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz p2, :cond_3

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    goto :goto_0

    .line 44
    :cond_3
    instance-of p1, p1, Lcom/iMe/model/wallet/home/HeaderItem;

    if-eqz p1, :cond_4

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    goto :goto_0

    .line 45
    :cond_4
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TRANSACTION:I

    :goto_0
    return p1
.end method

.method public final getTokenTransactionProvider()Lcom/iMe/ui/adapter/provider/TokenTransactionProvider;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;->tokenTransactionProvider:Lcom/iMe/ui/adapter/provider/TokenTransactionProvider;

    return-object v0
.end method
