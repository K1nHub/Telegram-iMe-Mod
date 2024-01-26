.class public final Lcom/iMe/services/FilteredChatParticipantsProcessingService;
.super Landroid/app/Service;
.source "FilteredChatParticipantsProcessingService.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/services/FilteredChatParticipantsProcessingService$Companion;,
        Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;,
        Lcom/iMe/services/FilteredChatParticipantsProcessingService$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilteredChatParticipantsProcessingService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilteredChatParticipantsProcessingService.kt\ncom/iMe/services/FilteredChatParticipantsProcessingService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,308:1\n1603#2,9:309\n1855#2:318\n1856#2:320\n1612#2:321\n1#3:319\n*S KotlinDebug\n*F\n+ 1 FilteredChatParticipantsProcessingService.kt\ncom/iMe/services/FilteredChatParticipantsProcessingService\n*L\n157#1:309,9\n157#1:318\n157#1:320\n157#1:321\n157#1:319\n*E\n"
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

.field private participantsActionType:Lcom/iMe/fork/enums/ParticipantsActionType;

.field private participantsFilter:Lcom/iMe/model/group/GroupMembersFilter;

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
.method public static synthetic $r8$lambda$AKC-bN_qI8-s5Rndu72eAIajm8Q(Lcom/iMe/services/FilteredChatParticipantsProcessingService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->loadParticipants$lambda$1(Lcom/iMe/services/FilteredChatParticipantsProcessingService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nf3cgQiE26G3YuxhVq2sdEP1KuE(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processNextChatParticipantsPart$lambda$4(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k5_Yyk1clDoWSbyQtX2ZuGP0dYM(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->onParticipantsPartLoaded$lambda$3(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    .line 43
    sget v0, Lcom/iMe/common/IdFabric$ServiceNotifications;->CHAT_PARTICIPANTS_PROCESSING:I

    iput v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->notificationChannelId:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 44
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->notifications:[I

    .line 45
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/iMe/services/FilteredChatParticipantsProcessingService$chat$2;

    invoke-direct {v1, p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$chat$2;-><init>(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->chat$delegate:Lkotlin/Lazy;

    .line 48
    new-instance v1, Lcom/iMe/services/FilteredChatParticipantsProcessingService$chatFull$2;

    invoke-direct {v1, p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$chatFull$2;-><init>(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->chatFull$delegate:Lkotlin/Lazy;

    .line 61
    sget-object v0, Lcom/iMe/model/group/GroupMembersFilter;->defaultValue:Lcom/iMe/model/group/GroupMembersFilter;

    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participantsFilter:Lcom/iMe/model/group/GroupMembersFilter;

    .line 62
    sget-object v0, Lcom/iMe/fork/enums/ParticipantsActionType;->defaultValue:Lcom/iMe/fork/enums/ParticipantsActionType;

    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participantsActionType:Lcom/iMe/fork/enums/ParticipantsActionType;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$deleteParticipant(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->deleteParticipant()V

    return-void
.end method

.method public static final synthetic access$getChatId$p(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->chatId:J

    return-wide v0
.end method

.method public static final synthetic access$getMessagesController$p(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)Lorg/telegram/messenger/MessagesController;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

    return-object p0
.end method

.method public static final synthetic access$returnParticipant(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->returnParticipant()V

    return-void
.end method

.method public static final synthetic access$unblockParticipant(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->unblockParticipant()V

    return-void
.end method

.method private final buildNotification()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/iMe/services/utils/ServiceNotificationsUtils;->INSTANCE:Lcom/iMe/services/utils/ServiceNotificationsUtils;

    .line 130
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    const-class v2, Lcom/iMe/services/receivers/StopFilteredChatParticipantsProcessingReceiver;

    const-string v3, "iMe_FilteredChatParticipantsProcessingChannel"

    .line 128
    invoke-virtual {v0, v3, v1, v2}, Lcom/iMe/services/utils/ServiceNotificationsUtils;->createCancellableNotification(Ljava/lang/String;ILjava/lang/Class;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method private final deleteParticipant()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

    if-nez v0, :cond_0

    const-string v0, "messagesController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 213
    :cond_0
    iget-wide v1, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->chatId:J

    .line 214
    iget-object v3, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 212
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method private final getChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->chat$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-chat>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method private final loadParticipants()V
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 139
    iget-object v2, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

    if-nez v2, :cond_0

    const-string v2, "messagesController"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_0
    iget-wide v3, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->chatId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 140
    iget-object v2, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participantsFilter:Lcom/iMe/model/group/GroupMembersFilter;

    invoke-virtual {v2}, Lcom/iMe/model/group/GroupMembersFilter;->getServerFilter()Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    const-string v3, ""

    .line 141
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    const/16 v2, 0xc8

    .line 142
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 138
    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

    const-string v2, "connectionsManager"

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v3, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->req:Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    new-instance v4, Lcom/iMe/services/FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 153
    iget-object v3, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    iget v2, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private static final loadParticipants$lambda$1(Lcom/iMe/services/FilteredChatParticipantsProcessingService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 148
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    const-string p2, "response as TL_channels_\u2026articipants).participants"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->onParticipantsPartLoaded(Ljava/util/List;)V

    goto :goto_0

    .line 150
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->loading_participants_error:I

    invoke-direct {p0, p1}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->stopServiceWithToast(I)V

    :goto_0
    return-void
.end method

.method private final onAllParticipantsLoaded()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participantsFilter:Lcom/iMe/model/group/GroupMembersFilter;

    sget-object v1, Lcom/iMe/model/group/GroupMembersFilter;->DELETED:Lcom/iMe/model/group/GroupMembersFilter;

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    sget-object v1, Lcom/iMe/services/FilteredChatParticipantsProcessingService$onAllParticipantsLoaded$1;->INSTANCE:Lcom/iMe/services/FilteredChatParticipantsProcessingService$onAllParticipantsLoaded$1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processNextChatParticipantsPart()V

    return-void
.end method

.method private final onConnectionStateChanged()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

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

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 241
    :goto_0
    iput-boolean v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->isWaitingForNetwork:Z

    if-eqz v0, :cond_2

    .line 244
    sget-object v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->WAITING_FOR_NETWORK:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    invoke-direct {p0, v2, v0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->updateNotification(ZLcom/iMe/services/FilteredChatParticipantsProcessingService$State;)V

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

    .line 157
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

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

    .line 158
    iget-object v4, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

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

    .line 157
    :cond_2
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_3

    .line 161
    invoke-direct {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->onAllParticipantsLoaded()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 163
    sget-object v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->LOADING:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    invoke-direct {p0, p1, v0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->updateNotification(ZLcom/iMe/services/FilteredChatParticipantsProcessingService$State;)V

    .line 164
    new-instance p1, Lcom/iMe/services/FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V

    invoke-direct {p0, p1}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->runWithDelay(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private static final onParticipantsPartLoaded$lambda$3(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->loadParticipants()V

    return-void
.end method

.method private final processNextChatParticipantsPart()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V

    invoke-direct {p0, v0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->runWithDelay(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 197
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->processing_participants_success:I

    invoke-direct {p0, v0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->stopServiceWithToast(I)V

    :goto_0
    return-void
.end method

.method private static final processNextChatParticipantsPart$lambda$4(Lcom/iMe/services/FilteredChatParticipantsProcessingService;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->DELETING:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->updateNotification(ZLcom/iMe/services/FilteredChatParticipantsProcessingService$State;)V

    .line 181
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 182
    iget-object v2, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    const/16 v3, 0x64

    .line 183
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v0, v3

    .line 182
    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    .line 186
    iget v2, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processedParticipantsCount:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processedParticipantsCount:I

    .line 188
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participantsActionType:Lcom/iMe/fork/enums/ParticipantsActionType;

    sget-object v2, Lcom/iMe/services/FilteredChatParticipantsProcessingService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 191
    new-instance v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$3;

    invoke-direct {v0, p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$3;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 190
    :cond_1
    new-instance v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$2;

    invoke-direct {v0, p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$2;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    :cond_2
    new-instance v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$1;

    invoke-direct {v0, p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$processNextChatParticipantsPart$1$1;-><init>(Ljava/lang/Object;)V

    .line 187
    :goto_0
    invoke-direct {p0, v0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processParticipantsPartBySingleRequests(Lkotlin/jvm/functions/Function0;)V

    .line 194
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    iget-object p0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

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

    .line 202
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 203
    iget-boolean v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->isWaitingForNetwork:Z

    if-nez v0, :cond_0

    .line 204
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processNextChatParticipantsPart()V

    return-void
.end method

.method private final resolveIntentExtras(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "chat_id"

    const-wide/16 v1, -0x1

    .line 111
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->chatId:J

    const-string v0, "selected_filter_name"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Lcom/iMe/model/group/GroupMembersFilter;->defaultValue:Lcom/iMe/model/group/GroupMembersFilter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "intent.getStringExtra(EX\u2026sFilter.defaultValue.name"

    .line 113
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {v0}, Lcom/iMe/model/group/GroupMembersFilter;->valueOf(Ljava/lang/String;)Lcom/iMe/model/group/GroupMembersFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participantsFilter:Lcom/iMe/model/group/GroupMembersFilter;

    .line 116
    sget-object v1, Lcom/iMe/model/group/GroupMembersFilter;->DELETED:Lcom/iMe/model/group/GroupMembersFilter;

    if-ne v0, v1, :cond_1

    .line 117
    sget-object p1, Lcom/iMe/fork/enums/ParticipantsActionType;->DELETE:Lcom/iMe/fork/enums/ParticipantsActionType;

    goto :goto_0

    :cond_1
    const-string v0, "selected_participant_action"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 121
    sget-object p1, Lcom/iMe/fork/enums/ParticipantsActionType;->defaultValue:Lcom/iMe/fork/enums/ParticipantsActionType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v0, "intent.getStringExtra(EX\u2026ionType.defaultValue.name"

    .line 120
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Lcom/iMe/fork/enums/ParticipantsActionType;->valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/ParticipantsActionType;

    move-result-object p1

    .line 116
    :goto_0
    iput-object p1, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participantsActionType:Lcom/iMe/fork/enums/ParticipantsActionType;

    return-void
.end method

.method private final returnParticipant()V
    .locals 9

    .line 230
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

    if-nez v0, :cond_0

    const-string v0, "messagesController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    .line 231
    iget-wide v2, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->chatId:J

    .line 232
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 230
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method private final runWithDelay(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 283
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final stopServiceWithToast(I)V
    .locals 1

    .line 278
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getInternalString(res)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private final unblockParticipant()V
    .locals 9

    .line 219
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

    if-nez v0, :cond_0

    const-string v0, "messagesController"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, v0

    .line 220
    iget-wide v2, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->chatId:J

    .line 221
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processingParticipants:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 222
    invoke-direct {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 223
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    .line 224
    invoke-direct {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$Chat;->isChannel()Z

    move-result v7

    const/4 v8, 0x0

    .line 219
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->setParticipantBannedRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method private final updateNotification(ZLcom/iMe/services/FilteredChatParticipantsProcessingService$State;)V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    sget-object v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    .line 264
    sget p2, Lorg/telegram/messenger/R$string;->WaitingForNetwork:I

    const-string v0, "WaitingForNetwork"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 259
    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->processing_participants:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 260
    iget v3, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->processedParticipantsCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 261
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 258
    invoke-static {p2, v2}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 254
    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->loading_participants:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 255
    iget-object v2, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->participants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 253
    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v0, :cond_3

    .line 267
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 268
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_3

    .line 271
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 272
    iget p2, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->notificationChannelId:I

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

    .line 81
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->onConnectionStateChanged()V

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

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 71
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->classGuid:I

    .line 72
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const-string v1, "getInstance(UserConfig.selectedAccount)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->connectionsManager:Lorg/telegram/tgnet/ConnectionsManager;

    .line 73
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->messagesController:Lorg/telegram/messenger/MessagesController;

    .line 74
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    if-nez v0, :cond_0

    const-string v0, "notificationCenter"

    .line 76
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    .line 90
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 92
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    .line 93
    iget v2, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->notificationChannelId:I

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 94
    iget-object v1, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    if-nez v1, :cond_0

    const-string v1, "notificationCenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->resolveIntentExtras(Landroid/content/Intent;)V

    .line 99
    invoke-direct {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->buildNotification()V

    .line 100
    invoke-direct {p0}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->loadParticipants()V

    .line 101
    sget-object p1, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->LOADING:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->updateNotification(ZLcom/iMe/services/FilteredChatParticipantsProcessingService$State;)V

    .line 102
    iget p1, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->notificationChannelId:I

    iget-object p2, p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 p1, 0x2

    return p1
.end method
