.class public final Lorg/fork/controller/RecentChatsController;
.super Lorg/telegram/messenger/BaseController;
.source "RecentChatsController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/controller/RecentChatsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentChatsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentChatsController.kt\norg/fork/controller/RecentChatsController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n56#2,6:117\n764#3:123\n855#3,2:124\n1052#3:126\n817#3:127\n845#3,2:128\n1052#3:130\n1177#3,2:131\n1251#3,4:133\n1849#3,2:137\n*S KotlinDebug\n*F\n+ 1 RecentChatsController.kt\norg/fork/controller/RecentChatsController\n*L\n23#1:117,6\n75#1:123\n75#1:124,2\n75#1:126\n76#1:127\n76#1:128,2\n76#1:130\n82#1:131,2\n82#1:133,4\n93#1:137,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/fork/controller/RecentChatsController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/fork/controller/RecentChatsController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dao$delegate:Lkotlin/Lazy;

.field private historyDialogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/HistoryDialogModel;",
            ">;"
        }
    .end annotation
.end field

.field private isRecentChatsEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$ZvGQ73WBh7gG4XhD82xcyboJVeE(Lorg/fork/controller/RecentChatsController;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/controller/RecentChatsController;->clearRecentChatsHistory$lambda-10(Lorg/fork/controller/RecentChatsController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j1Jjq8KNYD5x8-bXWlVzx68Ddf4(Lorg/fork/controller/RecentChatsController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/RecentChatsController;->deleteByIdList$lambda-9(Lorg/fork/controller/RecentChatsController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rRAn_HsbzAF9rMcD2nG3UvzfoTI(Lorg/fork/controller/RecentChatsController;Lcom/smedialink/storage/domain/model/HistoryDialogModel;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/RecentChatsController;->updateCreationDate$lambda-0(Lorg/fork/controller/RecentChatsController;Lcom/smedialink/storage/domain/model/HistoryDialogModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rj-Jh8wvzPqMofdA3Xf3655w-xs(Lorg/fork/controller/RecentChatsController;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/controller/RecentChatsController;->removeRecentChat$lambda-7(Lorg/fork/controller/RecentChatsController;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$wauuv79najJ8i218CAHP2L55DAg(Lorg/fork/controller/RecentChatsController;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/fork/controller/RecentChatsController;->updatePin$lambda-1(Lorg/fork/controller/RecentChatsController;JZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/controller/RecentChatsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/controller/RecentChatsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/controller/RecentChatsController;->Companion:Lorg/fork/controller/RecentChatsController$Companion;

    .line 111
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/fork/controller/RecentChatsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lorg/fork/controller/RecentChatsController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/fork/controller/RecentChatsController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/fork/controller/RecentChatsController;->dao$delegate:Lkotlin/Lazy;

    .line 26
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isRecentChatsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    .line 29
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 20
    sget-object v0, Lorg/fork/controller/RecentChatsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static final clearRecentChatsHistory$lambda-10(Lorg/fork/controller/RecentChatsController;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lorg/fork/controller/RecentChatsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;->clearRecentChatHistory()V

    return-void
.end method

.method private static final deleteByIdList$lambda-9(Lorg/fork/controller/RecentChatsController;Ljava/util/List;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$idsLong"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lorg/fork/controller/RecentChatsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;->deleteByIdList(Ljava/util/List;J)I

    return-void
.end method

.method private final getDao()Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/fork/controller/RecentChatsController;->dao$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;

    return-object v0
.end method

.method public static final getInstance(I)Lorg/fork/controller/RecentChatsController;
    .locals 1

    sget-object v0, Lorg/fork/controller/RecentChatsController;->Companion:Lorg/fork/controller/RecentChatsController$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/controller/RecentChatsController$Companion;->getInstance(I)Lorg/fork/controller/RecentChatsController;

    move-result-object p0

    return-object p0
.end method

.method private static final removeRecentChat$lambda-7(Lorg/fork/controller/RecentChatsController;J)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lorg/fork/controller/RecentChatsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;->removeRecentChatHistory(JJ)V

    return-void
.end method

.method private static final updateCreationDate$lambda-0(Lorg/fork/controller/RecentChatsController;Lcom/smedialink/storage/domain/model/HistoryDialogModel;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lorg/fork/controller/RecentChatsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {p1, v1, v2}, Lcom/smedialink/storage/data/mapper/recent_chats/RecentChatsMappingKt;->mapToDb(Lcom/smedialink/storage/domain/model/HistoryDialogModel;J)Lcom/smedialink/storage/data/locale/db/model/recent_chats/HistoryDialogDb;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method private static final updatePin$lambda-1(Lorg/fork/controller/RecentChatsController;JZ)V
    .locals 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lorg/fork/controller/RecentChatsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v2, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    xor-int/lit8 v6, p3, 0x1

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;->updatePinned(JJZ)V

    return-void
.end method


# virtual methods
.method public final clearRecentChatsHistory()V
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 101
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda0;-><init>(Lorg/fork/controller/RecentChatsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final deleteByIdList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "idsLong"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 93
    iget-object v3, p0, Lorg/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda4;-><init>(Lorg/fork/controller/RecentChatsController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getRecentChatsFilter()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/HistoryDialogModel;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lorg/fork/controller/RecentChatsController;->getRecentChatsList()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    .line 75
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1052
    :cond_1
    new-instance v2, Lorg/fork/controller/RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lorg/fork/controller/RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 817
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 845
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    .line 76
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1052
    :cond_3
    new-instance v0, Lorg/fork/controller/RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$2;

    invoke-direct {v0}, Lorg/fork/controller/RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$2;-><init>()V

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getRecentChatsList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/smedialink/storage/domain/model/HistoryDialogModel;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final isRecentChatsEnabled()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isRecentChatsEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isRecentChatsEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    return-void
.end method

.method public final loadRecentChats()V
    .locals 5

    .line 82
    invoke-direct {p0}, Lorg/fork/controller/RecentChatsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/storage/data/locale/db/dao/main/HistoryDialogDao;->getHistoryDialog(J)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    .line 1177
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1178
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1251
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1252
    check-cast v1, Lcom/smedialink/storage/data/locale/db/model/recent_chats/HistoryDialogDb;

    .line 82
    invoke-virtual {v1}, Lcom/smedialink/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->getDialogId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/recent_chats/RecentChatsMappingKt;->mapToDomain(Lcom/smedialink/storage/data/locale/db/model/recent_chats/HistoryDialogDb;)Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    return-void
.end method

.method public final removeRecentChat(J)V
    .locals 2

    .line 86
    iget-object v0, p0, Lorg/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda1;-><init>(Lorg/fork/controller/RecentChatsController;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final restoreBackup(Lorg/fork/models/backup/Backup;)V
    .locals 1

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isRecentChatsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isRecentChatsEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    .line 43
    :cond_0
    invoke-virtual {p0}, Lorg/fork/controller/RecentChatsController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 3

    .line 37
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isRecentChatsEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final toggleEnabled()V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    .line 60
    invoke-virtual {p0}, Lorg/fork/controller/RecentChatsController;->saveConfig()V

    return-void
.end method

.method public final updateCreationDate(JZ)V
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 47
    iget-object p3, p0, Lorg/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    const/4 v1, 0x1

    if-nez p3, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result p3

    if-ne p3, v1, :cond_0

    :goto_0
    if-eqz v1, :cond_2

    return-void

    .line 49
    :cond_2
    iget-object p3, p0, Lorg/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    if-nez p3, :cond_3

    new-instance p3, Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;-><init>(JJZ)V

    .line 50
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->setCreationDate(J)V

    .line 51
    iget-object v1, p0, Lorg/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda3;-><init>(Lorg/fork/controller/RecentChatsController;Lcom/smedialink/storage/domain/model/HistoryDialogModel;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 55
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final updatePin(J)V
    .locals 3

    .line 64
    iget-object v0, p0, Lorg/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result v0

    .line 66
    iget-object v1, p0, Lorg/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->setPinned(Z)V

    .line 67
    :goto_0
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2, v0}, Lorg/fork/controller/RecentChatsController$$ExternalSyntheticLambda2;-><init>(Lorg/fork/controller/RecentChatsController;JZ)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, p1, p2, v0}, Lorg/fork/controller/RecentChatsController;->updateCreationDate(JZ)V

    return-void
.end method
