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
    value = "SMAP\nHiddenChatsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HiddenChatsController.kt\ncom/iMe/fork/controller/HiddenChatsController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n56#2,6:115\n1855#3,2:121\n1549#3:123\n1620#3,3:124\n*S KotlinDebug\n*F\n+ 1 HiddenChatsController.kt\ncom/iMe/fork/controller/HiddenChatsController\n*L\n18#1:115,6\n68#1:121,2\n28#1:123\n28#1:124,3\n*E\n"
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

    .line 109
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/HiddenChatsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 15
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

    .line 18
    iput-object p1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->dao$delegate:Lkotlin/Lazy;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    .line 22
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isHiddenChatsHidden()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden:Z

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 15
    sget-object v0, Lcom/iMe/fork/controller/HiddenChatsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private final getDao()Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;
    .locals 1

    .line 18
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

    .line 27
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/HiddenChatsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/controller/HiddenChatsController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final insertHiddenChats$lambda$1(Lcom/iMe/fork/controller/HiddenChatsController;Ljava/util/List;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialogIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
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

    .line 28
    new-instance v4, Lcom/iMe/storage/data/locale/db/model/hidden_chats/HiddenChatsDb;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    iget-wide v5, v5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-direct {v4, v5, v6, v2, v3}, Lcom/iMe/storage/data/locale/db/model/hidden_chats/HiddenChatsDb;-><init>(JJ)V

    .line 1621
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
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

    .line 33
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/HiddenChatsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/controller/HiddenChatsController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final removeHiddenChats$lambda$2(Lcom/iMe/fork/controller/HiddenChatsController;Ljava/util/List;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dialogIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/iMe/fork/controller/HiddenChatsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/main/HiddenChatsDao;->deleteByIdList(Ljava/util/List;J)I

    return-void
.end method


# virtual methods
.method public final addOrRemoveHiddenChats(Ljava/util/List;ZLorg/telegram/ui/Components/UndoView;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z",
            "Lorg/telegram/ui/Components/UndoView;",
            ")Z"
        }
    .end annotation

    const-string v0, "dialogIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 65
    iget-object v1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 69
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/MediaDataController;->removePeer(J)V

    .line 70
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/iMe/fork/controller/RecentChatsController;->removeRecentChat(J)V

    .line 71
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v3, v0, v5}, Lorg/telegram/messenger/NotificationsController;->setDialogNotificationsSettings(JII)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 75
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController;->removeHiddenChats(Ljava/util/List;)V

    goto :goto_3

    :cond_2
    if-eqz p3, :cond_4

    const-wide/16 v3, 0x0

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_3

    sget p2, Lcom/iMe/common/IdFabric$CustomType;->ACTION_HIDDEN_CHATS_UNDO_VIEW_FEW_HINT:I

    goto :goto_2

    .line 80
    :cond_3
    sget p2, Lcom/iMe/common/IdFabric$CustomType;->ACTION_HIDDEN_CHATS_UNDO_VIEW_HINT:I

    .line 77
    :goto_2
    invoke-virtual {p3, v3, v4, p2, v1}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    .line 83
    :cond_4
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/HiddenChatsController;->insertHiddenChats(Ljava/util/List;)V

    .line 86
    :goto_3
    iget-object p1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 87
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    const/4 p2, 0x2

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->makeFolderDialogId(I)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 88
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesStorage;->checkIfFolderEmpty(I)V

    goto :goto_4

    .line 91
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesController;->ensureFolderDialogExists(I)Lorg/telegram/tgnet/TLRPC$TL_dialogFolder;

    .line 94
    :goto_4
    iput-boolean v2, p0, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden:Z

    .line 95
    invoke-virtual {p0}, Lcom/iMe/fork/controller/HiddenChatsController;->saveConfig()V

    .line 97
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesStorage;->resetAllUnreadCounters(Z)V

    .line 98
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 99
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
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

    .line 21
    iget-object v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 15
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final isChatHidden(J)Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->hiddenChatDialogs:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isHiddenChatsHidden()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
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

    .line 60
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

.method public final saveConfig()V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isHiddenChatsHidden()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final toggleVisibleHiddenChats()V
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/iMe/fork/controller/HiddenChatsController;->isHiddenChatsHidden:Z

    .line 50
    invoke-virtual {p0}, Lcom/iMe/fork/controller/HiddenChatsController;->saveConfig()V

    return-void
.end method
