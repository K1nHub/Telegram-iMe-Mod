.class public final Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/reaction/ReactionPresenter;->prepareTextMessage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Lorg/telegram/messenger/MessageObject;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 ReactionPresenter.kt\ncom/iMe/ui/reaction/ReactionPresenter\n*L\n1#1,132:1\n89#2,26:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $replyMessageObject$inlined:Lorg/telegram/messenger/MessageObject;

.field final synthetic this$0:Lcom/iMe/ui/reaction/ReactionPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/reaction/ReactionPresenter;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    iput-object p2, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->$replyMessageObject$inlined:Lorg/telegram/messenger/MessageObject;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

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

    const-string v2, "it"

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

    const-string v3, "result.data.results"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "result.data.results.first()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    check-cast v6, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    const/4 v4, 0x0

    .line 138
    iget-object v2, v0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-static {v2}, Lcom/iMe/ui/reaction/ReactionPresenter;->access$getTelegramGateway$p(Lcom/iMe/ui/reaction/ReactionPresenter;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v5

    .line 140
    iget-object v2, v0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    invoke-static {v2, v1}, Lcom/iMe/ui/reaction/ReactionPresenter;->access$formatBotRequestParams(Lcom/iMe/ui/reaction/ReactionPresenter;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)Ljava/util/HashMap;

    move-result-object v7

    .line 141
    iget-object v1, v0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-static {v1}, Lcom/iMe/ui/reaction/ReactionPresenter;->access$getDialogId$p(Lcom/iMe/ui/reaction/ReactionPresenter;)J

    move-result-wide v8

    .line 142
    iget-object v10, v0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->$replyMessageObject$inlined:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 136
    invoke-static/range {v4 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;ZILjava/lang/String;)V

    .line 150
    iget-object v1, v0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-static {v1}, Lcom/iMe/ui/reaction/ReactionPresenter;->access$getTelegramGateway$p(Lcom/iMe/ui/reaction/ReactionPresenter;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    .line 151
    sget v2, Lorg/telegram/messenger/NotificationCenter;->sendSocialEmotion:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 152
    iget-object v1, v0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-virtual {v1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/reaction/ReactionView;

    invoke-interface {v1}, Lcom/iMe/ui/reaction/ReactionView;->messageCreated()V

    goto :goto_0

    .line 155
    :cond_0
    instance-of v2, v1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-virtual {v2}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/reaction/ReactionView;

    check-cast v1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v3, v0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-static {v3}, Lcom/iMe/ui/reaction/ReactionPresenter;->access$getResourceManager$p(Lcom/iMe/ui/reaction/ReactionPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_1
    :goto_0
    return-void
.end method
