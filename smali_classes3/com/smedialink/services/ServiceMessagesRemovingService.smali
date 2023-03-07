.class public final Lcom/smedialink/services/ServiceMessagesRemovingService;
.super Landroid/app/Service;
.source "ServiceMessagesRemovingService.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/services/ServiceMessagesRemovingService$State;,
        Lcom/smedialink/services/ServiceMessagesRemovingService$Companion;,
        Lcom/smedialink/services/ServiceMessagesRemovingService$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceMessagesRemovingService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceMessagesRemovingService.kt\ncom/smedialink/services/ServiceMessagesRemovingService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,340:1\n798#2,11:341\n798#2,11:352\n1547#2:363\n1618#2,3:364\n764#2:367\n855#2,2:368\n1720#2,3:370\n764#2:373\n855#2,2:374\n1488#2:377\n1518#2,3:378\n1521#2,3:388\n1236#2,4:393\n1#3:376\n357#4,7:381\n438#4:391\n388#4:392\n*S KotlinDebug\n*F\n+ 1 ServiceMessagesRemovingService.kt\ncom/smedialink/services/ServiceMessagesRemovingService\n*L\n71#1:341,11\n75#1:352,11\n129#1:363\n129#1:364,3\n148#1:367\n148#1:368,2\n165#1:370,3\n209#1:373\n209#1:374,2\n213#1:377\n213#1:378,3\n213#1:388,3\n217#1:393,4\n213#1:381,7\n217#1:391\n217#1:392\n*E\n"
.end annotation


# instance fields
.field private accountInstance:Lorg/telegram/messenger/AccountInstance;

.field private builder:Landroidx/core/app/NotificationCompat$Builder;

.field private chatId:J

.field private classGuid:I

.field private deletedMessagesCount:I

.field private deletingServiceMessagesIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isDeleteAllSelected:Z

.field private isGroup:Z

.field private isLoadingMessages:Z

.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private migratedChatId:J

.field private migratedChatMaxMessageId:I

.field private minDate:I

.field private final notificationChannelId:I

.field private final notifications:[I

.field private removingServiceMessagesTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$MessageAction;",
            ">;>;"
        }
    .end annotation
.end field

.field private serviceMessagesCount:I

.field private serviceMessagesIdsByChatsIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private startLoadFromMessageId:I

.field private topicId:I

.field private useMigratedChatId:Z


# direct methods
.method public static synthetic $r8$lambda$iX8BSY3rbq1wDBb6Mzvp92vpoHU(Lcom/smedialink/services/ServiceMessagesRemovingService;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/services/ServiceMessagesRemovingService;->loadMessages$lambda-3(Lcom/smedialink/services/ServiceMessagesRemovingService;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$oZFzhol1Rq3k3VojD8ZlvcOXAFk(Lcom/smedialink/services/ServiceMessagesRemovingService;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/services/ServiceMessagesRemovingService;->deleteMessages$lambda-9(Lcom/smedialink/services/ServiceMessagesRemovingService;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/services/ServiceMessagesRemovingService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/services/ServiceMessagesRemovingService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

    .line 29
    sget v0, Lcom/smedialink/common/IdFabric$ServiceNotifications;->service_messages_removing:I

    iput v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->notificationChannelId:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 31
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 32
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 33
    sget v1, Lorg/telegram/messenger/NotificationCenter;->loadingMessagesFailed:I

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 34
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    const/4 v3, 0x3

    aput v1, v0, v3

    .line 30
    iput-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->notifications:[I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->deletingServiceMessagesIds:Ljava/util/List;

    .line 40
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->removingServiceMessagesTypes:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->serviceMessagesIdsByChatsIds:Ljava/util/Map;

    .line 44
    iput-boolean v2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->isLoadingMessages:Z

    return-void
.end method

.method private final buildNotification()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 135
    sget-object v0, Lcom/smedialink/services/utils/ServiceNotificationsUtils;->INSTANCE:Lcom/smedialink/services/utils/ServiceNotificationsUtils;

    .line 137
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete_filled:I

    const-class v2, Lcom/smedialink/services/receivers/StopServiceMessagesRemovingReceiver;

    const-string v3, "iMe_ServiceMessagesRemovingChannel"

    .line 135
    invoke-virtual {v0, v3, v1, v2}, Lcom/smedialink/services/utils/ServiceNotificationsUtils;->createCancellableNotification(Ljava/lang/String;ILjava/lang/Class;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method private final deleteChatMessagesPartIfExist(J)Z
    .locals 6

    .line 238
    iget-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->serviceMessagesIdsByChatsIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 239
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-ne v3, v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_5

    .line 240
    iget-wide v3, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->migratedChatId:J

    cmp-long v5, p1, v3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->useMigratedChatId:Z

    .line 241
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    .line 243
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v4, v2, v4

    .line 242
    invoke-interface {v0, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->deletingServiceMessagesIds:Ljava/util/List;

    .line 246
    iget v4, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->deletedMessagesCount:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v4, v0

    iput v4, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->deletedMessagesCount:I

    .line 247
    invoke-direct {p0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->deleteMessages()V

    .line 248
    iget-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->serviceMessagesIdsByChatsIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->serviceMessagesIdsByChatsIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    .line 249
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 248
    :cond_4
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    :goto_3
    return v1
.end method

.method private final deleteMessages()V
    .locals 3

    .line 257
    iget-boolean v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->useMigratedChatId:Z

    if-eqz v0, :cond_0

    .line 258
    iget-wide v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->migratedChatId:J

    goto :goto_0

    .line 260
    :cond_0
    iget-wide v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->chatId:J

    .line 262
    :goto_0
    new-instance v2, Lcom/smedialink/services/ServiceMessagesRemovingService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1}, Lcom/smedialink/services/ServiceMessagesRemovingService$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/services/ServiceMessagesRemovingService;J)V

    invoke-direct {p0, v2}, Lcom/smedialink/services/ServiceMessagesRemovingService;->runWithDelay(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final deleteMessages$lambda-9(Lcom/smedialink/services/ServiceMessagesRemovingService;J)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-nez v0, :cond_0

    const-string v0, "accountInstance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 264
    iget-object p0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->deletingServiceMessagesIds:Ljava/util/List;

    invoke-static {p0}, Lorg/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-long v5, p1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 263
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JZZ)V

    return-void
.end method

.method private final deleteNextServiceMessagesPart()V
    .locals 2

    .line 229
    sget-object v0, Lcom/smedialink/services/ServiceMessagesRemovingService$State;->DELETING:Lcom/smedialink/services/ServiceMessagesRemovingService$State;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->updateNotification(ZLcom/smedialink/services/ServiceMessagesRemovingService$State;)V

    .line 230
    iget-wide v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->chatId:J

    invoke-direct {p0, v0, v1}, Lcom/smedialink/services/ServiceMessagesRemovingService;->deleteChatMessagesPartIfExist(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-wide v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->migratedChatId:J

    invoke-direct {p0, v0, v1}, Lcom/smedialink/services/ServiceMessagesRemovingService;->deleteChatMessagesPartIfExist(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    sget v0, Lorg/telegram/messenger/R$string;->deleting_messages_success:I

    invoke-direct {p0, v0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->stopServiceWithToast(I)V

    :cond_0
    return-void
.end method

.method private final loadMessages()V
    .locals 3

    .line 179
    iget-boolean v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->useMigratedChatId:Z

    if-eqz v0, :cond_0

    .line 180
    iget-wide v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->migratedChatId:J

    goto :goto_0

    .line 182
    :cond_0
    iget-wide v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->chatId:J

    :goto_0
    neg-long v0, v0

    .line 184
    new-instance v2, Lcom/smedialink/services/ServiceMessagesRemovingService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Lcom/smedialink/services/ServiceMessagesRemovingService$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/services/ServiceMessagesRemovingService;J)V

    invoke-direct {p0, v2}, Lcom/smedialink/services/ServiceMessagesRemovingService;->runWithDelay(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final loadMessages$lambda-3(Lcom/smedialink/services/ServiceMessagesRemovingService;J)V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v1, v0, Lcom/smedialink/services/ServiceMessagesRemovingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-nez v1, :cond_0

    const-string v1, "accountInstance"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x64

    .line 190
    iget v9, v0, Lcom/smedialink/services/ServiceMessagesRemovingService;->startLoadFromMessageId:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 194
    iget v13, v0, Lcom/smedialink/services/ServiceMessagesRemovingService;->classGuid:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 198
    iget v0, v0, Lcom/smedialink/services/ServiceMessagesRemovingService;->topicId:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/16 v20, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/16 v20, 0x0

    :goto_0
    move-wide/from16 v3, p1

    move/from16 v17, v0

    .line 185
    invoke-virtual/range {v2 .. v20}, Lorg/telegram/messenger/MessagesController;->loadMessages(JJZIIIZIIIIIIIIZ)V

    return-void
.end method

.method private final onAllMessagesLoaded()V
    .locals 7

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->isLoadingMessages:Z

    .line 208
    iget-object v1, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

    .line 764
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 210
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v5, :cond_2

    iget v6, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->topicId:I

    if-eqz v6, :cond_1

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-nez v6, :cond_2

    :cond_1
    iget-boolean v6, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->isDeleteAllSelected:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->removingServiceMessagesTypes:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->serviceMessagesCount:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1488
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1518
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1519
    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 214
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getChatId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 357
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 1520
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    :cond_5
    check-cast v6, Ljava/util/List;

    .line 215
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 438
    :cond_6
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 388
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1236
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1237
    check-cast v3, Ljava/util/Map$Entry;

    .line 388
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 217
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 218
    :cond_7
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 208
    iput-object v1, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->serviceMessagesIdsByChatsIds:Ljava/util/Map;

    .line 219
    iget-wide v2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_d

    .line 220
    iget-object v1, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->serviceMessagesIdsByChatsIds:Ljava/util/Map;

    iget-wide v2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->migratedChatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const/4 v0, 0x1

    :cond_b
    if-nez v0, :cond_c

    goto :goto_6

    .line 224
    :cond_c
    sget v0, Lorg/telegram/messenger/R$string;->no_service_messages:I

    invoke-direct {p0, v0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->stopServiceWithToast(I)V

    goto :goto_7

    .line 222
    :cond_d
    :goto_6
    invoke-direct {p0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->deleteNextServiceMessagesPart()V

    :goto_7
    return-void
.end method

.method private final onConnectionStateChanged()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-nez v0, :cond_0

    const-string v0, "accountInstance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 276
    sget-object v1, Lcom/smedialink/services/ServiceMessagesRemovingService$State;->WAITING_FOR_NETWORK:Lcom/smedialink/services/ServiceMessagesRemovingService$State;

    invoke-direct {p0, v0, v1}, Lcom/smedialink/services/ServiceMessagesRemovingService;->updateNotification(ZLcom/smedialink/services/ServiceMessagesRemovingService$State;)V

    :cond_1
    return-void
.end method

.method private final onNewMessagesPartLoaded(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->onAllMessagesLoaded()V

    goto/16 :goto_5

    .line 147
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v1, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->minDate:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_4

    .line 148
    iget-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 148
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v6, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->minDate:I

    if-le v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 149
    invoke-direct {p0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->onAllMessagesLoaded()V

    goto/16 :goto_5

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 152
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->startLoadFromMessageId:I

    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 154
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 155
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 156
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    if-eqz v1, :cond_5

    .line 157
    iput-boolean v3, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->useMigratedChatId:Z

    .line 158
    iget v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->migratedChatMaxMessageId:I

    iput v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->startLoadFromMessageId:I

    goto :goto_2

    .line 160
    :cond_5
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->isGroup:Z

    if-nez v0, :cond_6

    .line 161
    invoke-direct {p0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->onAllMessagesLoaded()V

    .line 164
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    .line 165
    iget-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 1720
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v2, 0x1

    goto :goto_4

    .line 1721
    :cond_8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 166
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne v1, v4, :cond_a

    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_9

    :goto_4
    if-eqz v2, :cond_b

    .line 169
    invoke-direct {p0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->onAllMessagesLoaded()V

    .line 172
    :cond_b
    sget-object p1, Lcom/smedialink/services/ServiceMessagesRemovingService$State;->LOADING:Lcom/smedialink/services/ServiceMessagesRemovingService$State;

    invoke-direct {p0, v3, p1}, Lcom/smedialink/services/ServiceMessagesRemovingService;->updateNotification(ZLcom/smedialink/services/ServiceMessagesRemovingService$State;)V

    .line 173
    invoke-direct {p0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->loadMessages()V

    :goto_5
    return-void
.end method

.method private final resolveIntentExtras(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "migrated_chat_id"

    const-wide/16 v1, -0x1

    .line 118
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->migratedChatId:J

    const-string v0, "chat_id"

    .line 119
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->chatId:J

    const-string v0, "topic_id"

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->topicId:I

    const-string v0, "migrated_chat_max_message_id"

    const/4 v2, -0x1

    .line 121
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->migratedChatMaxMessageId:I

    const-string v0, "is_group"

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->isGroup:Z

    const-string v0, "min_date"

    .line 123
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->minDate:I

    const-string v0, "is_channel"

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "selected_filters_codes"

    .line 125
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 126
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/fork/enums/ServiceMessageType;->ALL:Lorg/fork/enums/ServiceMessageType;

    invoke-virtual {v2}, Lorg/fork/enums/ServiceMessageType;->getGroupCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->isDeleteAllSelected:Z

    goto :goto_1

    .line 1547
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Ljava/lang/Integer;

    .line 129
    sget-object v3, Lorg/fork/enums/ServiceMessageType;->Companion:Lorg/fork/enums/ServiceMessageType$Companion;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2, v0}, Lorg/fork/enums/ServiceMessageType$Companion;->getByCode(IZ)Lorg/fork/enums/ServiceMessageType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/enums/ServiceMessageType;->getAction()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->removingServiceMessagesTypes:Ljava/util/List;

    :goto_1
    return-void
.end method

.method private final runWithDelay(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 313
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final stopServiceWithToast(I)V
    .locals 1

    .line 308
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getInternalString(res)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private final updateNotification(ZLcom/smedialink/services/ServiceMessagesRemovingService$State;)V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    sget-object v0, Lcom/smedialink/services/ServiceMessagesRemovingService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    .line 294
    sget p2, Lorg/telegram/messenger/R$string;->WaitingForNetwork:I

    const-string v0, "WaitingForNetwork"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 290
    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->deleting_messages:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 291
    iget v3, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->deletedMessagesCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 292
    iget v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->serviceMessagesCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 289
    invoke-static {p2, v2}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 286
    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->loading_messages:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 287
    iget-object v2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 285
    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_3

    goto :goto_1

    .line 297
    :cond_3
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 298
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_4

    .line 301
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 302
    iget p2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->notificationChannelId:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    if-ne p1, p2, :cond_2

    const/16 p1, 0xa

    .line 69
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 70
    iget-boolean p2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->isLoadingMessages:Z

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->classGuid:I

    if-ne p1, p2, :cond_8

    const/4 p1, 0x2

    .line 71
    aget-object p1, p3, p1

    check-cast p1, Ljava/util/List;

    .line 798
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 807
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    instance-of v0, p3, Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    invoke-direct {p0, p2}, Lcom/smedialink/services/ServiceMessagesRemovingService;->onNewMessagesPartLoaded(Ljava/util/List;)V

    goto/16 :goto_2

    .line 74
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_6

    .line 75
    aget-object p1, p3, v0

    check-cast p1, Ljava/util/List;

    .line 798
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 807
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 76
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 77
    iget-boolean p1, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->isLoadingMessages:Z

    if-nez p1, :cond_8

    .line 78
    iget-wide v2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->chatId:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    iget-wide v2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->migratedChatId:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_8

    .line 79
    :cond_5
    iget-object p1, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->deletingServiceMessagesIds:Ljava/util/List;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 81
    invoke-direct {p0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->deleteNextServiceMessagesPart()V

    goto :goto_2

    .line 84
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->loadingMessagesFailed:I

    if-ne p1, p2, :cond_7

    .line 85
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 86
    iget-boolean p2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->isLoadingMessages:Z

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->classGuid:I

    if-ne p1, p2, :cond_8

    .line 87
    sget p1, Lorg/telegram/messenger/R$string;->loading_messages_error:I

    invoke-direct {p0, p1}, Lcom/smedialink/services/ServiceMessagesRemovingService;->stopServiceWithToast(I)V

    goto :goto_2

    .line 90
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p2, :cond_8

    invoke-direct {p0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->onConnectionStateChanged()V

    :cond_8
    :goto_2
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "arg2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 61
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->classGuid:I

    .line 62
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    const-string v1, "getInstance(UserConfig.selectedAccount)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-nez v0, :cond_0

    const-string v0, "accountInstance"

    .line 63
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 97
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    .line 99
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 100
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    iget v2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->notificationChannelId:I

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 101
    iget-object v1, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-nez v1, :cond_0

    const-string v1, "accountInstance"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/smedialink/services/ServiceMessagesRemovingService;->resolveIntentExtras(Landroid/content/Intent;)V

    .line 106
    invoke-direct {p0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->buildNotification()V

    .line 107
    invoke-direct {p0}, Lcom/smedialink/services/ServiceMessagesRemovingService;->loadMessages()V

    .line 108
    sget-object p1, Lcom/smedialink/services/ServiceMessagesRemovingService$State;->LOADING:Lcom/smedialink/services/ServiceMessagesRemovingService$State;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/smedialink/services/ServiceMessagesRemovingService;->updateNotification(ZLcom/smedialink/services/ServiceMessagesRemovingService$State;)V

    .line 109
    iget p1, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->notificationChannelId:I

    iget-object p2, p0, Lcom/smedialink/services/ServiceMessagesRemovingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 p1, 0x2

    return p1
.end method
