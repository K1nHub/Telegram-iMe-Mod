.class public final Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->prepareForSwapBinance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSwapProcessPresenter.kt\ncom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter\n*L\n1#1,111:1\n467#2,8:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setBinanceConvertQuote$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;)V

    .line 115
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    new-instance v1, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Swap$Binance;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    invoke-direct {v1, p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Swap$Binance;-><init>(Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;)V

    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$renderState(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$prepareForSwapBinance$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$handleSwapErrors(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/Result$Error;)V

    :cond_1
    :goto_0
    return-void
.end method
