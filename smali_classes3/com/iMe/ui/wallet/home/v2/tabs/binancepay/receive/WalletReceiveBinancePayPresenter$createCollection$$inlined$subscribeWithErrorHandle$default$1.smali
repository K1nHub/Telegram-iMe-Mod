.class public final Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->createCollection(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
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
        "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletReceiveBinancePayPresenter.kt\ncom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter\n*L\n1#1,111:1\n102#2,23:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $fragment$inlined:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->$fragment$inlined:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
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
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    const-string v1, "result.data.results"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "result.data.results.first()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 117
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->$fragment$inlined:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 118
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getTelegramGateway$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    .line 120
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    const-string v5, "inlineBot.id"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$formatBotRequestParams(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 121
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getChatId$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 116
    invoke-static/range {v2 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;ZILjava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;

    .line 125
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_binance_pay_request_send_success_dialog_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_pay_request_send_success_dialog_description:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v5}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getRecipientId$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v2}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    new-instance v3, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$2$1;

    iget-object v4, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-direct {v3, v4}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$2$1;-><init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)V

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;->showCreatedCollectionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 131
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
