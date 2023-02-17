.class public final Lorg/fork/controller/BookmarksController;
.super Lorg/telegram/messenger/BaseController;
.source "BookmarksController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/controller/BookmarksController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBookmarksController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookmarksController.kt\norg/fork/controller/BookmarksController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n56#2,6:92\n657#3:98\n738#3,4:99\n511#4:103\n496#4,6:104\n357#4,7:110\n1849#5,2:117\n1547#5:119\n1618#5,3:120\n*S KotlinDebug\n*F\n+ 1 BookmarksController.kt\norg/fork/controller/BookmarksController\n*L\n18#1:92,6\n29#1:98\n29#1:99,4\n35#1:103\n35#1:104,6\n46#1:110,7\n70#1:117,2\n77#1:119\n77#1:120,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/fork/controller/BookmarksController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/fork/controller/BookmarksController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bookmarks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;",
            ">;"
        }
    .end annotation
.end field

.field private final dao$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$9qZ1T_2WB5tWOldr4lsBbzMmiTg(Lorg/fork/controller/BookmarksController;Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/BookmarksController;->bookmarkMessages$lambda-4(Lorg/fork/controller/BookmarksController;Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ItgLl5bFTbf2eRVF817M_i1H8E8(Lorg/fork/controller/BookmarksController;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/controller/BookmarksController;->setNewBookmarks$lambda-2(Lorg/fork/controller/BookmarksController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T18eYH3PgSRKbrKBZnZGwGkHbys(Lorg/fork/controller/BookmarksController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/BookmarksController;->unbookmarkAllMessages$lambda-8(Lorg/fork/controller/BookmarksController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b-7-drpypDxygEDr1kW5JLFizOU(Lorg/fork/controller/BookmarksController;Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/BookmarksController;->unbookmarkMessages$lambda-5(Lorg/fork/controller/BookmarksController;Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/controller/BookmarksController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/controller/BookmarksController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/controller/BookmarksController;->Companion:Lorg/fork/controller/BookmarksController$Companion;

    .line 86
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/fork/controller/BookmarksController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

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
    new-instance v0, Lorg/fork/controller/BookmarksController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/fork/controller/BookmarksController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lorg/fork/controller/BookmarksController;->dao$delegate:Lkotlin/Lazy;

    .line 21
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/BookmarksController;->bookmarks:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 15
    sget-object v0, Lorg/fork/controller/BookmarksController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static final bookmarkMessages$lambda-4(Lorg/fork/controller/BookmarksController;Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bookmarksModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lorg/fork/controller/BookmarksController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/BookmarksDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {p1, v1, v2}, Lcom/smedialink/storage/data/mapper/bookmarks/BookmarksMappingKt;->mapToDb(Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;J)Lcom/smedialink/storage/data/locale/db/model/bookmarks/BookmarksDb;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method private final getDao()Lcom/smedialink/storage/data/locale/db/dao/main/BookmarksDao;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/fork/controller/BookmarksController;->dao$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/db/dao/main/BookmarksDao;

    return-object v0
.end method

.method public static final getInstance(I)Lorg/fork/controller/BookmarksController;
    .locals 1

    sget-object v0, Lorg/fork/controller/BookmarksController;->Companion:Lorg/fork/controller/BookmarksController$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/controller/BookmarksController$Companion;->getInstance(I)Lorg/fork/controller/BookmarksController;

    move-result-object p0

    return-object p0
.end method

.method private static final setNewBookmarks$lambda-2(Lorg/fork/controller/BookmarksController;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lorg/fork/controller/BookmarksController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/BookmarksDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p0}, Lorg/fork/controller/BookmarksController;->getBookmarks()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/smedialink/storage/data/locale/db/dao/main/BookmarksDao;->restoreBackup(JLjava/util/List;)V

    return-void
.end method

.method private static final unbookmarkAllMessages$lambda-8(Lorg/fork/controller/BookmarksController;Ljava/util/List;)V
    .locals 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newBookmarks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lorg/fork/controller/BookmarksController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/BookmarksDao;

    move-result-object v0

    .line 1547
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

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;

    .line 77
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v2, v3, v4}, Lcom/smedialink/storage/data/mapper/bookmarks/BookmarksMappingKt;->mapToDb(Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;J)Lcom/smedialink/storage/data/locale/db/model/bookmarks/BookmarksDb;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    return-void
.end method

.method private static final unbookmarkMessages$lambda-5(Lorg/fork/controller/BookmarksController;Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bookmarksModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lorg/fork/controller/BookmarksController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/BookmarksDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {p1, v1, v2}, Lcom/smedialink/storage/data/mapper/bookmarks/BookmarksMappingKt;->mapToDb(Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;J)Lcom/smedialink/storage/data/locale/db/model/bookmarks/BookmarksDb;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    return-void
.end method


# virtual methods
.method public final bookmarkMessages(JLjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lorg/fork/controller/BookmarksController;->bookmarks:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 357
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 46
    new-instance v2, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, p1, p2}, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;-><init>(Ljava/util/ArrayList;J)V

    .line 360
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    check-cast v2, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;

    .line 47
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/fork/controller/BookmarksController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v2}, Lorg/fork/controller/BookmarksController$$ExternalSyntheticLambda1;-><init>(Lorg/fork/controller/BookmarksController;Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getBookmarks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/fork/controller/BookmarksController;->bookmarks:Ljava/util/Map;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 15
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getMessagesForDialog(J)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/fork/controller/BookmarksController;->bookmarks:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p1
.end method

.method public final loadBookmarks()V
    .locals 5

    .line 26
    invoke-direct {p0}, Lorg/fork/controller/BookmarksController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/BookmarksDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/storage/data/locale/db/dao/main/BookmarksDao;->getAllBookmarksForUser(J)Ljava/util/List;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 28
    sget-object v1, Lorg/fork/controller/BookmarksController$loadBookmarks$1;->INSTANCE:Lorg/fork/controller/BookmarksController$loadBookmarks$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 657
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 738
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 739
    check-cast v2, Lcom/smedialink/storage/data/locale/db/model/bookmarks/BookmarksDb;

    .line 29
    invoke-virtual {v2}, Lcom/smedialink/storage/data/locale/db/model/bookmarks/BookmarksDb;->getDialogId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Lcom/smedialink/storage/data/mapper/bookmarks/BookmarksMappingKt;->mapToDomain(Lcom/smedialink/storage/data/locale/db/model/bookmarks/BookmarksDb;)Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 26
    iput-object v0, p0, Lorg/fork/controller/BookmarksController;->bookmarks:Ljava/util/Map;

    return-void
.end method

.method public final restoreBackup(Lorg/fork/models/backup/Backup;)V
    .locals 3

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getBookmarks()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getBookmarks()Ljava/util/Map;

    move-result-object p1

    .line 511
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 496
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 498
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fork/controller/BookmarksController;->setNewBookmarks(Ljava/util/Map;)V

    return-void
.end method

.method public final setNewBookmarks(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newBookmarks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lorg/fork/controller/BookmarksController;->bookmarks:Ljava/util/Map;

    .line 40
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/fork/controller/BookmarksController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/fork/controller/BookmarksController$$ExternalSyntheticLambda0;-><init>(Lorg/fork/controller/BookmarksController;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final unbookmarkAllMessages(J)V
    .locals 0

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fork/controller/BookmarksController;->unbookmarkAllMessages(Ljava/util/List;)V

    return-void
.end method

.method public final unbookmarkAllMessages(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dialogIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 71
    invoke-virtual {p0}, Lorg/fork/controller/BookmarksController;->getBookmarks()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;

    if-nez v3, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 73
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p0}, Lorg/fork/controller/BookmarksController;->getBookmarks()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    :cond_1
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/fork/controller/BookmarksController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lorg/fork/controller/BookmarksController$$ExternalSyntheticLambda3;-><init>(Lorg/fork/controller/BookmarksController;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final unbookmarkMessages(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/fork/controller/BookmarksController;->bookmarks:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 56
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 57
    iget-object p3, p0, Lorg/fork/controller/BookmarksController;->bookmarks:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/fork/controller/BookmarksController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lorg/fork/controller/BookmarksController$$ExternalSyntheticLambda2;-><init>(Lorg/fork/controller/BookmarksController;Lcom/smedialink/storage/domain/model/bookmarks/BookmarksModel;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
