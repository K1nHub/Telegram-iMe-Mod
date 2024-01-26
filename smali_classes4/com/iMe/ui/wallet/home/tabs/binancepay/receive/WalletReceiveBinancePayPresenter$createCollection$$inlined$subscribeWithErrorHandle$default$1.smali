.class public final Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->createCollection(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletReceiveBinancePayPresenter.kt\ncom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter\n*L\n1#1,132:1\n111#2,28:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $fragment$inlined:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->$fragment$inlined:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$messages_BotResults;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "it"

    .line 69
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v2, v1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v2, :cond_0

    .line 135
    check-cast v1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    const-string/jumbo v3, "result.data.results"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "result.data.results.first()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 138
    iget-object v4, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->$fragment$inlined:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 139
    iget-object v2, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getTelegramGateway$p(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v5

    .line 141
    iget-object v2, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    iget-object v3, v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    const-string v7, "inlineBot.id"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-wide v7, v1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$formatBotRequestParams(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 142
    iget-object v1, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getChatId$p(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 137
    invoke-static/range {v4 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZILjava/lang/String;)V

    .line 146
    iget-object v1, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-virtual {v1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;

    .line 147
    iget-object v2, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_pay_request_send_success_dialog_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    iget-object v3, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v3}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    .line 149
    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_pay_request_send_success_dialog_description:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 150
    iget-object v7, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v7}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getRecipientId$p(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 148
    invoke-interface {v3, v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 152
    iget-object v4, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v4}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    new-instance v5, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$2$1;

    iget-object v6, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-direct {v5, v6}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$2$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;->showCreatedCollectionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 157
    :cond_0
    instance-of v2, v1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-virtual {v2}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;

    check-cast v1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v3, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter$createCollection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    invoke-static {v3}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_1
    :goto_0
    return-void
.end method
