.class public final Lcom/iMe/fork/controller/HiddenChatsController;
.super Lorg/telegram/messenger/BaseController;
.source "HiddenChatsController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/HiddenChatsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHiddenChatsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HiddenChatsController.kt\ncom/iMe/fork/controller/HiddenChatsController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,123:1\n56#2,6:124\n1855#3,2:130\n819#3:132\n847#3,2:133\n1549#3:135\n1620#3,3:136\n*S KotlinDebug\n*F\n+ 1 HiddenChatsController.kt\ncom/iMe/fork/controller/HiddenChatsController\n*L\n17#1:124,6\n38#1:130,2\n113#1:132\n113#1:133,2\n27#1:135\n27#1:136,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/HiddenChatsController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/HiddenChatsController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dao$delegate:Lkotlin/Lazy;

.field private hiddenChatDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isHiddenChatsHidden:Z


# direct methods
.method public static synthetic $r8$lambda$fFtleZAQCBIioJoloOkZXV--1kk(Lcom/iMe/fork/controller/HiddenChatsController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController;->insertHiddenChats$lambda$1(Lcom/iMe/fork/controller/HiddenChatsController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rRXxQUA1ikiedTfNAo6aS8vUAJM(Lcom/iMe/fork/controller/HiddenChatsController;Lcom/iMe/fork/models/backup/Backup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController;->restoreBackup$lambda$7(Lcom/iMe/fork/controller/HiddenChatsController;Lcom/iMe/fork/models/backup/Backup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zuIUAb8RfMC-uPq5VmRUST_aEA8(Lcom/iMe/fork/controller/HiddenChatsController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController;->removeHiddenChats$lambda$2(Lcom/iMe/fork/controller/HiddenChatsController;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/HiddenChatsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/HiddenChatsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/HiddenChatsController;->Companion:Lcom/iMe/fork/controller/HiddenChatsController$Companion;

    .line 118
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/HiddenChatsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 14
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/fork/controller/HiddenChatsController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/fork/controller/HiddenChatsController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->dao$delegate:Lkotlin/Lazy;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    .line 21
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isHiddenChatsHidden()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden:Z

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 14
    sget-object v0, Lcom/iMe/fork/controller/HiddenChatsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private final getDao()Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->dao$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/HiddenChatsController;->Companion:Lcom/iMe/fork/controller/HiddenChatsController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/HiddenChatsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object p0

    return-object p0
.end method

.method private final insertHiddenChats(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 26
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/HiddenChatsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/controller/HiddenChatsController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final insertHiddenChats$lambda$1(Lcom/iMe/fork/controller/HiddenChatsController;Ljava/util/List;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialogIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/iMe/fork/controller/HiddenChatsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;

    move-result-object v0

    .line 1549
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

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 27
    new-instance v4, Lcom/iMe/storage/data/locale/db/model/hidden_chats/HiddenChatsDb;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    iget-wide v5, v5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-direct {v4, v5, v6, v2, v3}, Lcom/iMe/storage/data/locale/db/model/hidden_chats/HiddenChatsDb;-><init>(JJ)V

    .line 1621
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    return-void
.end method

.method private final removeHiddenChats(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 32
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/HiddenChatsController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/controller/HiddenChatsController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final removeHiddenChats$lambda$2(Lcom/iMe/fork/controller/HiddenChatsController;Ljava/util/List;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialogIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/controller/HiddenChatsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;->deleteByIdList(Ljava/util/List;J)I

    return-void
.end method

.method private final removeRecentChatsAndPeer(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 39
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MediaDataController;->removePeer(J)V

    .line 40
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/iMe/fork/controller/RecentChatsController;->removeRecentChat(J)V

    .line 41
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v0, v1, v3, v4}, Lorg/telegram/messenger/NotificationsController;->setDialogNotificationsSettings(JII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final restoreBackup$lambda$7(Lcom/iMe/fork/controller/HiddenChatsController;Lcom/iMe/fork/models/backup/Backup;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    .line 75
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getHiddenChatDialogs()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-object p1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController;->removeRecentChatsAndPeer(Ljava/util/List;)V

    .line 79
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 80
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final filterAddHiddenChats(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 847
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 113
    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 847
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getHiddenChatDialogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 14
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final hideChats(Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "dialogIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden:Z

    .line 87
    invoke-virtual {p0}, Lcom/iMe/fork/controller/HiddenChatsController;->saveConfig()V

    if-eqz p2, :cond_0

    .line 90
    iget-object p2, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController;->removeRecentChatsAndPeer(Ljava/util/List;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController;->insertHiddenChats(Ljava/util/List;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p2, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 95
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController;->removeHiddenChats(Ljava/util/List;)V

    .line 98
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->checkIfFolderEmpty(I)V

    .line 99
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesStorage;->checkIfFolderEmpty(I)V

    .line 101
    iget-object p1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->ensureFolderDialogExists(I)Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    .line 103
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 104
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v1, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->resetAllUnreadCounters(Z)V

    .line 107
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public final isChatHidden(J)Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isHiddenChatsHidden()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isHiddenChatsHidden()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isHiddenChatsHidden()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden:Z

    return-void
.end method

.method public final loadHiddenChats()V
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/iMe/fork/controller/HiddenChatsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;->getHiddenChats(J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 4

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getHiddenChatDialogs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/iMe/fork/controller/HiddenChatsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getHiddenChatDialogs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;->restoreBackup(JLjava/util/List;)V

    .line 73
    new-instance v0, Lcom/iMe/fork/controller/HiddenChatsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/controller/HiddenChatsController;Lcom/iMe/fork/models/backup/Backup;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final saveConfig()V
    .locals 3

    .line 61
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isHiddenChatsHidden()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final toggleHiddenChatsHidden()V
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden:Z

    .line 57
    invoke-virtual {p0}, Lcom/iMe/fork/controller/HiddenChatsController;->saveConfig()V

    return-void
.end method
