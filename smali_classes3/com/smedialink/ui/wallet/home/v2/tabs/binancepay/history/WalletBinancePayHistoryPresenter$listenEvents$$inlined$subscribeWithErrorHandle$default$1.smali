.class public final Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;->listenEvents()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletBinancePayHistoryPresenter.kt\ncom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter\n*L\n1#1,111:1\n137#2,7:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3
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

    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 114
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;

    :goto_1
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    instance-of p1, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessRestoreWallet;

    :goto_2
    if-eqz p1, :cond_3

    .line 115
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0, v2}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;->loadTransactions$default(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryPresenter;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method
