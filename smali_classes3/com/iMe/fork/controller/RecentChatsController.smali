.class public final Lcom/iMe/fork/controller/RecentChatsController;
.super Lorg/telegram/messenger/BaseController;
.source "RecentChatsController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/RecentChatsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentChatsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentChatsController.kt\ncom/iMe/fork/controller/RecentChatsController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,194:1\n56#2,6:195\n1549#3:201\n1620#3,3:202\n1179#3,2:205\n1253#3,4:207\n766#3:211\n857#3,2:212\n1054#3:214\n1179#3,2:215\n1253#3,4:217\n1855#3,2:221\n1045#3:223\n1549#3:224\n1620#3,3:225\n819#3:228\n847#3,2:229\n1054#3:231\n*S KotlinDebug\n*F\n+ 1 RecentChatsController.kt\ncom/iMe/fork/controller/RecentChatsController\n*L\n23#1:195,6\n100#1:201\n100#1:202,3\n101#1:205,2\n101#1:207,4\n136#1:211\n136#1:212,2\n136#1:214\n146#1:215,2\n146#1:217,4\n157#1:221,2\n173#1:223\n174#1:224\n174#1:225,3\n181#1:228\n181#1:229,2\n182#1:231\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/RecentChatsController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/RecentChatsController;",
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
            "Lcom/iMe/storage/domain/model/HistoryDialogModel;",
            ">;"
        }
    .end annotation
.end field

.field private isRecentChatsEnabled:Z

.field private isSaveArchiveRecentChatsEnabled:Z

.field private selectedDrawStatusTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/DrawStatusType;",
            ">;"
        }
    .end annotation
.end field

.field private selectedRecentChatsDialogTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/RecentChatsDialogType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1k3Mr_IGiKAGyVdty5SBXk1Z1aQ(Lcom/iMe/fork/controller/RecentChatsController;Lcom/iMe/storage/domain/model/HistoryDialogModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/RecentChatsController;->updateCreationDate$lambda$4(Lcom/iMe/fork/controller/RecentChatsController;Lcom/iMe/storage/domain/model/HistoryDialogModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4sV11_8x2mp67rcaNOrR6VjuBsY(Lcom/iMe/fork/controller/RecentChatsController;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/fork/controller/RecentChatsController;->updatePin$lambda$5(Lcom/iMe/fork/controller/RecentChatsController;JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$A7nbBf7qAtZHZn_6hKHe0p0iEag(Lcom/iMe/fork/controller/RecentChatsController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/RecentChatsController;->deleteByIdList$lambda$11(Lcom/iMe/fork/controller/RecentChatsController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ARTE0FhoxBQaPlYhvdAnYUHLitE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/RecentChatsController;->clearRecentChatsHistory$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XhZEy7ySrOTJqmX_PhwY388UI2s(Lcom/iMe/fork/controller/RecentChatsController;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/controller/RecentChatsController;->removeRecentChat$lambda$9(Lcom/iMe/fork/controller/RecentChatsController;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$u9Dn38GA0DUQLfYLNxNZ7OX2f_s(Lcom/iMe/fork/controller/RecentChatsController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/RecentChatsController;->clearRecentChatsHistory$lambda$13(Lcom/iMe/fork/controller/RecentChatsController;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/RecentChatsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/RecentChatsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/RecentChatsController;->Companion:Lcom/iMe/fork/controller/RecentChatsController$Companion;

    .line 188
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/RecentChatsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

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
    new-instance v0, Lcom/iMe/fork/controller/RecentChatsController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/fork/controller/RecentChatsController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->dao$delegate:Lkotlin/Lazy;

    .line 26
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isRecentChatsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    .line 27
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    .line 28
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedDrawStatusTypes:Ljava/util/Set;

    .line 30
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSaveArchiveRecentChatsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled:Z

    .line 33
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 20
    sget-object v0, Lcom/iMe/fork/controller/RecentChatsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static final clearRecentChatsHistory$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final clearRecentChatsHistory$lambda$13(Lcom/iMe/fork/controller/RecentChatsController;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/iMe/fork/controller/RecentChatsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;->clearRecentChatHistory$default(Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final deleteByIdList$lambda$11(Lcom/iMe/fork/controller/RecentChatsController;Ljava/util/List;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$idsLong"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/iMe/fork/controller/RecentChatsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;->deleteByIdList(Ljava/util/List;J)I

    return-void
.end method

.method private final getDao()Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->dao$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/RecentChatsController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/RecentChatsController;->Companion:Lcom/iMe/fork/controller/RecentChatsController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/RecentChatsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p0

    return-object p0
.end method

.method private final getUnPinnedRecentChats()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/HistoryDialogModel;",
            ">;"
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/iMe/fork/controller/RecentChatsController;->getRecentChatsList()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 819
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 847
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    .line 181
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result v3

    if-nez v3, :cond_0

    .line 847
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1054
    :cond_1
    new-instance v0, Lcom/iMe/fork/controller/RecentChatsController$getUnPinnedRecentChats$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/iMe/fork/controller/RecentChatsController$getUnPinnedRecentChats$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final removeRecentChat$lambda$9(Lcom/iMe/fork/controller/RecentChatsController;J)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/iMe/fork/controller/RecentChatsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;->removeRecentChatHistory(JJ)V

    return-void
.end method

.method private static final updateCreationDate$lambda$4(Lcom/iMe/fork/controller/RecentChatsController;Lcom/iMe/storage/domain/model/HistoryDialogModel;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/iMe/fork/controller/RecentChatsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {p1, v1, v2}, Lcom/iMe/storage/data/mapper/recent_chats/RecentChatsMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/HistoryDialogModel;J)Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method private static final updatePin$lambda$5(Lcom/iMe/fork/controller/RecentChatsController;JZ)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/iMe/fork/controller/RecentChatsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v2, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    xor-int/lit8 v6, p3, 0x1

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;->updatePinned(JJZ)V

    return-void
.end method


# virtual methods
.method public final clearRecentChatsHistory()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/controller/RecentChatsController$clearRecentChatsHistory$1;->INSTANCE:Lcom/iMe/fork/controller/RecentChatsController$clearRecentChatsHistory$1;

    new-instance v2, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v2}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    .line 165
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/controller/RecentChatsController;)V

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

    .line 1855
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

    .line 157
    iget-object v3, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/fork/controller/RecentChatsController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getDialogTypesSettingsRecentChats()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    .line 1045
    new-instance v1, Lcom/iMe/fork/controller/RecentChatsController$getDialogTypesSettingsRecentChats$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/iMe/fork/controller/RecentChatsController$getDialogTypesSettingsRecentChats$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/fork/enums/RecentChatsDialogType;

    .line 174
    invoke-virtual {v2}, Lcom/iMe/fork/enums/RecentChatsDialogType;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getRecentChatsFilter()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/HistoryDialogModel;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/iMe/fork/controller/RecentChatsController;->getRecentChatsList()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    .line 136
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1054
    :cond_1
    new-instance v0, Lcom/iMe/fork/controller/RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/iMe/fork/controller/RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-direct {p0}, Lcom/iMe/fork/controller/RecentChatsController;->getUnPinnedRecentChats()Ljava/util/List;

    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getRecentChatsList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/iMe/storage/domain/model/HistoryDialogModel;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedDrawStatusTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/DrawStatusType;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedDrawStatusTypes:Ljava/util/Set;

    return-object v0
.end method

.method public final getSelectedRecentChatsDialogTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/RecentChatsDialogType;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    return-object v0
.end method

.method public final isDrawStatusType(Lcom/iMe/fork/enums/DrawStatusType;)Z
    .locals 1

    const-string v0, "drawStatusType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedDrawStatusTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isRecentChatsEnabled()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    return v0
.end method

.method public final isSaveArchiveRecentChatsEnabled()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isRecentChatsEnabled()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isRecentChatsEnabled()Z

    move-result v1

    .line 39
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    .line 43
    sget-object v0, Lcom/iMe/fork/enums/RecentChatsDialogType;->Companion:Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;

    .line 45
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedRecentChatsDialogTypes()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object v2

    .line 44
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    .line 50
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSaveArchiveRecentChatsEnabled()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSaveArchiveRecentChatsEnabled()Z

    move-result v1

    .line 49
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled:Z

    .line 53
    sget-object v0, Lcom/iMe/fork/enums/DrawStatusType;->Companion:Lcom/iMe/fork/enums/DrawStatusType$Companion;

    .line 55
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedDrawStatusTypes()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedDrawStatusTypes()Ljava/util/Set;

    move-result-object v2

    .line 54
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Lcom/iMe/fork/enums/DrawStatusType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedDrawStatusTypes:Ljava/util/Set;

    return-void
.end method

.method public final loadRecentChats()V
    .locals 5

    .line 145
    invoke-direct {p0}, Lcom/iMe/fork/controller/RecentChatsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;->getHistoryDialog(J)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    .line 1179
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1180
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1254
    check-cast v1, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;

    .line 146
    invoke-virtual {v1}, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->getDialogId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/recent_chats/RecentChatsMappingKt;->mapToDomain(Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;)Lcom/iMe/storage/domain/model/HistoryDialogModel;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1254
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 145
    iput-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    return-void
.end method

.method public final removeRecentChat(J)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/controller/RecentChatsController;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 9

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isRecentChatsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isRecentChatsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lcom/iMe/fork/enums/RecentChatsDialogType;->Companion:Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSaveArchiveRecentChatsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSaveArchiveRecentChatsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled:Z

    .line 94
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedDrawStatusTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 95
    sget-object v0, Lcom/iMe/fork/enums/DrawStatusType;->Companion:Lcom/iMe/fork/enums/DrawStatusType$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedDrawStatusTypes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/DrawStatusType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedDrawStatusTypes:Ljava/util/Set;

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getPinnedRecentChats()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 98
    invoke-direct {p0}, Lcom/iMe/fork/controller/RecentChatsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 100
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getPinnedRecentChats()Ljava/util/List;

    move-result-object v3

    .line 1549
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1621
    check-cast v6, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    .line 100
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    iget-wide v7, v7, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v6, v7, v8}, Lcom/iMe/storage/data/mapper/recent_chats/RecentChatsMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/HistoryDialogModel;J)Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;

    move-result-object v6

    .line 1621
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {v0, v1, v2, v4}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;->restoreBackup(JLjava/util/List;)V

    .line 101
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getPinnedRecentChats()Ljava/util/List;

    move-result-object p1

    .line 1179
    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1180
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1254
    check-cast v0, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    .line 101
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 101
    :cond_5
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    .line 103
    :cond_6
    invoke-virtual {p0}, Lcom/iMe/fork/controller/RecentChatsController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 4

    .line 63
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isRecentChatsEnabled()Ljava/lang/String;

    move-result-object v1

    .line 66
    iget-boolean v2, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    .line 64
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedRecentChatsDialogTypes()Ljava/lang/String;

    move-result-object v1

    .line 70
    sget-object v2, Lcom/iMe/fork/enums/RecentChatsDialogType;->Companion:Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;

    iget-object v3, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 68
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 71
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSaveArchiveRecentChatsEnabled()Ljava/lang/String;

    move-result-object v1

    .line 74
    iget-boolean v2, p0, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled:Z

    .line 72
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedDrawStatusTypes()Ljava/lang/String;

    move-result-object v1

    .line 78
    sget-object v2, Lcom/iMe/fork/enums/DrawStatusType;->Companion:Lcom/iMe/fork/enums/DrawStatusType$Companion;

    iget-object v3, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedDrawStatusTypes:Ljava/util/Set;

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/DrawStatusType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 76
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setRecentChatsEnabled(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    return-void
.end method

.method public final setSaveArchiveRecentChatsEnabled(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled:Z

    return-void
.end method

.method public final setSelectedDrawStatusTypes(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/DrawStatusType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedDrawStatusTypes:Ljava/util/Set;

    return-void
.end method

.method public final setSelectedRecentChatsDialogTypes(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/RecentChatsDialogType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    return-void
.end method

.method public final updateCreationDate(JZ)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 107
    iget-object p3, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result p3

    if-ne p3, v0, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-eqz p3, :cond_1

    return-void

    .line 108
    :cond_1
    iget-object p3, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    if-nez p3, :cond_2

    new-instance p3, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p3

    move-wide v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/iMe/storage/domain/model/HistoryDialogModel;-><init>(JJZ)V

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0x19

    if-lt v2, v3, :cond_4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 110
    invoke-direct {p0}, Lcom/iMe/fork/controller/RecentChatsController;->getUnPinnedRecentChats()Ljava/util/List;

    move-result-object v2

    .line 111
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 114
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->getDialogId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/iMe/fork/controller/RecentChatsController;->removeRecentChat(J)V

    .line 116
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->setCreationDate(J)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/controller/RecentChatsController;Lcom/iMe/storage/domain/model/HistoryDialogModel;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 121
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final updatePin(J)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->setPinned(Z)V

    .line 128
    :goto_0
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/controller/RecentChatsController;JZ)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0, p1, p2, v0}, Lcom/iMe/fork/controller/RecentChatsController;->updateCreationDate(JZ)V

    return-void
.end method
