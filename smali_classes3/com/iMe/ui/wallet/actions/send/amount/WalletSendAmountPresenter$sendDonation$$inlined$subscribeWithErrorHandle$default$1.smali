.class public final Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->sendDonation(JLcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSendAmountPresenter.kt\ncom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter\n*L\n1#1,111:1\n506#2,28:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $transferArgs$inlined:Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

.field final synthetic this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->$transferArgs$inlined:Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getRxEventBus$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object p1

    sget-object v0, Lcom/iMe/common/AppRxEvents$UpdateWalletScreen;->INSTANCE:Lcom/iMe/common/AppRxEvents$UpdateWalletScreen;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 115
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->$transferArgs$inlined:Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;->getAmount()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getSuccessMessage(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showSuccessSend(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$resetTransactionFee(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    .line 117
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetStateIfNeed()V

    goto/16 :goto_0

    .line 119
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_5

    .line 120
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$runNoEnoughMoneyFlow(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    goto :goto_0

    .line 122
    :cond_1
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->USER_NOT_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_3

    .line 123
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 124
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showRecipientWalletNotActivatedError()V

    goto :goto_0

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->showRecipientNotFoundError()V

    goto :goto_0

    .line 129
    :cond_3
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ETHER_BLOCK_CHAIN_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_4

    .line 130
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$resetTransactionFee(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    .line 131
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetStateIfNeed()V

    .line 132
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$sendDonation$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
