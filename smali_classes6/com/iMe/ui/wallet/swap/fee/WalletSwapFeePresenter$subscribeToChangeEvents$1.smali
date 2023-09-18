.class final Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapFeePresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->subscribeToChangeEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;)Lio/reactivex/ObservableSource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;",
            ">;>;"
        }
    .end annotation

    const-string/jumbo v0, "slippage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->setSelectedSlip(Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;)V

    .line 84
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$getSwapInteractor$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;

    move-result-object v1

    .line 86
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$getArgs$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v2

    .line 87
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$getArgs$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v3

    .line 88
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$getArgs$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/domain/utils/extentions/TokenExtKt;->toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v4

    .line 89
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$getArgs$p(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getAmountIn()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "args.metadata.amountIn.toString()"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v6, Lcom/iMe/storage/domain/model/wallet/swap/TradeType;->EXACT_INPUT:Lcom/iMe/storage/domain/model/wallet/swap/TradeType;

    .line 91
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;->getPercent()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 85
    invoke-virtual/range {v1 .. v7}, Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;->getQuoteToSwap(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/Token;Lcom/iMe/storage/domain/model/wallet/token/Token;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/TradeType;Ljava/lang/Float;)Lio/reactivex/Observable;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string/jumbo v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$1;->invoke(Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
