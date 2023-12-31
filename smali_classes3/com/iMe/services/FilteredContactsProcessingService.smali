.class public final Lcom/iMe/services/FilteredContactsProcessingService;
.super Landroid/app/Service;
.source "FilteredContactsProcessingService.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/services/FilteredContactsProcessingService$Companion;,
        Lcom/iMe/services/FilteredContactsProcessingService$State;,
        Lcom/iMe/services/FilteredContactsProcessingService$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilteredContactsProcessingService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilteredContactsProcessingService.kt\ncom/iMe/services/FilteredContactsProcessingService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,215:1\n1549#2:216\n1620#2,3:217\n*S KotlinDebug\n*F\n+ 1 FilteredContactsProcessingService.kt\ncom/iMe/services/FilteredContactsProcessingService\n*L\n142#1:216\n142#1:217,3\n*E\n"
.end annotation


# instance fields
.field private accountInstance:Lorg/telegram/messenger/AccountInstance;

.field private builder:Landroidx/core/app/NotificationCompat$Builder;

.field private contactsActionType:Lcom/iMe/fork/enums/ContactsActionType;

.field private contactsFilter:Lcom/iMe/model/contacts/ContactsFilter;

.field private final contactsIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isWaitingForNetwork:Z

.field private final notificationChannelId:I

.field private final notifications:[I

.field private processedContactsCount:I

.field private processingContactsIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6VxEZUa95cdSQfIcqVOimwS_-TQ(Lcom/iMe/services/FilteredContactsProcessingService;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/services/FilteredContactsProcessingService;->deleteContactsPart$lambda$2(Lcom/iMe/services/FilteredContactsProcessingService;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lLPRmkyUWGhnLucRI6VaBy6QOiY(Lcom/iMe/services/FilteredContactsProcessingService;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/services/FilteredContactsProcessingService;->processNextContactsPart$lambda$0(Lcom/iMe/services/FilteredContactsProcessingService;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/services/FilteredContactsProcessingService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/services/FilteredContactsProcessingService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->contactsIds:Ljava/util/List;

    .line 32
    sget v0, Lcom/iMe/common/IdFabric$ServiceNotifications;->CONTACTS_PROCESSING:I

    iput v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->notificationChannelId:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 33
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->notifications:[I

    .line 40
    sget-object v0, Lcom/iMe/model/contacts/ContactsFilter;->BLOCKED:Lcom/iMe/model/contacts/ContactsFilter;

    iput-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->contactsFilter:Lcom/iMe/model/contacts/ContactsFilter;

    .line 41
    sget-object v0, Lcom/iMe/fork/enums/ContactsActionType;->defaultValue:Lcom/iMe/fork/enums/ContactsActionType;

    iput-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->contactsActionType:Lcom/iMe/fork/enums/ContactsActionType;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->processingContactsIds:Ljava/util/List;

    return-void
.end method

.method private final buildNotification()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/iMe/services/utils/ServiceNotificationsUtils;->INSTANCE:Lcom/iMe/services/utils/ServiceNotificationsUtils;

    .line 103
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_contacts_24:I

    const-class v2, Lcom/iMe/services/receivers/StopFilteredChatParticipantsProcessingReceiver;

    const-string v3, "iMe_ContactsProcessingChannel"

    .line 101
    invoke-virtual {v0, v3, v1, v2}, Lcom/iMe/services/utils/ServiceNotificationsUtils;->createCancellableNotification(Ljava/lang/String;ILjava/lang/Class;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method private final deleteContactsPart()V
    .locals 8

    .line 141
    iget-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    const/4 v1, 0x0

    const-string v2, "accountInstance"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    .line 142
    iget-object v3, p0, Lcom/iMe/services/FilteredContactsProcessingService;->processingContactsIds:Ljava/util/List;

    .line 1549
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 142
    iget-object v7, p0, Lcom/iMe/services/FilteredContactsProcessingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-nez v7, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v1

    :cond_1
    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 1621
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_2
    invoke-static {v4}, Lcom/iMe/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 141
    new-instance v3, Lcom/iMe/services/FilteredContactsProcessingService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/iMe/services/FilteredContactsProcessingService$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/services/FilteredContactsProcessingService;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private static final deleteContactsPart$lambda$2(Lcom/iMe/services/FilteredContactsProcessingService;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/iMe/services/FilteredContactsProcessingService;->processNextContactsPart()V

    goto :goto_0

    .line 149
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->contacts_processing_error:I

    invoke-direct {p0, p1}, Lcom/iMe/services/FilteredContactsProcessingService;->stopServiceWithToast(I)V

    :goto_0
    return-void
.end method

.method private final onConnectionStateChanged()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

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

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 155
    :goto_0
    iput-boolean v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->isWaitingForNetwork:Z

    if-eqz v0, :cond_2

    .line 158
    sget-object v0, Lcom/iMe/services/FilteredContactsProcessingService$State;->WAITING_FOR_NETWORK:Lcom/iMe/services/FilteredContactsProcessingService$State;

    invoke-direct {p0, v2, v0}, Lcom/iMe/services/FilteredContactsProcessingService;->updateNotification(ZLcom/iMe/services/FilteredContactsProcessingService$State;)V

    :cond_2
    return-void
.end method

.method private final processNextContactsPart()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->contactsIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Lcom/iMe/services/FilteredContactsProcessingService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/iMe/services/FilteredContactsProcessingService$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/services/FilteredContactsProcessingService;)V

    invoke-direct {p0, v0}, Lcom/iMe/services/FilteredContactsProcessingService;->runWithDelay(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 126
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->contacts_processing_success:I

    invoke-direct {p0, v0}, Lcom/iMe/services/FilteredContactsProcessingService;->stopServiceWithToast(I)V

    :goto_0
    return-void
.end method

.method private static final processNextContactsPart$lambda$0(Lcom/iMe/services/FilteredContactsProcessingService;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/iMe/services/FilteredContactsProcessingService$State;->DELETING:Lcom/iMe/services/FilteredContactsProcessingService$State;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/iMe/services/FilteredContactsProcessingService;->updateNotification(ZLcom/iMe/services/FilteredContactsProcessingService$State;)V

    .line 113
    iget-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->contactsIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 114
    iget-object v2, p0, Lcom/iMe/services/FilteredContactsProcessingService;->contactsIds:Ljava/util/List;

    const/16 v3, 0x64

    .line 115
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v0, v3

    .line 114
    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->processingContactsIds:Ljava/util/List;

    .line 118
    iget v2, p0, Lcom/iMe/services/FilteredContactsProcessingService;->processedContactsCount:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/iMe/services/FilteredContactsProcessingService;->processedContactsCount:I

    .line 119
    iget-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->contactsActionType:Lcom/iMe/fork/enums/ContactsActionType;

    sget-object v2, Lcom/iMe/services/FilteredContactsProcessingService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/iMe/services/FilteredContactsProcessingService;->unblockContactsPart()V

    goto :goto_0

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/iMe/services/FilteredContactsProcessingService;->deleteContactsPart()V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->contactsIds:Ljava/util/List;

    iget-object p0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->processingContactsIds:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final resolveIntentExtras(Landroid/content/Intent;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->contactsIds:Ljava/util/List;

    const-string v1, "contacts_ids"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toMutableList([J)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    sget-object v0, Lcom/iMe/model/contacts/ContactsFilter;->Companion:Lcom/iMe/model/contacts/ContactsFilter$Companion;

    const-string v1, "selected_filter_name"

    .line 87
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->BLOCKED:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_2
    invoke-virtual {v0, v1}, Lcom/iMe/model/contacts/ContactsFilter$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->contactsFilter:Lcom/iMe/model/contacts/ContactsFilter;

    .line 89
    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->NOT_MUTUAL:Lcom/iMe/model/contacts/ContactsFilter;

    if-ne v0, v1, :cond_3

    .line 90
    sget-object p1, Lcom/iMe/fork/enums/ContactsActionType;->DELETE:Lcom/iMe/fork/enums/ContactsActionType;

    goto :goto_1

    :cond_3
    const-string v0, "selected_contacts_action_name"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 94
    sget-object p1, Lcom/iMe/fork/enums/ContactsActionType;->defaultValue:Lcom/iMe/fork/enums/ContactsActionType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    :cond_4
    const-string v0, "intent.getStringExtra(EX\u2026ionType.defaultValue.name"

    .line 93
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {p1}, Lcom/iMe/fork/enums/ContactsActionType;->valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/ContactsActionType;

    move-result-object p1

    .line 89
    :goto_1
    iput-object p1, p0, Lcom/iMe/services/FilteredContactsProcessingService;->contactsActionType:Lcom/iMe/fork/enums/ContactsActionType;

    return-void
.end method

.method private final runWithDelay(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 192
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final stopServiceWithToast(I)V
    .locals 1

    .line 187
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getInternalString(res)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private final unblockContactsPart()V
    .locals 3

    .line 131
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->processingContactsIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 132
    iget-boolean v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->isWaitingForNetwork:Z

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-nez v0, :cond_1

    const-string v0, "accountInstance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/services/FilteredContactsProcessingService;->processingContactsIds:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->unblockPeer(J)V

    .line 134
    iget-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->processingContactsIds:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    :cond_2
    invoke-direct {p0}, Lcom/iMe/services/FilteredContactsProcessingService;->processNextContactsPart()V

    return-void
.end method

.method private final updateNotification(ZLcom/iMe/services/FilteredContactsProcessingService$State;)V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    sget-object v0, Lcom/iMe/services/FilteredContactsProcessingService$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 168
    sget p2, Lorg/telegram/messenger/R$string;->contacts_processing:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 169
    iget v3, p0, Lcom/iMe/services/FilteredContactsProcessingService;->processedContactsCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 170
    iget-object v2, p0, Lcom/iMe/services/FilteredContactsProcessingService;->contactsIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 167
    invoke-static {p2, v1}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 173
    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->WaitingForNetwork:I

    const-string v0, "WaitingForNetwork"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 177
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_2

    .line 180
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 181
    iget p2, p0, Lcom/iMe/services/FilteredContactsProcessingService;->notificationChannelId:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/iMe/services/FilteredContactsProcessingService;->onConnectionStateChanged()V

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

    .line 48
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 49
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    .line 50
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    const-string v1, "getInstance(UserConfig.selectedAccount)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-nez v0, :cond_0

    const-string v0, "accountInstance"

    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/services/FilteredContactsProcessingService;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 63
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/iMe/services/FilteredContactsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    .line 65
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 67
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    .line 68
    iget v2, p0, Lcom/iMe/services/FilteredContactsProcessingService;->notificationChannelId:I

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 69
    iget-object v1, p0, Lcom/iMe/services/FilteredContactsProcessingService;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    if-nez v1, :cond_0

    const-string v1, "accountInstance"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/services/FilteredContactsProcessingService;->notifications:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/iMe/services/FilteredContactsProcessingService;->resolveIntentExtras(Landroid/content/Intent;)V

    .line 74
    invoke-direct {p0}, Lcom/iMe/services/FilteredContactsProcessingService;->buildNotification()V

    .line 75
    invoke-direct {p0}, Lcom/iMe/services/FilteredContactsProcessingService;->processNextContactsPart()V

    .line 76
    iget p1, p0, Lcom/iMe/services/FilteredContactsProcessingService;->notificationChannelId:I

    iget-object p2, p0, Lcom/iMe/services/FilteredContactsProcessingService;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const/4 p1, 0x2

    return p1
.end method
