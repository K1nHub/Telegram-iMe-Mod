.class public final Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SmartBotContentAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$AdsViewHolder;,
        Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$BotNameViewHolder;,
        Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$NormalViewHolder;,
        Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$OnLoadGifListener;,
        Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartBotContentAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartBotContentAdapter.kt\ncom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,321:1\n766#2:322\n857#2,2:323\n800#2,11:325\n1549#2:336\n1620#2,3:337\n*S KotlinDebug\n*F\n+ 1 SmartBotContentAdapter.kt\ncom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter\n*L\n46#1:322\n46#1:323,2\n75#1:325,11\n76#1:336\n76#1:337,3\n*E\n"
.end annotation


# instance fields
.field private contextMedia:Z

.field private contextQueryReqId:I

.field private contextQueryRunnable:Ljava/lang/Runnable;

.field private contextUsernameReqId:I

.field private currentAccount:I

.field private currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

.field private final dialogId:J

.field private foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;",
            ">;"
        }
    .end annotation
.end field

.field private mediaContentOffset:I

.field private nextQueryOffset:Ljava/lang/String;

.field private final onLoadGifListener:Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$OnLoadGifListener;

.field private searchingContextQuery:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$QvlmUyjDuX_1A7poFgEPCQ9AyOE(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->searchForGifResults$lambda$3$lambda$2(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S9aCbVHXUR5lhKk0q9qNtn-qWDk(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->searchForGifResults$lambda$3(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(JLcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$OnLoadGifListener;)V
    .locals 1

    const-string/jumbo v0, "onLoadGifListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-wide p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->dialogId:J

    iput-object p3, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->onLoadGifListener:Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$OnLoadGifListener;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    .line 30
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentAccount:I

    .line 33
    sget-object p1, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->TEXT:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    return-void
.end method

.method public static final synthetic access$getContextQueryRunnable$p(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getCurrentAccount$p(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentAccount:I

    return p0
.end method

.method public static final synthetic access$getFoundContextBot$p(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method public static final synthetic access$processFoundUser(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static final synthetic access$searchForGifResults(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->searchForGifResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setContextQueryRunnable$p(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Ljava/lang/Runnable;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setContextUsernameReqId$p(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextUsernameReqId:I

    return-void
.end method

.method private final prepareGifRequest(Ljava/lang/String;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 156
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    .line 159
    :cond_0
    iget v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 160
    iget v1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    .line 161
    iput-object p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->searchingContextQuery:Ljava/lang/String;

    .line 163
    new-instance v2, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;-><init>(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Ljava/lang/String;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;)V

    iput-object v2, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    .line 196
    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final processFoundUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextUsernameReqId:I

    if-eqz p1, :cond_0

    .line 201
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v0, 0x1

    .line 202
    iget-object v1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->searchingContextQuery:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->searchForGifResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final searchForGifResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 206
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    sget-object v1, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->GIF:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    if-eq v0, v1, :cond_0

    return-void

    .line 209
    :cond_0
    iget v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryReqId:I

    if-eqz v0, :cond_1

    .line 210
    iget v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryReqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryReqId:I

    :cond_1
    if-eqz p3, :cond_5

    if-nez p2, :cond_2

    goto/16 :goto_2

    .line 217
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget v1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    .line 219
    new-instance v2, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$$ExternalSyntheticLambda1;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p3

    move v6, p1

    move-object v7, p2

    move-object v8, p4

    move-object v9, v1

    move-object v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 262
    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    goto :goto_1

    .line 264
    :cond_3
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    .line 265
    iget v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 266
    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 267
    iput-object p4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 269
    iget-wide p2, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->dialogId:J

    invoke-static {p2, p3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 270
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    .line 272
    :cond_4
    iget p2, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide p3, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->dialogId:J

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 274
    :goto_0
    iget p2, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p1, v2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryReqId:I

    :goto_1
    return-void

    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 214
    iput-object p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->searchingContextQuery:Ljava/lang/String;

    return-void
.end method

.method private static final searchForGifResults$lambda$3(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    const-string/jumbo v0, "this$0"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$key"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    new-instance v0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p7

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final searchForGifResults$lambda$3$lambda$2(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$key"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->searchingContextQuery:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 225
    iput v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryReqId:I

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 227
    invoke-direct {p0, v0, p4, p1, p5}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->searchForGifResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_1
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    if-eqz p1, :cond_7

    if-nez p2, :cond_2

    .line 230
    move-object p1, p3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->cache_time:I

    if-eqz p1, :cond_2

    .line 231
    invoke-virtual {p6, p7, p3}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 233
    :cond_2
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_botResults;

    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->nextQueryOffset:Ljava/lang/String;

    .line 235
    :goto_0
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ge v0, p1, :cond_4

    .line 236
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 237
    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of p4, p4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez p4, :cond_3

    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of p4, p4, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-nez p4, :cond_3

    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez p4, :cond_3

    iget-object p4, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of p4, p4, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz p4, :cond_3

    .line 238
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    .line 241
    :cond_3
    iget-wide p4, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    iput-wide p4, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    add-int/2addr v0, p2

    goto :goto_0

    .line 245
    :cond_4
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 246
    iget-object p4, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    sget-object p5, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;->Companion:Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem$Companion;

    iget-object p6, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    const-string/jumbo p7, "response.results"

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5, p6}, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem$Companion;->map(Ljava/util/List;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p4, p1, p5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    if-ne p1, p2, :cond_5

    .line 248
    iget-object p2, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->onLoadGifListener:Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$OnLoadGifListener;

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-interface {p2, p4}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$OnLoadGifListener;->onLoadGifComplete(I)V

    .line 250
    :cond_5
    iget-object p2, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eq p1, p2, :cond_6

    .line 251
    iget-object p2, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 253
    :cond_6
    iget-boolean p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->gallery:Z

    iput-boolean p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextMedia:Z

    .line 254
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, ""

    .line 255
    iput-object p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->nextQueryOffset:Ljava/lang/String;

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public final getGifBotId()J
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getGifBotName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getItem(I)Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;

    invoke-interface {p1}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;->getContentType()Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->getValue()I

    move-result p1

    return p1
.end method

.method public final getMediaContent()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    iget v1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->mediaContentOffset:I

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 809
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1549
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;

    .line 76
    invoke-virtual {v2}, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;->getMedia()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v2

    .line 1621
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final getMediaContentOffset()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->mediaContentOffset:I

    return v0
.end method

.method public final getTextContent()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    iget v1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->mediaContentOffset:I

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    sget-object v2, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->NORMAL_BOT_LABEL:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    invoke-virtual {v2}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    move v1, v0

    :cond_0
    xor-int/lit8 p1, v1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;

    invoke-interface {v0}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;->getContentType()Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v0

    sget-object v1, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;

    .line 135
    instance-of v0, p2, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;

    if-eqz v0, :cond_3

    .line 136
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string/jumbo v0, "null cannot be cast to non-null type org.telegram.ui.Cells.ContextLinkCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    check-cast p2, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;

    invoke-virtual {p2}, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;->getMedia()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v4, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextMedia:Z

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->setLink(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Lorg/telegram/tgnet/TLRPC$User;ZZZ)V

    goto :goto_0

    .line 130
    :cond_0
    check-cast p1, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$BotNameViewHolder;

    .line 131
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;

    invoke-virtual {p1, p2}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$BotNameViewHolder;->bindTo(Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;)V

    goto :goto_0

    .line 126
    :cond_1
    check-cast p1, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$NormalViewHolder;

    .line 127
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;

    invoke-virtual {p1, p2}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$NormalViewHolder;->bindTo(Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;)V

    goto :goto_0

    .line 122
    :cond_2
    check-cast p1, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$AdsViewHolder;

    .line 123
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;

    invoke-virtual {p1, p2}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$AdsViewHolder;->bindTo(Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->ADVERT_BOT_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    invoke-virtual {v0}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->getValue()I

    move-result v0

    const-string v1, "inflate(LayoutInflater.f\u2026.context), parent, false)"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 106
    new-instance p2, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$AdsViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$AdsViewHolder;-><init>(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Lorg/telegram/messenger/databinding/ForkBotsContentPageItemAdsBinding;)V

    goto :goto_0

    .line 108
    :cond_0
    sget-object v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->BOT_MEDIA_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    invoke-virtual {v0}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 109
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/ContextLinkCell;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 111
    :cond_1
    sget-object v0, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->NORMAL_BOT_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    invoke-virtual {v0}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 112
    new-instance p2, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$NormalViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemNormalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkBotsContentPageItemNormalBinding;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$NormalViewHolder;-><init>(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Lorg/telegram/messenger/databinding/ForkBotsContentPageItemNormalBinding;)V

    goto :goto_0

    .line 115
    :cond_2
    new-instance p2, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$BotNameViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemLabelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/telegram/messenger/databinding/ForkBotsContentPageItemLabelBinding;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$BotNameViewHolder;-><init>(Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;Lorg/telegram/messenger/databinding/ForkBotsContentPageItemLabelBinding;)V

    :goto_0
    return-object p2
.end method

.method public final onDestroy()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 87
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryRunnable:Ljava/lang/Runnable;

    .line 90
    :cond_0
    iget v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextUsernameReqId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 91
    iget v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextUsernameReqId:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 92
    iput v1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextUsernameReqId:I

    .line 94
    :cond_1
    iget v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryReqId:I

    if-eqz v0, :cond_2

    .line 95
    iget v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryReqId:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 96
    iput v1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryReqId:I

    :cond_2
    return-void
.end method

.method public final searchGIFsForNextOffset()V
    .locals 4

    .line 79
    iget v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->contextQueryReqId:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->nextQueryOffset:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->searchingContextQuery:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    .line 82
    :cond_2
    iget-object v3, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->nextQueryOffset:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->searchForGifResults(ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setTextData(Lcom/iMe/ui/smartpanel/model/SmartBotTab;Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;)V
    .locals 9

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "botResponseType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->currentBotResponseType:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    .line 44
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;->getAnswers()Ljava/util/List;

    move-result-object v1

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;

    .line 47
    invoke-interface {v6}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;->getContentType()Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v7

    sget-object v8, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->NORMAL_BOT_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    if-ne v7, v8, :cond_1

    .line 48
    sget-object v7, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->TEXT:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    if-eq p2, v7, :cond_4

    .line 49
    :cond_1
    invoke-interface {v6}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;->getContentType()Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v7

    sget-object v8, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->BOT_MEDIA_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    if-ne v7, v8, :cond_2

    .line 50
    sget-object v7, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->GIF:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    if-eq p2, v7, :cond_4

    .line 51
    :cond_2
    invoke-interface {v6}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;->getContentType()Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v7

    sget-object v8, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->NORMAL_BOT_LABEL:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    if-eq v7, v8, :cond_4

    .line 52
    invoke-interface {v6}, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;->getContentType()Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    move-result-object v6

    sget-object v7, Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;->ADVERT_BOT_ANSWER:Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent$Type;

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    move v4, v5

    :cond_4
    :goto_1
    if-eqz v4, :cond_0

    .line 857
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    iget-object v1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->mediaContentOffset:I

    .line 57
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 59
    invoke-virtual {p1}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;->getGif()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v5

    :goto_2
    if-eqz v0, :cond_7

    sget-object v0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;->GIF:Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    if-ne p2, v0, :cond_7

    .line 60
    invoke-virtual {p1}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;->getGif()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->prepareGifRequest(Ljava/lang/String;)V

    goto :goto_4

    .line 61
    :cond_7
    invoke-virtual {p1}, Lcom/iMe/ui/smartpanel/model/SmartBotTab;->getGif()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    move v4, v5

    :goto_3
    if-eqz v4, :cond_9

    .line 62
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->onLoadGifListener:Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$OnLoadGifListener;

    invoke-interface {p1, v5}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter$OnLoadGifListener;->onLoadGifComplete(I)V

    :cond_9
    :goto_4
    return-void
.end method
