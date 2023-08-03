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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 ReactionPresenter.kt\ncom/iMe/ui/reaction/ReactionPresenter\n*L\n1#1,111:1\n64#2,11:112\n*E\n"
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

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 14
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

    .line 48
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

    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-static {v0}, Lcom/iMe/ui/reaction/ReactionPresenter;->access$getTelegramGateway$p(Lcom/iMe/ui/reaction/ReactionPresenter;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    iget-object v0, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    invoke-static {v0, p1}, Lcom/iMe/ui/reaction/ReactionPresenter;->access$formatBotRequestParams(Lcom/iMe/ui/reaction/ReactionPresenter;Lorg/telegram/tgnet/TLRPC$messages_BotResults;)Ljava/util/HashMap;

    move-result-object v5

    iget-object p1, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-static {p1}, Lcom/iMe/ui/reaction/ReactionPresenter;->access$getDialogId$p(Lcom/iMe/ui/reaction/ReactionPresenter;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->$replyMessageObject$inlined:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingBotContextResult(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$StoryItem;ZILjava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-static {p1}, Lcom/iMe/ui/reaction/ReactionPresenter;->access$getTelegramGateway$p(Lcom/iMe/ui/reaction/ReactionPresenter;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->sendSocialEmotion:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 117
    iget-object p1, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/reaction/ReactionView;

    invoke-interface {p1}, Lcom/iMe/ui/reaction/ReactionView;->messageCreated()V

    goto :goto_0

    .line 119
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/reaction/ReactionView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/reaction/ReactionPresenter$prepareTextMessage$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/reaction/ReactionPresenter;

    invoke-static {v1}, Lcom/iMe/ui/reaction/ReactionPresenter;->access$getResourceManager$p(Lcom/iMe/ui/reaction/ReactionPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_1
    :goto_0
    return-void
.end method
