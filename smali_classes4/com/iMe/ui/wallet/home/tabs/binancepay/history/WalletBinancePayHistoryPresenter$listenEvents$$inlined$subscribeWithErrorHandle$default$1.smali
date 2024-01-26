.class public final Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter;->listenEvents()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletBinancePayHistoryPresenter.kt\ncom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter\n*L\n1#1,132:1\n146#2,9:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/utils/rx/event/RxEvent;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "it"

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

    move p1, v1

    goto :goto_2

    .line 137
    :cond_2
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletRestored;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletRestored;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_3

    .line 138
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0, v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter;->loadTransactions$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/history/WalletBinancePayHistoryPresenter;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method
