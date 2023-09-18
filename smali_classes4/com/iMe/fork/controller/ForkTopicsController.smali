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
    value = "SMAP\nForkTopicsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForkTopicsController.kt\ncom/iMe/fork/controller/ForkTopicsController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,350:1\n56#2,6:351\n1559#3:357\n1590#3,4:358\n1855#3,2:362\n766#3:381\n857#3,2:382\n1045#3:384\n766#3:385\n857#3,2:386\n1045#3:388\n766#3:389\n857#3,2:390\n1045#3:392\n766#3:393\n857#3,2:394\n1549#3:396\n1620#3,2:397\n1622#3:400\n766#3:401\n857#3,2:402\n1855#3:404\n1549#3:405\n1620#3,3:406\n766#3:409\n857#3:410\n1726#3,3:411\n858#3:414\n1856#3:415\n1963#3,14:416\n1963#3,14:430\n1549#3:444\n1620#3,3:445\n1179#3,2:448\n1253#3,4:450\n1549#3:454\n1620#3,3:455\n10#4,3:364\n10#4,6:367\n10#4,6:373\n14#4,2:379\n1#5:399\n*S KotlinDebug\n*F\n+ 1 ForkTopicsController.kt\ncom/iMe/fork/controller/ForkTopicsController\n*L\n30#1:351,6\n86#1:357\n86#1:358,4\n103#1:362,2\n199#1:381\n199#1:382,2\n200#1:384\n203#1:385\n203#1:386,2\n204#1:388\n216#1:389\n216#1:390,2\n216#1:392\n217#1:393\n217#1:394,2\n218#1:396\n218#1:397,2\n218#1:400\n242#1:401\n242#1:402,2\n244#1:404\n247#1:405\n247#1:406,3\n248#1:409\n248#1:410\n248#1:411,3\n248#1:414\n244#1:415\n275#1:416,14\n277#1:430,14\n279#1:444\n279#1:445,3\n328#1:448,2\n328#1:450,4\n334#1:454\n334#1:455,3\n153#1:364,3\n156#1:367,6\n167#1:373,6\n153#1:379,2\n*E\n"
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

    .line 344
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

    .line 35
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isTopicsBarAtBottomEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    .line 36
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isNoTopicFirstEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    const-wide/16 v0, -0x1

    .line 40
    iput-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    .line 41
    iput-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    .line 42
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

    .line 285
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->calcNextId()J

    move-result-wide p2

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->calcNextOrder()I

    move-result p4

    .line 283
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/fork/controller/ForkTopicsController;->createNewTopic(Lcom/iMe/storage/data/repository/topics/Topic;JI)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object p0

    return-object p0
.end method

.method private static final filterTopics$lambda$10(Lcom/iMe/fork/controller/ForkTopicsController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
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

    .line 333
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

    .line 334
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

    .line 334
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v2, v3, v4}, Lcom/iMe/storage/data/mapper/topics/TopicMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/topics/TopicModel;J)Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    return-void
.end method

.method private final putTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 3

    .line 302
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

    .line 307
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 309
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->saveTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method private final saveTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 4

    .line 313
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

    .line 315
    iget-object v1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics()V

    if-eqz v0, :cond_2

    .line 319
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 323
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

    .line 320
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

    .line 328
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

    .line 328
    :cond_0
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    .line 329
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics()V

    return-void
.end method

.method private static final updateCatalog$lambda$28(Lcom/iMe/fork/controller/ForkTopicsController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
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

    .line 103
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

    .line 104
    invoke-virtual {p0, v1, v2}, Lcom/iMe/fork/controller/ForkTopicsController;->getTopicForDialog(J)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 105
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-nez v4, :cond_0

    .line 106
    invoke-direct {p0, v3, v1, v2}, Lcom/iMe/fork/controller/ForkTopicsController;->removeTopicDialog(Lcom/iMe/storage/domain/model/topics/TopicModel;J)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->putTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    .line 110
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics()V

    .line 111
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    return-void
.end method

.method public final addTopicDialog(Lcom/iMe/storage/domain/model/topics/TopicModel;J)V
    .locals 8

    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->calcNextId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->setTopicId(J)V

    .line 118
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/iMe/fork/controller/ForkTopicsController;->removeTopicDialog(J)V

    .line 119
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

    .line 121
    :cond_1
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-direct {p0, v0}, Lcom/iMe/fork/controller/ForkTopicsController;->putTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    .line 124
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics()V

    .line 125
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    return-void
.end method

.method public final calcNextId()J
    .locals 8

    .line 275
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

    .line 275
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    .line 1969
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1970
    move-object v5, v4

    check-cast v5, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 275
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

    .line 275
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

    .line 277
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

    .line 277
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v2

    .line 1969
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1970
    move-object v4, v3

    check-cast v4, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 277
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

    .line 277
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

    .line 292
    iput v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->lastTopicsCount:I

    const-wide/16 v0, -0x1

    .line 293
    iput-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    .line 294
    iput-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    return-void
.end method

.method public final createNewTopic(Lcom/iMe/storage/data/repository/topics/Topic;JI)Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 13

    .line 288
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

    .line 147
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 149
    iget v2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->lastTopicsCount:I

    const/4 v3, 0x1

    if-eq v2, v1, :cond_0

    .line 150
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

    .line 154
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 156
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

    .line 157
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Lorg/telegram/messenger/MessagesController;->getDialog(J)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v8

    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v8, v11, v12}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result v8

    if-nez v8, :cond_2

    .line 159
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    if-nez v7, :cond_3

    .line 160
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 162
    :cond_3
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 167
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

    .line 168
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Lorg/telegram/messenger/MessagesController;->getDialog(J)Lorg/telegram/tgnet/TLRPC$Dialog;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v11

    iget-wide v12, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v11, v12, v13}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result v11

    if-nez v11, :cond_5

    .line 170
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    if-nez v7, :cond_6

    .line 171
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 173
    :cond_6
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 178
    :cond_7
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v6

    .line 179
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 180
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 181
    invoke-interface {v6, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move v1, v3

    .line 184
    :cond_8
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    .line 185
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 186
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 187
    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move v1, v3

    goto/16 :goto_1

    :cond_9
    if-eqz v1, :cond_a

    .line 192
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

    .line 215
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

    .line 216
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

    .line 217
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 857
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
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

    .line 219
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

    .line 220
    invoke-static/range {v6 .. v12}, Lcom/iMe/fork/controller/ForkTopicsController;->createNewTopic$default(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/data/repository/topics/Topic;JIILjava/lang/Object;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v6

    .line 1621
    :cond_7
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 218
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

    .line 202
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

    .line 203
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

    .line 271
    iget-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    :goto_0
    return-wide v0
.end method

.method public final getTopic(J)Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 1

    .line 281
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

    .line 206
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

    .line 207
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/MessagesController;->isArchivedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 210
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

    .line 206
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

    .line 279
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

    .line 279
    invoke-static {v2}, Lcom/iMe/fork/models/backup/BackupMappingKt;->mapToBackup(Lcom/iMe/storage/domain/model/topics/TopicModel;)Lcom/iMe/fork/models/backup/TopicBackup;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
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

    .line 198
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

    .line 199
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

    .line 273
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

    .line 36
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

    .line 49
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isTopicsBarEnabled()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isTopicsBarEnabled()Z

    move-result v1

    .line 48
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarEnabled:Z

    .line 53
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isTopicsBarAtBottomEnabled()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isTopicsBarAtBottomEnabled()Z

    move-result v1

    .line 52
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    .line 57
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isNoTopicFirstEnabled()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isNoTopicFirstEnabled()Z

    move-result v1

    .line 56
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    return-void
.end method

.method public final loadTopics()V
    .locals 3

    .line 99
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

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/controller/ForkTopicsController;->getTopicForDialog(J)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/iMe/fork/controller/ForkTopicsController;->removeTopicDialog(Lcom/iMe/storage/domain/model/topics/TopicModel;J)V

    return-void
.end method

.method public final removeTopicFilterDialogs(Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 3

    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 141
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 142
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->saveTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 8

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->cleanup()V

    .line 76
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTopicsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTopicsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarEnabled:Z

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTopicsBarAtBottom()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTopicsBarAtBottom()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    .line 82
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getNoTopicFirst()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getNoTopicFirst()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    .line 85
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTopics()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 86
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

    .line 89
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v6, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 87
    invoke-static {v2, v4, v5, v6, v7}, Lcom/iMe/fork/models/backup/BackupMappingKt;->mapToDb(Lcom/iMe/fork/models/backup/TopicBackup;JJ)Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;

    move-result-object v1

    .line 1592
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    .line 92
    :cond_4
    invoke-direct {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1, v1, v2, v0}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;->restoreBackup(JLjava/util/List;)V

    .line 93
    invoke-direct {p0, v0}, Lcom/iMe/fork/controller/ForkTopicsController;->setTopics(Ljava/util/List;)V

    .line 95
    :cond_5
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isTopicsBarEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isTopicsBarAtBottomEnabled()Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-boolean v2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    .line 66
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isNoTopicFirstEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final selectTopic(ZJ)V
    .locals 2

    if-eqz p1, :cond_1

    .line 226
    iget-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    return-void

    .line 229
    :cond_0
    iput-wide p2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    goto :goto_0

    .line 231
    :cond_1
    iget-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_2

    return-void

    .line 234
    :cond_2
    iput-wide p2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    .line 236
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 237
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

    .line 36
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

    .line 133
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v0

    .line 134
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->setOrder(I)V

    .line 135
    invoke-virtual {p2, v0}, Lcom/iMe/storage/domain/model/topics/TopicModel;->setOrder(I)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/storage/domain/model/topics/TopicModel;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 136
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

    .line 241
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 242
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

    .line 242
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    invoke-interface {v10, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
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

    .line 245
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

    .line 247
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

    .line 247
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

    .line 248
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

    .line 248
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

    .line 249
    :cond_c
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 250
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    :cond_e
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 252
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 253
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 254
    invoke-direct {v7, v1}, Lcom/iMe/fork/controller/ForkTopicsController;->putTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    .line 255
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v13, v15

    goto/16 :goto_1

    .line 260
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics()V

    .line 261
    invoke-direct {v7, v9}, Lcom/iMe/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    if-eqz v8, :cond_10

    .line 262
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :cond_10
    if-eqz v13, :cond_11

    .line 264
    new-instance v0, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda1;

    invoke-direct {v0, v7}, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/controller/ForkTopicsController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method
