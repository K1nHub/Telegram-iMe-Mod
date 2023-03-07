.class public final Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->listenEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletTransactionsPresenter.kt\ncom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter\n*L\n1#1,111:1\n234#2,13:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;

    .line 113
    instance-of v0, p1, Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 116
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    .line 117
    :cond_2
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessRestoreWallet;

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_3

    .line 118
    :cond_3
    instance-of v1, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$RefreshTransactions;

    :goto_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    .line 119
    :cond_4
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;

    if-eqz v0, :cond_5

    .line 120
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->access$setSelectedNetworkType$p(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 121
    iget-object v1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    :cond_5
    :goto_4
    return-void
.end method
