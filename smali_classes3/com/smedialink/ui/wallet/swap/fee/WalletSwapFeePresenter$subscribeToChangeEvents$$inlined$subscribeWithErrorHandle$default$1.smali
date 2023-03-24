.class public final Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->subscribeToChangeEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSwapFeePresenter.kt\ncom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter\n*L\n1#1,111:1\n112#2,12:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;",
            ">;)V"
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
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->setMetadata(Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;)V

    .line 115
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    new-instance v1, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->getSelectedFee()Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getSpeedLevel()Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;

    move-result-object v2

    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/swap/CryptoSwapMetadata;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object p1

    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-virtual {v4}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->getSelectedFee()Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getSpeedLevel()Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;->getFeeByLevel(Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;)Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/smedialink/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->setSelectedFee(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V

    .line 116
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeView;->onFeeReselected()V

    goto :goto_0

    .line 118
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeeView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$subscribeToChangeEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
