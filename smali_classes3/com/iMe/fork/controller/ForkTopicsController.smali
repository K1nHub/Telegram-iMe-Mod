.class public final Lcom/iMe/fork/controller/ForkTopicsController;
.super Lorg/telegram/messenger/BaseController;
.source "ForkTopicsController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/ForkTopicsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForkTopicsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForkTopicsController.kt\ncom/iMe/fork/controller/ForkTopicsController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,325:1\n56#2,6:326\n1559#3:332\n1590#3,4:333\n1855#3,2:337\n766#3:356\n857#3,2:357\n1045#3:359\n766#3:360\n857#3,2:361\n1045#3:363\n766#3:364\n857#3,2:365\n1045#3:367\n766#3:368\n857#3,2:369\n1549#3:371\n1620#3,2:372\n1622#3:375\n766#3:376\n857#3,2:377\n1855#3:379\n1549#3:380\n1620#3,3:381\n766#3:384\n857#3:385\n1726#3,3:386\n858#3:389\n1856#3:390\n1963#3,14:391\n1963#3,14:405\n1549#3:419\n1620#3,3:420\n1179#3,2:423\n1253#3,4:425\n1549#3:429\n1620#3,3:430\n10#4,3:339\n10#4,6:342\n10#4,6:348\n14#4,2:354\n1#5:374\n*S KotlinDebug\n*F\n+ 1 ForkTopicsController.kt\ncom/iMe/fork/controller/ForkTopicsController\n*L\n30#1:326,6\n73#1:332\n73#1:333,4\n85#1:337,2\n181#1:356\n181#1:357,2\n182#1:359\n185#1:360\n185#1:361,2\n186#1:363\n198#1:364\n198#1:365,2\n198#1:367\n199#1:368\n199#1:369,2\n200#1:371\n200#1:372,2\n200#1:375\n224#1:376\n224#1:377,2\n226#1:379\n229#1:380\n229#1:381,3\n230#1:384\n230#1:385\n230#1:386,3\n230#1:389\n226#1:390\n256#1:391,14\n258#1:405,14\n260#1:419\n260#1:420,3\n305#1:423,2\n305#1:425,4\n311#1:429\n311#1:430,3\n135#1:339,3\n138#1:342,6\n149#1:348,6\n135#1:354,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/ForkTopicsController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/ForkTopicsController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dao$delegate:Lkotlin/Lazy;

.field private isNoTopicFirstEnabled:Z

.field private isTopicsBarAtBottomEnabled:Z

.field private isTopicsBarEnabled:Z

.field private lastTopicsCount:I

.field private selectedArchiveTopicId:J

.field private selectedMainTopicId:J

.field private topics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$bOjPTe5BxZC8Ghl8u0U0ix2qutE(Lcom/iMe/fork/controller/ForkTopicsController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics$lambda$10(Lcom/iMe/fork/controller/ForkTopicsController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dV-WnQXtokKBPbv_My27_WScSaM(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->saveTopic$lambda$32(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pyRyJo-3d_kwcIJQWuO1eZuyl8U(Lcom/iMe/fork/controller/ForkTopicsController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->updateCatalog$lambda$28(Lcom/iMe/fork/controller/ForkTopicsController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wN2oJ6e0Vd_nlCWNbplGoXmThW0(Lcom/iMe/fork/controller/ForkTopicsController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->insertTopics$lambda$35(Lcom/iMe/fork/controller/ForkTopicsController;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/ForkTopicsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/ForkTopicsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/ForkTopicsController;->Companion:Lcom/iMe/fork/controller/ForkTopicsController$Companion;

    .line 320
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/ForkTopicsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/fork/controller/ForkTopicsController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/fork/controller/ForkTopicsController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->dao$delegate:Lkotlin/Lazy;

    .line 33
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isTopicsBarEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarEnabled:Z

    .line 34
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isTopicsBarAtBottomEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    .line 35
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isNoTopicFirstEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    .line 40
    iput-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    .line 41
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 27
    sget-object v0, Lcom/iMe/fork/controller/ForkTopicsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static synthetic createNewTopic$default(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/data/repository/topics/Topic;JIILjava/lang/Object;)Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->calcNextId()J

    move-result-wide p2

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->calcNextOrder()I

    move-result p4

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/fork/controller/ForkTopicsController;->createNewTopic(Lcom/iMe/storage/data/repository/topics/Topic;JI)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object p0

    return-object p0
.end method

.method private static final filterTopics$lambda$10(Lcom/iMe/fork/controller/ForkTopicsController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoad:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private final getDao()Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->dao$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/ForkTopicsController;->Companion:Lcom/iMe/fork/controller/ForkTopicsController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/ForkTopicsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object p0

    return-object p0
.end method

.method private final insertTopics(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;)V"
        }
    .end annotation

    .line 310
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/controller/ForkTopicsController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final insertTopics$lambda$35(Lcom/iMe/fork/controller/ForkTopicsController;Ljava/util/List;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$topics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

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
    check-cast v2, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 311
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v2, v3, v4}, Lcom/iMe/storage/data/mapper/topics/TopicMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/topics/TopicModel;J)Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    return-void
.end method

.method private final putTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final removeTopicDialog(Lcom/iMe/storage/domain/model/topics/TopicModel;J)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 286
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->saveTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method private final saveTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 4

    .line 290
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 292
    iget-object v1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics()V

    if-eqz v0, :cond_2

    .line 296
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 300
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private static final saveTopic$lambda$32(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide p0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;->removeTopic(JJ)V

    return-void
.end method

.method private final setTopics(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xa

    .line 1179
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

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

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1254
    check-cast v0, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;

    .line 305
    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;->getTopicId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/topics/TopicMappingKt;->mapToDomain(Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 305
    :cond_0
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    .line 306
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics()V

    return-void
.end method

.method private static final updateCatalog$lambda$28(Lcom/iMe/fork/controller/ForkTopicsController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoad:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addOrEditTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 9

    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 86
    invoke-virtual {p0, v1, v2}, Lcom/iMe/fork/controller/ForkTopicsController;->getTopicForDialog(J)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-nez v4, :cond_0

    .line 88
    invoke-direct {p0, v3, v1, v2}, Lcom/iMe/fork/controller/ForkTopicsController;->removeTopicDialog(Lcom/iMe/storage/domain/model/topics/TopicModel;J)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->putTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    .line 92
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics()V

    .line 93
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    return-void
.end method

.method public final addTopicDialog(Lcom/iMe/storage/domain/model/topics/TopicModel;J)V
    .locals 8

    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->calcNextId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->setTopicId(J)V

    .line 100
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/iMe/fork/controller/ForkTopicsController;->removeTopicDialog(J)V

    .line 101
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/iMe/fork/controller/ForkTopicsController;->getTopic(J)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/iMe/fork/controller/ForkTopicsController;->createNewTopic$default(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/data/repository/topics/Topic;JIILjava/lang/Object;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v0

    .line 103
    :cond_1
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-direct {p0, v0}, Lcom/iMe/fork/controller/ForkTopicsController;->putTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    .line 106
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics()V

    .line 107
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    return-void
.end method

.method public final calcNextId()J
    .locals 8

    .line 256
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1963
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1964
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 1965
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1966
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 1967
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 256
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    .line 1969
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1970
    move-object v5, v4

    check-cast v5, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 256
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_3

    move-object v1, v4

    move-wide v2, v5

    .line 1975
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 256
    :goto_1
    check-cast v0, Lcom/iMe/storage/domain/model/topics/TopicModel;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method

.method public final calcNextOrder()I
    .locals 5

    .line 258
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1963
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1964
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 1965
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1966
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 1967
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 258
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v2

    .line 1969
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1970
    move-object v4, v3

    check-cast v4, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 258
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v4

    if-ge v2, v4, :cond_3

    move-object v1, v3

    move v2, v4

    .line 1975
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 258
    :goto_1
    check-cast v0, Lcom/iMe/storage/domain/model/topics/TopicModel;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public final cleanup()V
    .locals 2

    const/4 v0, 0x0

    .line 269
    iput v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->lastTopicsCount:I

    const-wide/16 v0, -0x1

    .line 270
    iput-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    .line 271
    iput-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    return-void
.end method

.method public final createNewTopic(Lcom/iMe/storage/data/repository/topics/Topic;JI)Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 13

    .line 265
    new-instance v12, Lcom/iMe/storage/domain/model/topics/TopicModel;

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v0, v12

    move-wide v1, p2

    move-object v4, p1

    move/from16 v5, p4

    invoke-direct/range {v0 .. v11}, Lcom/iMe/storage/domain/model/topics/TopicModel;-><init>(JLjava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method public final filterTopics()V
    .locals 14

    .line 129
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 131
    iget v2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->lastTopicsCount:I

    const/4 v3, 0x1

    if-eq v2, v1, :cond_0

    .line 132
    iput v1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->lastTopicsCount:I

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 136
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v6

    .line 10
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 11
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "getDialog(did)"

    if-eqz v7, :cond_4

    .line 12
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 139
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Lorg/telegram/messenger/MessagesController;->getDialog(J)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v8

    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v8, v11, v12}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result v8

    if-nez v8, :cond_2

    .line 141
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    if-nez v7, :cond_3

    .line 142
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 144
    :cond_3
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 149
    :cond_4
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v6

    .line 10
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 11
    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 12
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 150
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Lorg/telegram/messenger/MessagesController;->getDialog(J)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v11

    iget-wide v12, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v11, v12, v13}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result v11

    if-nez v11, :cond_5

    .line 152
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    if-nez v7, :cond_6

    .line 153
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 155
    :cond_6
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 160
    :cond_7
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v6

    .line 161
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 162
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 163
    invoke-interface {v6, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move v1, v3

    .line 166
    :cond_8
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    .line 167
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 168
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 169
    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move v1, v3

    goto/16 :goto_1

    :cond_9
    if-eqz v1, :cond_a

    .line 174
    new-instance v0, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/controller/ForkTopicsController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method public final getAlertTopics()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    check-cast v4, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 198
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 857
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1045
    :cond_1
    new-instance v2, Lcom/iMe/fork/controller/ForkTopicsController$getAlertTopics$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/iMe/fork/controller/ForkTopicsController$getAlertTopics$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 199
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 857
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 200
    :cond_3
    sget-object v0, Lcom/iMe/storage/data/repository/topics/Topic;->Companion:Lcom/iMe/storage/data/repository/topics/Topic$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/data/repository/topics/Topic$Companion;->autoTopics()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    move-object v7, v5

    check-cast v7, Lcom/iMe/storage/data/repository/topics/Topic;

    .line 201
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v8

    if-ne v8, v7, :cond_5

    move v8, v4

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_4

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    check-cast v6, Lcom/iMe/storage/domain/model/topics/TopicModel;

    if-nez v6, :cond_7

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v6, p0

    .line 202
    invoke-static/range {v6 .. v12}, Lcom/iMe/fork/controller/ForkTopicsController;->createNewTopic$default(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/data/repository/topics/Topic;JIILjava/lang/Object;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v6

    .line 1621
    :cond_7
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 200
    :cond_8
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAllTopicsNotEmpty()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 185
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_1
    if-eqz v5, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1045
    :cond_3
    new-instance v0, Lcom/iMe/fork/controller/ForkTopicsController$getAllTopicsNotEmpty$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/iMe/fork/controller/ForkTopicsController$getAllTopicsNotEmpty$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 27
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedTopicId(Z)J
    .locals 2

    if-eqz p1, :cond_0

    .line 252
    iget-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    :goto_0
    return-wide v0
.end method

.method public final getTopic(J)Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/topics/TopicModel;

    return-object p1
.end method

.method public final getTopicForDialog(J)Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 189
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/MessagesController;->isArchivedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 188
    :goto_1
    check-cast v1, Lcom/iMe/storage/domain/model/topics/TopicModel;

    return-object v1
.end method

.method public final getTopicsBackupData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/TopicBackup;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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
    check-cast v2, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 260
    invoke-static {v2}, Lcom/iMe/fork/models/backup/BackupMappingKt;->mapToBackup(Lcom/iMe/storage/domain/model/topics/TopicModel;)Lcom/iMe/fork/models/backup/TopicBackup;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTopicsNotEmpty(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/topics/TopicModel;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-eqz v4, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1045
    :cond_3
    new-instance p1, Lcom/iMe/fork/controller/ForkTopicsController$getTopicsNotEmpty$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/iMe/fork/controller/ForkTopicsController$getTopicsNotEmpty$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final hasSelectedTopic(Z)Z
    .locals 4

    .line 254
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->getSelectedTopicId(Z)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isNoTopicFirstEnabled()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    return v0
.end method

.method public final isTopicsBarAtBottomEnabled()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    return v0
.end method

.method public final isTopicsBarEnabled()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isTopicsBarEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isTopicsBarEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarEnabled:Z

    .line 48
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isTopicsBarAtBottomEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isTopicsBarAtBottomEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    .line 49
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isNoTopicFirstEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isNoTopicFirstEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    return-void
.end method

.method public final loadTopics()V
    .locals 3

    .line 81
    invoke-direct {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;->getTopics(J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/fork/controller/ForkTopicsController;->setTopics(Ljava/util/List;)V

    return-void
.end method

.method public final removeTopicDialog(J)V
    .locals 1

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/controller/ForkTopicsController;->getTopicForDialog(J)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/iMe/fork/controller/ForkTopicsController;->removeTopicDialog(Lcom/iMe/storage/domain/model/topics/TopicModel;J)V

    return-void
.end method

.method public final removeTopicFilterDialogs(Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 3

    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 123
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 124
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->saveTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 8

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->cleanup()V

    .line 63
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTopicsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTopicsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarEnabled:Z

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTopicsBarAtBottom()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTopicsBarAtBottom()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getNoTopicFirst()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getNoTopicFirst()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTopics()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 73
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTopics()Ljava/util/List;

    move-result-object p1

    .line 1559
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 1591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_3

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v2, Lcom/iMe/fork/models/backup/TopicBackup;

    int-to-long v4, v1

    .line 73
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v6, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v2, v4, v5, v6, v7}, Lcom/iMe/fork/models/backup/BackupMappingKt;->mapToDb(Lcom/iMe/fork/models/backup/TopicBackup;JJ)Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;

    move-result-object v1

    .line 1592
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    .line 74
    :cond_4
    invoke-direct {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1, v1, v2, v0}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;->restoreBackup(JLjava/util/List;)V

    .line 75
    invoke-direct {p0, v0}, Lcom/iMe/fork/controller/ForkTopicsController;->setTopics(Ljava/util/List;)V

    .line 77
    :cond_5
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->saveConfig()V

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
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isTopicsBarEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isTopicsBarAtBottomEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isNoTopicFirstEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final selectTopic(ZJ)V
    .locals 2

    if-eqz p1, :cond_1

    .line 208
    iget-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    return-void

    .line 211
    :cond_0
    iput-wide p2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    goto :goto_0

    .line 213
    :cond_1
    iget-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_2

    return-void

    .line 216
    :cond_2
    iput-wide p2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    .line 218
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 219
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final setNoTopicFirstEnabled(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    return-void
.end method

.method public final setTopicsBarAtBottomEnabled(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    return-void
.end method

.method public final setTopicsBarEnabled(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarEnabled:Z

    return-void
.end method

.method public final swapTopics(Lcom/iMe/storage/domain/model/topics/TopicModel;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 2

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v0

    .line 116
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->setOrder(I)V

    .line 117
    invoke-virtual {p2, v0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->setOrder(I)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/storage/domain/model/topics/TopicModel;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 118
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    return-void
.end method

.method public final updateCatalog(Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 223
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 224
    iget-object v0, v7, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 766
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 224
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    invoke-interface {v10, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_1
    sget-object v0, Lcom/iMe/storage/data/repository/topics/Topic;->Companion:Lcom/iMe/storage/data/repository/topics/Topic$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/data/repository/topics/Topic$Companion;->autoTopics()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v13, 0x0

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/iMe/storage/data/repository/topics/Topic;

    .line 227
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v15, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v2

    if-ne v2, v14, :cond_4

    move v2, v15

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    check-cast v1, Lcom/iMe/storage/domain/model/topics/TopicModel;

    if-nez v1, :cond_6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static/range {v0 .. v6}, Lcom/iMe/fork/controller/ForkTopicsController;->createNewTopic$default(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/data/repository/topics/Topic;JIILjava/lang/Object;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v1

    .line 229
    :cond_6
    invoke-virtual {v14}, Lcom/iMe/storage/data/repository/topics/Topic;->getPresets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    neg-long v3, v3

    .line 229
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 766
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 230
    iget-object v6, v7, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 1726
    instance-of v14, v6, Ljava/util/Collection;

    if-eqz v14, :cond_a

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_a

    :cond_9
    move v4, v15

    goto :goto_6

    .line 1727
    :cond_a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 230
    invoke-virtual {v14}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v14

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    xor-int/2addr v12, v15

    if-nez v12, :cond_b

    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_8

    .line 857
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 231
    :cond_c
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 232
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    :cond_e
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 234
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 235
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 236
    invoke-direct {v7, v1}, Lcom/iMe/fork/controller/ForkTopicsController;->putTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    .line 237
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v13, v15

    goto/16 :goto_1

    .line 242
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics()V

    .line 243
    invoke-direct {v7, v9}, Lcom/iMe/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    if-eqz v8, :cond_10

    .line 244
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :cond_10
    if-eqz v13, :cond_11

    .line 246
    new-instance v0, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda1;

    invoke-direct {v0, v7}, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/controller/ForkTopicsController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method
