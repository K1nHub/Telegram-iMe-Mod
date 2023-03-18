.class public final Lcom/smedialink/services/FilteredChatParticipantsProcessingService;
.super Landroid/app/Service;
.source "FilteredChatParticipantsProcessingService.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/services/FilteredChatParticipantsProcessingService$Companion;,
        Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;,
        Lcom/smedialink/services/FilteredChatParticipantsProcessingService$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilteredChatParticipantsProcessingService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilteredChatParticipantsProcessingService.kt\ncom/smedialink/services/FilteredChatParticipantsProcessingService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,292:1\n1603#2,9:293\n1855#2:302\n1856#2:304\n1612#2:305\n1#3:303\n*S KotlinDebug\n*F\n+ 1 FilteredChatParticipantsProcessingService.kt\ncom/smedialink/services/FilteredChatParticipantsProcessingService\n*L\n145#1:293,9\n145#1:302\n145#1:304\n145#1:305\n145#1:303\n*E\n"
.end annotation


# instance fields
.field private builder:Landroidx/core/app/NotificationCompat$Builder;

.field private final chat$delegate:Lkotlin/Lazy;

.field private final chatFull$delegate:Lkotlin/Lazy;

.field private chatId:J

.field private classGuid:I

.field private connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

.field private isWaitingForNetwork:Z

.field private messagesController:Lorg/telegram/messenger/MessagesController;

.field private notificationCenter:Lorg/telegram/messenger/NotificationCenter;

.field private final notificationChannelId:I

.field private final notifications:[I

.field private final participants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private participantsActionType:Lorg/fork/enums/ParticipantsActionType;

.field private participantsFilter:Lcom/smedialink/model/group/GroupMembersFilter;

.field private processedParticipantsCount:I

.field private processingParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;


# direct methods
.method public static synthetic $r8$lambda$Hev2Xqa5-VHvA5MtA2Xltftk1T0(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->loadParticipants$lambda$1(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UeMWCfvkqtB6R01jtKzJ-3BM_7Y(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->onParticipantsPartLoaded$lambda$3(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eac_4IbHzSli-ZkF4y_YqewY4Co(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processNextChatParticipantsPart$lambda$4(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    .line 31
    sget v0, Lcom/smedialink/common/IdFabric$ServiceNotifications;->chat_participants_processing:I

    iput v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->notificationChannelId:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 32
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->notifications:[I

    .line 33
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$chat$2;

    invoke-direct {v1, p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$chat$2;-><init>(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->chat$delegate:Lkotlin/Lazy;

    .line 36
    new-instance v1, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$chatFull$2;

    invoke-direct {v1, p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$chatFull$2;-><init>(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->chatFull$delegate:Lkotlin/Lazy;

    .line 49
    sget-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->defaultValue:Lcom/smedialink/model/group/GroupMembersFilter;

    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participantsFilter:Lcom/smedialink/model/group/GroupMembersFilter;

    .line 50
    sget-object v0, Lorg/fork/enums/ParticipantsActionType;->defaultValue:Lorg/fork/enums/ParticipantsActionType;

    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participantsActionType:Lorg/fork/enums/ParticipantsActionType;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$deleteParticipant(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->deleteParticipant()V

    return-void
.end method

.method public static final synthetic access$getChatId$p(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->chatId:J

    return-wide v0
.end method

.method public static final synthetic access$getMessagesController$p(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)Lorg/telegram/messenger/MessagesController;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

    return-object p0
.end method

.method public static final synthetic access$returnParticipant(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->returnParticipant()V

    return-void
.end method

.method public static final synthetic access$unblockParticipant(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->unblockParticipant()V

    return-void
.end method

.method private final buildNotification()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/smedialink/services/utils/ServiceNotificationsUtils;->INSTANCE:Lcom/smedialink/services/utils/ServiceNotificationsUtils;

    .line 118
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    const-class v2, Lcom/smedialink/services/receivers/StopFilteredChatParticipantsProcessingReceiver;

    const-string v3, "iMe_FilteredChatParticipantsProcessingChannel"

    .line 116
    invoke-virtual {v0, v3, v1, v2}, Lcom/smedialink/services/utils/ServiceNotificationsUtils;->createCancellableNotification(Ljava/lang/String;ILjava/lang/Class;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method private final deleteParticipant()V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

    if-nez v0, :cond_0

    const-string v0, "messagesController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 201
    :cond_0
    iget-wide v1, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->chatId:J

    .line 202
    iget-object v3, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method private final getChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->chat$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-chat>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method private final loadParticipants()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 126
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 127
    iget-object v2, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

    if-nez v2, :cond_0

    const-string v2, "messagesController"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_0
    iget-wide v3, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->chatId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 128
    iget-object v2, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participantsFilter:Lcom/smedialink/model/group/GroupMembersFilter;

    invoke-virtual {v2}, Lcom/smedialink/model/group/GroupMembersFilter;->getServerFilter()Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    const-string v3, ""

    .line 129
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    const/16 v2, 0xc8

    .line 130
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 126
    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

    const-string v2, "connectionsManager"

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v3, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    new-instance v4, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 141
    iget-object v3, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    iget v2, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private static final loadParticipants$lambda$1(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 136
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    const-string p2, "response as TL_channels_\u2026articipants).participants"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->onParticipantsPartLoaded(Ljava/util/List;)V

    goto :goto_0

    .line 138
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->loading_participants_error:I

    invoke-direct {p0, p1}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->stopServiceWithToast(I)V

    :goto_0
    return-void
.end method

.method private final onAllParticipantsLoaded()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participantsFilter:Lcom/smedialink/model/group/GroupMembersFilter;

    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->DELETED:Lcom/smedialink/model/group/GroupMembersFilter;

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    sget-object v1, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$onAllParticipantsLoaded$1;->INSTANCE:Lcom/smedialink/services/FilteredChatParticipantsProcessingService$onAllParticipantsLoaded$1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processNextChatParticipantsPart()V

    return-void
.end method

.method private final onConnectionStateChanged()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

    if-nez v0, :cond_0

    const-string v0, "connectionsManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->isWaitingForNetwork:Z

    if-eqz v0, :cond_2

    .line 231
    sget-object v0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;->WAITING_FOR_NETWORK:Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;

    invoke-direct {p0, v2, v0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->updateNotification(ZLcom/smedialink/services/FilteredChatParticipantsProcessingService$State;)V

    :cond_2
    return-void
.end method

.method private final onParticipantsPartLoaded(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$ChannelParticipant;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    .line 1603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1611
    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 146
    iget-object v4, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

    if-nez v4, :cond_1

    const-string v4, "messagesController"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_1
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1611
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_2
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_3

    .line 149
    invoke-direct {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->onAllParticipantsLoaded()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 151
    sget-object v0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;->LOADING:Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;

    invoke-direct {p0, p1, v0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->updateNotification(ZLcom/smedialink/services/FilteredChatParticipantsProcessingService$State;)V

    .line 152
    new-instance p1, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V

    invoke-direct {p0, p1}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->runWithDelay(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private static final onParticipantsPartLoaded$lambda$3(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->loadParticipants()V

    return-void
.end method

.method private final processNextChatParticipantsPart()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V

    invoke-direct {p0, v0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->runWithDelay(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 185
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->processing_participants_success:I

    invoke-direct {p0, v0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->stopServiceWithToast(I)V

    :goto_0
    return-void
.end method

.method private static final processNextChatParticipantsPart$lambda$4(Lcom/smedialink/services/FilteredChatParticipantsProcessingService;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;->DELETING:Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->updateNotification(ZLcom/smedialink/services/FilteredChatParticipantsProcessingService$State;)V

    .line 169
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 170
    iget-object v2, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    const/16 v3, 0x64

    .line 171
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v0, v3

    .line 170
    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    .line 174
    iget v2, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processedParticipantsCount:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processedParticipantsCount:I

    .line 176
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participantsActionType:Lorg/fork/enums/ParticipantsActionType;

    sget-object v2, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 179
    new-instance v0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$3;

    invoke-direct {v0, p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$3;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 178
    :cond_1
    new-instance v0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$2;

    invoke-direct {v0, p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$2;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 177
    :cond_2
    new-instance v0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$1;

    invoke-direct {v0, p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$1;-><init>(Ljava/lang/Object;)V

    .line 175
    :goto_0
    invoke-direct {p0, v0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processParticipantsPartBySingleRequests(Lkotlin/jvm/functions/Function0;)V

    .line 182
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    iget-object p0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final processParticipantsPartBySingleRequests(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 190
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 191
    iget-boolean v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->isWaitingForNetwork:Z

    if-nez v0, :cond_0

    .line 192
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processNextChatParticipantsPart()V

    return-void
.end method

.method private final resolveIntentExtras(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "chat_id"

    const-wide/16 v1, -0x1

    .line 99
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->chatId:J

    const-string v0, "selected_filter_name"

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lcom/smedialink/model/group/GroupMembersFilter;->defaultValue:Lcom/smedialink/model/group/GroupMembersFilter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "intent.getStringExtra(EX\u2026sFilter.defaultValue.name"

    .line 101
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {v0}, Lcom/smedialink/model/group/GroupMembersFilter;->valueOf(Ljava/lang/String;)Lcom/smedialink/model/group/GroupMembersFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participantsFilter:Lcom/smedialink/model/group/GroupMembersFilter;

    .line 104
    sget-object v1, Lcom/smedialink/model/group/GroupMembersFilter;->DELETED:Lcom/smedialink/model/group/GroupMembersFilter;

    if-ne v0, v1, :cond_1

    .line 105
    sget-object p1, Lorg/fork/enums/ParticipantsActionType;->DELETE:Lorg/fork/enums/ParticipantsActionType;

    goto :goto_0

    :cond_1
    const-string v0, "selected_participant_action"

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 109
    sget-object p1, Lorg/fork/enums/ParticipantsActionType;->defaultValue:Lorg/fork/enums/ParticipantsActionType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v0, "intent.getStringExtra(EX\u2026ionType.defaultValue.name"

    .line 108
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Lorg/fork/enums/ParticipantsActionType;->valueOf(Ljava/lang/String;)Lorg/fork/enums/ParticipantsActionType;

    move-result-object p1

    .line 104
    :goto_0
    iput-object p1, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participantsActionType:Lorg/fork/enums/ParticipantsActionType;

    return-void
.end method

.method private final returnParticipant()V
    .locals 9

    .line 218
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

    if-nez v0, :cond_0

    const-string v0, "messagesController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    .line 219
    iget-wide v2, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->chatId:J

    .line 220
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 218
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final runWithDelay(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 268
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final stopServiceWithToast(I)V
    .locals 1

    .line 263
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getInternalString(res)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private final unblockParticipant()V
    .locals 9

    .line 207
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

    if-nez v0, :cond_0

    const-string v0, "messagesController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    .line 208
    iget-wide v2, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->chatId:J

    .line 209
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 210
    invoke-direct {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 211
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    .line 212
    invoke-direct {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$Chat;->isChannel()Z

    move-result v7

    const/4 v8, 0x0

    .line 207
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->setParticipantBannedRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private final updateNotification(ZLcom/smedialink/services/FilteredChatParticipantsProcessingService$State;)V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    sget-object v0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    .line 249
    sget p2, Lorg/telegram/messenger/R$string;->WaitingForNetwork:I

    const-string v0, "WaitingForNetwork"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 245
    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->processing_participants:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 246
    iget v3, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->processedParticipantsCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 247
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 244
    invoke-static {p2, v2}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 241
    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->loading_participants:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 242
    iget-object v2, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 240
    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v0, :cond_3

    .line 252
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 253
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_3

    .line 256
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 257
    iget p2, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->notificationChannelId:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->onConnectionStateChanged()V

    :cond_0
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

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->classGuid:I

    .line 60
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const-string v1, "getInstance(UserConfig.selectedAccount)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

    .line 61
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

    .line 62
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    if-nez v0, :cond_0

    const-string v0, "notificationCenter"

    .line 64
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 76
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    .line 78
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 80
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    .line 81
    iget v2, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->notificationChannelId:I

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 82
    iget-object v1, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    if-nez v1, :cond_0

    const-string v1, "notificationCenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->resolveIntentExtras(Landroid/content/Intent;)V

    .line 87
    invoke-direct {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->buildNotification()V

    .line 88
    invoke-direct {p0}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->loadParticipants()V

    .line 89
    sget-object p1, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;->LOADING:Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->updateNotification(ZLcom/smedialink/services/FilteredChatParticipantsProcessingService$State;)V

    .line 90
    iget p1, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->notificationChannelId:I

    iget-object p2, p0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 p1, 0x2

    return p1
.end method
