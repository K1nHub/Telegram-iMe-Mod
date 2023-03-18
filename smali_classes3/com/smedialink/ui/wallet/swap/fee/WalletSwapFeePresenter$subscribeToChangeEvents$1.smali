.class final Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapFeePresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->subscribeToChangeEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;)Lio/reactivex/ObservableSource;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;",
            ">;>;"
        }
    .end annotation

    const-string v0, "slippage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->setSelectedSlip(Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;)V

    .line 96
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$getSwapInteractor$p(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;

    move-result-object v1

    .line 98
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$getArgs$p(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    .line 99
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$getArgs$p(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    .line 100
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$getArgs$p(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountIn()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "args.metadata.amountIn.toString()"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;->EXACT_INPUT:Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;

    .line 102
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;->getPercent()F

    move-result v6

    .line 103
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$getArgs$p(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v7

    .line 104
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$getArgs$p(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getOutputNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v8

    .line 105
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$getArgs$p(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;->getProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v9

    .line 97
    invoke-virtual/range {v1 .. v9}, Lcom/smedialink/storage/domain/interactor/crypto/swap/SwapInteractor;->getQuoteToSwap(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/TradeType;FLcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)Lio/reactivex/Observable;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->invoke(Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
