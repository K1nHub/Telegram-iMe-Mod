.class public final Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->transferTokens(Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;Z)V
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
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSendAmountPresenter.kt\ncom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter\n*L\n1#1,111:1\n518#2,33:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $isNeedSendMessage$inlined:Z

.field final synthetic $transferArgs$inlined:Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;ZLcom/smedialink/storage/domain/model/crypto/send/TransferArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    iput-boolean p2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->$isNeedSendMessage$inlined:Z

    iput-object p3, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->$transferArgs$inlined:Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    const-string v1, "viewState"

    if-eqz v0, :cond_1

    .line 114
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/smedialink/ui/base/mvp/base/BaseView$DefaultImpls;->showLoadingDialog$default(Lcom/smedialink/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->$isNeedSendMessage$inlined:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getTelegramGateway$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    move-result-object p1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-interface {p1, v0, v1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->hasUser(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getTelegramGateway$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    move-result-object p1

    invoke-interface {p1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v3

    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->$transferArgs$inlined:Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;->getAmount()D

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$sendMessageToChat(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;JJD)V

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getRxEventBus$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object p1

    sget-object v0, Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;->INSTANCE:Lcom/smedialink/common/AppRxEvents$UpdateWalletScreen;

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    .line 119
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->$transferArgs$inlined:Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs;->getAmount()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getSuccessMessage(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->showSuccessSend(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$resetTransactionFee(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    .line 121
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetStateIfNeed()V

    goto/16 :goto_0

    .line 123
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_6

    .line 124
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/smedialink/ui/base/mvp/base/BaseView$DefaultImpls;->showLoadingDialog$default(Lcom/smedialink/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    .line 125
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$runNoEnoughMoneyFlow(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    goto :goto_0

    .line 127
    :cond_2
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->USER_NOT_FOUND:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_4

    .line 128
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 129
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->showRecipientWalletNotActivatedError()V

    goto :goto_0

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;->showRecipientNotFoundError()V

    goto :goto_0

    .line 134
    :cond_4
    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ETHER_BLOCK_CHAIN_ERROR:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_5

    .line 135
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$resetTransactionFee(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)V

    .line 136
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetStateIfNeed()V

    .line 137
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
