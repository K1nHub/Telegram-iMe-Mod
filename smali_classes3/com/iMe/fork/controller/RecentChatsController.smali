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
    value = "SMAP\nRecentChatsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentChatsController.kt\ncom/iMe/fork/controller/RecentChatsController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n56#2,6:143\n766#3:149\n857#3,2:150\n1054#3:152\n819#3:153\n847#3,2:154\n1054#3:156\n1179#3,2:157\n1253#3,4:159\n1855#3,2:163\n1045#3:165\n1549#3:166\n1620#3,3:167\n*S KotlinDebug\n*F\n+ 1 RecentChatsController.kt\ncom/iMe/fork/controller/RecentChatsController\n*L\n20#1:143,6\n96#1:149\n96#1:150,2\n96#1:152\n97#1:153\n97#1:154,2\n97#1:156\n104#1:157,2\n104#1:159,4\n115#1:163,2\n131#1:165\n132#1:166\n132#1:167,3\n*E\n"
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

.method public static synthetic $r8$lambda$Wf_sriXIER47BBUIyOobglsJBdg(Lcom/iMe/fork/controller/RecentChatsController;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/fork/controller/RecentChatsController;->updatePin$lambda$3(Lcom/iMe/fork/controller/RecentChatsController;JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$XhZEy7ySrOTJqmX_PhwY388UI2s(Lcom/iMe/fork/controller/RecentChatsController;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/controller/RecentChatsController;->removeRecentChat$lambda$9(Lcom/iMe/fork/controller/RecentChatsController;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$oDByoveeCveOZ9Wza-itxgCDRJQ(Lcom/iMe/fork/controller/RecentChatsController;Lcom/iMe/storage/domain/model/HistoryDialogModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/RecentChatsController;->updateCreationDate$lambda$2(Lcom/iMe/fork/controller/RecentChatsController;Lcom/iMe/storage/domain/model/HistoryDialogModel;)V

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

    .line 137
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/RecentChatsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 17
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

    .line 20
    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->dao$delegate:Lkotlin/Lazy;

    .line 23
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isRecentChatsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    .line 24
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    .line 25
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedDrawStatusTypes:Ljava/util/Set;

    .line 26
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSaveArchiveRecentChatsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled:Z

    .line 29
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 17
    sget-object v0, Lcom/iMe/fork/controller/RecentChatsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static final clearRecentChatsHistory$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
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

    .line 124
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

    .line 117
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

    .line 20
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

.method private static final removeRecentChat$lambda$9(Lcom/iMe/fork/controller/RecentChatsController;J)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/iMe/fork/controller/RecentChatsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;->removeRecentChatHistory(JJ)V

    return-void
.end method

.method private static final updateCreationDate$lambda$2(Lcom/iMe/fork/controller/RecentChatsController;Lcom/iMe/storage/domain/model/HistoryDialogModel;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
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

.method private static final updatePin$lambda$3(Lcom/iMe/fork/controller/RecentChatsController;JZ)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
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

    .line 122
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/controller/RecentChatsController$clearRecentChatsHistory$1;->INSTANCE:Lcom/iMe/fork/controller/RecentChatsController$clearRecentChatsHistory$1;

    new-instance v2, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v2}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    .line 123
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

    .line 115
    iget-object v3, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
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

    .line 130
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

    .line 132
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

    .line 17
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
            "Lcom/iMe/storage/domain/model/HistoryDialogModel;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/iMe/fork/controller/RecentChatsController;->getRecentChatsList()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
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

    check-cast v4, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    .line 96
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 857
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1054
    :cond_1
    new-instance v2, Lcom/iMe/fork/controller/RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lcom/iMe/fork/controller/RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 819
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 847
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

    check-cast v4, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    .line 97
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result v4

    if-nez v4, :cond_2

    .line 847
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1054
    :cond_3
    new-instance v0, Lcom/iMe/fork/controller/RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$2;

    invoke-direct {v0}, Lcom/iMe/fork/controller/RecentChatsController$getRecentChatsFilter$$inlined$sortedByDescending$2;-><init>()V

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 98
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
            "Lcom/iMe/storage/domain/model/HistoryDialogModel;",
            ">;"
        }
    .end annotation

    .line 128
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

    .line 25
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

    .line 24
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    return-object v0
.end method

.method public final isDrawStatusType(Lcom/iMe/fork/enums/DrawStatusType;)Z
    .locals 1

    const-string v0, "drawStatusType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedDrawStatusTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isRecentChatsEnabled()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    return v0
.end method

.method public final isSaveArchiveRecentChatsEnabled()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isRecentChatsEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isRecentChatsEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    .line 36
    sget-object v0, Lcom/iMe/fork/enums/RecentChatsDialogType;->Companion:Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedRecentChatsDialogTypes()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    .line 37
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSaveArchiveRecentChatsEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSaveArchiveRecentChatsEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled:Z

    .line 38
    sget-object v0, Lcom/iMe/fork/enums/DrawStatusType;->Companion:Lcom/iMe/fork/enums/DrawStatusType$Companion;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedDrawStatusTypes()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedDrawStatusTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/fork/enums/DrawStatusType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedDrawStatusTypes:Ljava/util/Set;

    return-void
.end method

.method public final loadRecentChats()V
    .locals 5

    .line 104
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

    .line 104
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

    .line 104
    :cond_0
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    return-void
.end method

.method public final removeRecentChat(J)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/controller/RecentChatsController;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 2

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isRecentChatsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isRecentChatsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lcom/iMe/fork/enums/RecentChatsDialogType;->Companion:Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSaveArchiveRecentChatsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSaveArchiveRecentChatsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled:Z

    .line 61
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedDrawStatusTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 62
    sget-object v0, Lcom/iMe/fork/enums/DrawStatusType;->Companion:Lcom/iMe/fork/enums/DrawStatusType$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedDrawStatusTypes()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/fork/enums/DrawStatusType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedDrawStatusTypes:Ljava/util/Set;

    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/iMe/fork/controller/RecentChatsController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 4

    .line 43
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isRecentChatsEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedRecentChatsDialogTypes()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/RecentChatsDialogType;->Companion:Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;

    iget-object v3, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSaveArchiveRecentChatsEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedDrawStatusTypes()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/DrawStatusType;->Companion:Lcom/iMe/fork/enums/DrawStatusType$Companion;

    iget-object v3, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedDrawStatusTypes:Ljava/util/Set;

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/DrawStatusType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setRecentChatsEnabled(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    return-void
.end method

.method public final setSaveArchiveRecentChatsEnabled(Z)V
    .locals 0

    .line 26
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

    .line 25
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

    .line 24
    iput-object p1, p0, Lcom/iMe/fork/controller/RecentChatsController;->selectedRecentChatsDialogTypes:Ljava/util/Set;

    return-void
.end method

.method public final toggleEnabled()V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled:Z

    .line 81
    invoke-virtual {p0}, Lcom/iMe/fork/controller/RecentChatsController;->saveConfig()V

    return-void
.end method

.method public final updateCreationDate(JZ)V
    .locals 7

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 68
    iget-object p3, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result p3

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .line 70
    :cond_1
    iget-object p3, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    if-nez p3, :cond_2

    new-instance p3, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/HistoryDialogModel;-><init>(JJZ)V

    .line 71
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->setCreationDate(J)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/controller/RecentChatsController;Lcom/iMe/storage/domain/model/HistoryDialogModel;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 76
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final updatePin(J)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/iMe/fork/controller/RecentChatsController;->historyDialogs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result v0

    .line 87
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

    .line 88
    :goto_0
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/iMe/fork/controller/RecentChatsController$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/controller/RecentChatsController;JZ)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, p1, p2, v0}, Lcom/iMe/fork/controller/RecentChatsController;->updateCreationDate(JZ)V

    return-void
.end method