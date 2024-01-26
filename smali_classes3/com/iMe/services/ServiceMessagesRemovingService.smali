.class public final Lcom/iMe/services/ServiceMessagesRemovingService;
.super Landroid/app/Service;
.source "ServiceMessagesRemovingService.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/services/ServiceMessagesRemovingService$Companion;,
        Lcom/iMe/services/ServiceMessagesRemovingService$State;,
        Lcom/iMe/services/ServiceMessagesRemovingService$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceMessagesRemovingService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceMessagesRemovingService.kt\ncom/iMe/services/ServiceMessagesRemovingService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,364:1\n800#2,11:365\n800#2,11:376\n1549#2:387\n1620#2,3:388\n766#2:391\n857#2,2:392\n1726#2,3:394\n766#2:397\n857#2,2:398\n1490#2:401\n1520#2,3:402\n1523#2,3:412\n1238#2,4:417\n1#3:400\n361#4,7:405\n442#4:415\n392#4:416\n*S KotlinDebug\n*F\n+ 1 ServiceMessagesRemovingService.kt\ncom/iMe/services/ServiceMessagesRemovingService\n*L\n81#1:365,11\n86#1:376,11\n147#1:387\n147#1:388,3\n166#1:391\n166#1:392,2\n184#1:394,3\n228#1:397\n228#1:398,2\n234#1:401\n234#1:402,3\n234#1:412,3\n238#1:417,4\n234#1:405,7\n238#1:415\n238#1:416\n*E\n"
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

.field private topicId:J

.field private useMigratedChatId:Z


# direct methods
.method public static synthetic $r8$lambda$Yzfu8co0_jN7ijQYqxcdch8_TpE(Lcom/iMe/services/ServiceMessagesRemovingService;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/services/ServiceMessagesRemovingService;->loadMessages$lambda$3(Lcom/iMe/services/ServiceMessagesRemovingService;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$cf-on9QArMefXyjZfRnz3fCCJRU(Lcom/iMe/services/ServiceMessagesRemovingService;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/services/ServiceMessagesRemovingService;->deleteMessages$lambda$9(Lcom/iMe/services/ServiceMessagesRemovingService;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/services/ServiceMessagesRemovingService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/services/ServiceMessagesRemovingService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

    .line 39
    sget v0, Lcom/iMe/common/IdFabric$ServiceNotifications;->SERVICE_MESSAGES_REMOVING:I

    iput v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->notificationChannelId:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 41
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 42
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 43
    sget v1, Lorg/telegram/messenger/NotificationCenter;->loadingMessagesFailed:I

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 44
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    const/4 v3, 0x3

    aput v1, v0, v3

    .line 40
    iput-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->notifications:[I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->deletingServiceMessagesIds:Ljava/util/List;

    .line 50
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->removingServiceMessagesTypes:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->serviceMessagesIdsByChatsIds:Ljava/util/Map;

    .line 54
    iput-boolean v2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->isLoadingMessages:Z

    return-void
.end method

.method private final buildNotification()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 153
    sget-object v0, Lcom/iMe/services/utils/ServiceNotificationsUtils;->INSTANCE:Lcom/iMe/services/utils/ServiceNotificationsUtils;

    .line 155
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete_filled:I

    const-class v2, Lcom/iMe/services/receivers/StopServiceMessagesRemovingReceiver;

    const-string v3, "iMe_ServiceMessagesRemovingChannel"

    .line 153
    invoke-virtual {v0, v3, v1, v2}, Lcom/iMe/services/utils/ServiceNotificationsUtils;->createCancellableNotification(Ljava/lang/String;ILjava/lang/Class;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method private final deleteChatMessagesPartIfExist(J)Z
    .locals 6

    .line 259
    iget-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->serviceMessagesIdsByChatsIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-ne v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_4

    .line 261
    iget-wide v3, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->migratedChatId:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->useMigratedChatId:Z

    .line 262
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    .line 264
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v4, v2, v4

    .line 263
    invoke-interface {v0, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->deletingServiceMessagesIds:Ljava/util/List;

    .line 267
    iget v4, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->deletedMessagesCount:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v4, v0

    iput v4, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->deletedMessagesCount:I

    .line 268
    invoke-direct {p0}, Lcom/iMe/services/ServiceMessagesRemovingService;->deleteMessages()V

    .line 269
    iget-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->serviceMessagesIdsByChatsIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->serviceMessagesIdsByChatsIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 270
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 269
    :cond_3
    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    return v1
.end method

.method private final deleteMessages()V
    .locals 3

    .line 278
    iget-boolean v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->useMigratedChatId:Z

    if-eqz v0, :cond_0

    .line 279
    iget-wide v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->migratedChatId:J

    goto :goto_0

    .line 281
    :cond_0
    iget-wide v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->chatId:J

    .line 283
    :goto_0
    new-instance v2, Lcom/iMe/services/ServiceMessagesRemovingService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1}, Lcom/iMe/services/ServiceMessagesRemovingService$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/services/ServiceMessagesRemovingService;J)V

    invoke-direct {p0, v2}, Lcom/iMe/services/ServiceMessagesRemovingService;->runWithDelay(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final deleteMessages$lambda$9(Lcom/iMe/services/ServiceMessagesRemovingService;J)V
    .locals 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-nez v0, :cond_0

    const-string v0, "accountInstance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 285
    iget-object p0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->deletingServiceMessagesIds:Ljava/util/List;

    invoke-static {p0}, Lcom/iMe/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-long v5, p1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 284
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JZZ)V

    return-void
.end method

.method private final deleteNextServiceMessagesPart()V
    .locals 2

    .line 250
    sget-object v0, Lcom/iMe/services/ServiceMessagesRemovingService$State;->DELETING:Lcom/iMe/services/ServiceMessagesRemovingService$State;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/iMe/services/ServiceMessagesRemovingService;->updateNotification(ZLcom/iMe/services/ServiceMessagesRemovingService$State;)V

    .line 251
    iget-wide v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->chatId:J

    invoke-direct {p0, v0, v1}, Lcom/iMe/services/ServiceMessagesRemovingService;->deleteChatMessagesPartIfExist(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-wide v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->migratedChatId:J

    invoke-direct {p0, v0, v1}, Lcom/iMe/services/ServiceMessagesRemovingService;->deleteChatMessagesPartIfExist(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    sget v0, Lorg/telegram/messenger/R$string;->deleting_messages_success:I

    invoke-direct {p0, v0}, Lcom/iMe/services/ServiceMessagesRemovingService;->stopServiceWithToast(I)V

    :cond_0
    return-void
.end method

.method private final loadMessages()V
    .locals 3

    .line 198
    iget-boolean v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->useMigratedChatId:Z

    if-eqz v0, :cond_0

    .line 199
    iget-wide v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->migratedChatId:J

    goto :goto_0

    .line 201
    :cond_0
    iget-wide v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->chatId:J

    :goto_0
    neg-long v0, v0

    .line 203
    new-instance v2, Lcom/iMe/services/ServiceMessagesRemovingService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Lcom/iMe/services/ServiceMessagesRemovingService$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/services/ServiceMessagesRemovingService;J)V

    invoke-direct {p0, v2}, Lcom/iMe/services/ServiceMessagesRemovingService;->runWithDelay(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final loadMessages$lambda$3(Lcom/iMe/services/ServiceMessagesRemovingService;J)V
    .locals 22

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v1, v0, Lcom/iMe/services/ServiceMessagesRemovingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

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

    .line 209
    iget v9, v0, Lcom/iMe/services/ServiceMessagesRemovingService;->startLoadFromMessageId:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 213
    iget v13, v0, Lcom/iMe/services/ServiceMessagesRemovingService;->classGuid:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 217
    iget-wide v0, v0, Lcom/iMe/services/ServiceMessagesRemovingService;->topicId:J

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move/from16 v21, v3

    move-wide/from16 v3, p1

    move-wide/from16 v17, v0

    .line 204
    invoke-virtual/range {v2 .. v21}, Lorg/telegram/messenger/MessagesController;->loadMessages(JJZIIIZIIIIIJIIZ)V

    return-void
.end method

.method private final onAllMessagesLoaded()V
    .locals 10

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->isLoadingMessages:Z

    .line 227
    iget-object v1, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

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

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 229
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v5, :cond_2

    iget-wide v6, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->topicId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-nez v6, :cond_2

    :cond_1
    iget-boolean v6, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->isDeleteAllSelected:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->removingServiceMessagesTypes:Ljava/util/List;

    .line 230
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 229
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v4, v0

    :cond_3
    :goto_1
    if-eqz v4, :cond_0

    .line 857
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->serviceMessagesCount:I

    .line 1490
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1520
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1521
    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 235
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getChatId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 361
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 1522
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    :cond_5
    check-cast v6, Ljava/util/List;

    .line 236
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1523
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 442
    :cond_6
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 392
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1238
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1239
    check-cast v3, Ljava/util/Map$Entry;

    .line 392
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 238
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 1239
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 239
    :cond_7
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 227
    iput-object v1, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->serviceMessagesIdsByChatsIds:Ljava/util/Map;

    .line 240
    iget-wide v2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->chatId:J

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
    move v1, v0

    goto :goto_5

    :cond_9
    :goto_4
    move v1, v4

    :goto_5
    if-eqz v1, :cond_d

    .line 241
    iget-object v1, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->serviceMessagesIdsByChatsIds:Ljava/util/Map;

    iget-wide v2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->migratedChatId:J

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
    move v0, v4

    :cond_b
    if-nez v0, :cond_c

    goto :goto_6

    .line 245
    :cond_c
    sget v0, Lorg/telegram/messenger/R$string;->no_service_messages:I

    invoke-direct {p0, v0}, Lcom/iMe/services/ServiceMessagesRemovingService;->stopServiceWithToast(I)V

    goto :goto_7

    .line 243
    :cond_d
    :goto_6
    invoke-direct {p0}, Lcom/iMe/services/ServiceMessagesRemovingService;->deleteNextServiceMessagesPart()V

    :goto_7
    return-void
.end method

.method private final onConnectionStateChanged()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

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

    .line 297
    sget-object v1, Lcom/iMe/services/ServiceMessagesRemovingService$State;->WAITING_FOR_NETWORK:Lcom/iMe/services/ServiceMessagesRemovingService$State;

    invoke-direct {p0, v0, v1}, Lcom/iMe/services/ServiceMessagesRemovingService;->updateNotification(ZLcom/iMe/services/ServiceMessagesRemovingService$State;)V

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

    .line 162
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/iMe/services/ServiceMessagesRemovingService;->onAllMessagesLoaded()V

    goto/16 :goto_5

    .line 165
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v1, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->minDate:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_4

    .line 166
    iget-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
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

    .line 166
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget v6, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->minDate:I

    if-le v5, v6, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    .line 857
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_3
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 167
    invoke-direct {p0}, Lcom/iMe/services/ServiceMessagesRemovingService;->onAllMessagesLoaded()V

    goto/16 :goto_5

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 170
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->startLoadFromMessageId:I

    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 172
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 173
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 174
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    if-eqz v1, :cond_5

    .line 175
    iput-boolean v3, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->useMigratedChatId:Z

    .line 176
    iget v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->migratedChatMaxMessageId:I

    iput v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->startLoadFromMessageId:I

    goto :goto_2

    .line 179
    :cond_5
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->isGroup:Z

    if-nez v0, :cond_6

    .line 180
    invoke-direct {p0}, Lcom/iMe/services/ServiceMessagesRemovingService;->onAllMessagesLoaded()V

    .line 183
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    .line 184
    iget-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 1726
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    move v2, v3

    goto :goto_4

    .line 1727
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

    .line 185
    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne v1, v4, :cond_a

    move v1, v3

    goto :goto_3

    :cond_a
    move v1, v2

    :goto_3
    if-nez v1, :cond_9

    :goto_4
    if-eqz v2, :cond_b

    .line 188
    invoke-direct {p0}, Lcom/iMe/services/ServiceMessagesRemovingService;->onAllMessagesLoaded()V

    .line 191
    :cond_b
    sget-object p1, Lcom/iMe/services/ServiceMessagesRemovingService$State;->LOADING:Lcom/iMe/services/ServiceMessagesRemovingService$State;

    invoke-direct {p0, v3, p1}, Lcom/iMe/services/ServiceMessagesRemovingService;->updateNotification(ZLcom/iMe/services/ServiceMessagesRemovingService$State;)V

    .line 192
    invoke-direct {p0}, Lcom/iMe/services/ServiceMessagesRemovingService;->loadMessages()V

    :goto_5
    return-void
.end method

.method private final resolveIntentExtras(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "migrated_chat_id"

    const-wide/16 v1, -0x1

    .line 133
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 132
    iput-wide v3, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->migratedChatId:J

    const-string v0, "chat_id"

    .line 134
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->chatId:J

    const-string v0, "topic_id"

    const-wide/16 v1, 0x0

    .line 135
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->topicId:J

    const-string v0, "migrated_chat_max_message_id"

    const/4 v1, -0x1

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 136
    iput v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->migratedChatMaxMessageId:I

    const-string v0, "is_group"

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->isGroup:Z

    const-string v0, "min_date"

    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->minDate:I

    const-string v0, "is_channel"

    .line 140
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "selected_filters_codes"

    .line 142
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 143
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/ServiceMessageType;->ALL:Lcom/iMe/fork/enums/ServiceMessageType;

    invoke-virtual {v2}, Lcom/iMe/fork/enums/ServiceMessageType;->getGroupCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->isDeleteAllSelected:Z

    goto :goto_1

    .line 1549
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Ljava/lang/Integer;

    .line 147
    sget-object v3, Lcom/iMe/fork/enums/ServiceMessageType;->Companion:Lcom/iMe/fork/enums/ServiceMessageType$Companion;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2, v0}, Lcom/iMe/fork/enums/ServiceMessageType$Companion;->getByCode(IZ)Lcom/iMe/fork/enums/ServiceMessageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/enums/ServiceMessageType;->getAction()Ljava/lang/Class;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_2
    iput-object v1, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->removingServiceMessagesTypes:Ljava/util/List;

    :goto_1
    return-void
.end method

.method private final runWithDelay(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 336
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final stopServiceWithToast(I)V
    .locals 1

    .line 331
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getInternalString(res)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private final updateNotification(ZLcom/iMe/services/ServiceMessagesRemovingService$State;)V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    sget-object v0, Lcom/iMe/services/ServiceMessagesRemovingService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    .line 317
    sget p2, Lorg/telegram/messenger/R$string;->WaitingForNetwork:I

    const-string v0, "WaitingForNetwork"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 312
    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->deleting_messages:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 313
    iget v3, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->deletedMessagesCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 314
    iget v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->serviceMessagesCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 311
    invoke-static {p2, v2}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 307
    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->loading_messages:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 308
    iget-object v2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 306
    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v0, :cond_3

    .line 320
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 321
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_3

    .line 324
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 325
    iget p2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->notificationChannelId:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<*>"

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    if-ne p1, p2, :cond_2

    const/16 p1, 0xa

    .line 79
    aget-object p1, p3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 80
    iget-boolean p2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->isLoadingMessages:Z

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->classGuid:I

    if-ne p1, p2, :cond_8

    const/4 p1, 0x2

    .line 81
    aget-object p1, p3, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 800
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 809
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

    .line 81
    :cond_1
    invoke-direct {p0, p2}, Lcom/iMe/services/ServiceMessagesRemovingService;->onNewMessagesPartLoaded(Ljava/util/List;)V

    goto/16 :goto_2

    .line 85
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    const/4 v2, 0x0

    if-ne p1, p2, :cond_6

    .line 86
    aget-object p1, p3, v2

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    .line 800
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 809
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

    .line 87
    aget-object p1, p3, p1

    const-string p3, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 88
    iget-boolean p1, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->isLoadingMessages:Z

    if-nez p1, :cond_8

    .line 89
    iget-wide v2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->chatId:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    iget-wide v2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->migratedChatId:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_8

    .line 90
    :cond_5
    iget-object p1, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->deletingServiceMessagesIds:Ljava/util/List;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 92
    invoke-direct {p0}, Lcom/iMe/services/ServiceMessagesRemovingService;->deleteNextServiceMessagesPart()V

    goto :goto_2

    .line 96
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->loadingMessagesFailed:I

    if-ne p1, p2, :cond_7

    .line 97
    aget-object p1, p3, v2

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 98
    iget-boolean p2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->isLoadingMessages:Z

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->classGuid:I

    if-ne p1, p2, :cond_8

    .line 99
    sget p1, Lorg/telegram/messenger/R$string;->loading_messages_error:I

    invoke-direct {p0, p1}, Lcom/iMe/services/ServiceMessagesRemovingService;->stopServiceWithToast(I)V

    goto :goto_2

    .line 103
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p2, :cond_8

    invoke-direct {p0}, Lcom/iMe/services/ServiceMessagesRemovingService;->onConnectionStateChanged()V

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

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 71
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->classGuid:I

    .line 72
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    const-string v1, "getInstance(UserConfig.selectedAccount)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-nez v0, :cond_0

    const-string v0, "accountInstance"

    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 110
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    .line 112
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 113
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    .line 114
    iget v2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->notificationChannelId:I

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 115
    iget-object v1, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-nez v1, :cond_0

    const-string v1, "accountInstance"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/iMe/services/ServiceMessagesRemovingService;->resolveIntentExtras(Landroid/content/Intent;)V

    .line 120
    invoke-direct {p0}, Lcom/iMe/services/ServiceMessagesRemovingService;->buildNotification()V

    .line 121
    invoke-direct {p0}, Lcom/iMe/services/ServiceMessagesRemovingService;->loadMessages()V

    .line 122
    sget-object p1, Lcom/iMe/services/ServiceMessagesRemovingService$State;->LOADING:Lcom/iMe/services/ServiceMessagesRemovingService$State;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/iMe/services/ServiceMessagesRemovingService;->updateNotification(ZLcom/iMe/services/ServiceMessagesRemovingService$State;)V

    .line 123
    iget p1, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->notificationChannelId:I

    iget-object p2, p0, Lcom/iMe/services/ServiceMessagesRemovingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 p1, 0x2

    return p1
.end method
