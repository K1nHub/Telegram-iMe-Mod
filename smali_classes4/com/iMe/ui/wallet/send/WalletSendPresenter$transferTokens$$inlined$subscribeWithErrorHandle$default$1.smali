.class public final Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/send/WalletSendPresenter;->transferTokens(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;Z)V
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
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSendPresenter.kt\ncom/iMe/ui/wallet/send/WalletSendPresenter\n*L\n1#1,132:1\n751#2,46:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $shouldSendMessage$inlined:Z

.field final synthetic $transferArgs$inlined:Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;

.field final synthetic this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendPresenter;ZLcom/iMe/storage/domain/model/crypto/send/TransferArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->$shouldSendMessage$inlined:Z

    iput-object p3, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->$transferArgs$inlined:Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const-string/jumbo v1, "viewState"

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->showLoadingDialog$default(Lcom/iMe/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getSelectedUser$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->$shouldSendMessage$inlined:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getTelegramGateway$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getSelectedUser$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->hasUser(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    .line 141
    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getSelectedUser$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 142
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 140
    invoke-static {v0, v1, v2, p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$sendReceiptToChat(Lcom/iMe/ui/wallet/send/WalletSendPresenter;JLjava/lang/String;)V

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getRxEventBus$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object p1

    sget-object v0, Lcom/iMe/common/AppRxEvents$UpdateWalletScreen;->INSTANCE:Lcom/iMe/common/AppRxEvents$UpdateWalletScreen;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 146
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->$transferArgs$inlined:Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->getAmount()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getSuccessMessage(Lcom/iMe/ui/wallet/send/WalletSendPresenter;D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->showSuccessSend(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$resetTransactionFee(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    .line 148
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$resetStateIfNeeded(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    goto/16 :goto_0

    .line 151
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_6

    .line 152
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->showLoadingDialog$default(Lcom/iMe/ui/base/mvp/base/BaseView;ZZLio/reactivex/disposables/Disposable;ILjava/lang/Object;)V

    .line 153
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 154
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->NO_ENOUGH_MONEY:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_2

    .line 155
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$runNoEnoughMoneyFlow(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    goto :goto_0

    .line 158
    :cond_2
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->USER_NOT_FOUND:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    if-ne v0, v1, :cond_4

    .line 159
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getSelectedUser$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 160
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/send/WalletSendView;->showRecipientWalletNotActivatedError()V

    goto :goto_0

    .line 162
    :cond_3
    iget-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/send/WalletSendView;->showRecipientNotFoundError()V

    goto :goto_0

    .line 166
    :cond_4
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->ETHER_BLOCK_CHAIN_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v0, v1, :cond_5

    .line 167
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$resetTransactionFee(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    .line 168
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$resetStateIfNeeded(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)V

    .line 169
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/send/WalletSendView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendPresenter$transferTokens$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/send/WalletSendPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_6
    :goto_0
    return-void
.end method
