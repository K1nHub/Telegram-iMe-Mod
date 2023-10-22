.class public final Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->listenEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/utils/rx/event/RxEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletTransactionsPresenter.kt\ncom/iMe/ui/wallet/transaction/WalletTransactionsPresenter\n*L\n1#1,132:1\n318#2,14:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/utils/rx/event/RxEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/utils/rx/event/RxEvent;

    .line 134
    sget-object v0, Lcom/iMe/common/AppRxEvents$UpdateWalletScreen;->INSTANCE:Lcom/iMe/common/AppRxEvents$UpdateWalletScreen;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 135
    :cond_0
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletReset;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletReset;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 136
    :cond_1
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletCreated;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletCreated;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    .line 137
    :cond_2
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletRestored;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletRestored;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    .line 138
    :cond_3
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$RefreshTransactions;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$RefreshTransactions;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    .line 140
    :cond_4
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    .line 142
    check-cast p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;->getNetworkId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p1

    .line 141
    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->access$setSelectedNetworkItem$p(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V

    .line 143
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    :cond_5
    :goto_4
    return-void
.end method
