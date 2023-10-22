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
    value = "SMAP\nForkTopicsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForkTopicsController.kt\ncom/iMe/fork/controller/ForkTopicsController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,369:1\n56#2,6:370\n1559#3:376\n1590#3,4:377\n1855#3,2:381\n766#3:400\n857#3,2:401\n1045#3:403\n766#3:404\n857#3,2:405\n1045#3:407\n766#3:408\n857#3,2:409\n1045#3:411\n766#3:412\n857#3,2:413\n1549#3:415\n1620#3,2:416\n1622#3:419\n766#3:420\n857#3,2:421\n1855#3:423\n1549#3:424\n1620#3,3:425\n766#3:428\n857#3:429\n1726#3,3:430\n858#3:433\n1856#3:434\n1963#3,14:435\n1963#3,14:449\n1549#3:463\n1620#3,3:464\n1179#3,2:467\n1253#3,4:469\n1549#3:473\n1620#3,3:474\n10#4,3:383\n10#4,6:386\n10#4,6:392\n14#4,2:398\n1#5:418\n*S KotlinDebug\n*F\n+ 1 ForkTopicsController.kt\ncom/iMe/fork/controller/ForkTopicsController\n*L\n30#1:370,6\n86#1:376\n86#1:377,4\n103#1:381,2\n209#1:400\n209#1:401,2\n210#1:403\n213#1:404\n213#1:405,2\n214#1:407\n226#1:408\n226#1:409,2\n226#1:411\n227#1:412\n227#1:413,2\n228#1:415\n228#1:416,2\n228#1:419\n252#1:420\n252#1:421,2\n254#1:423\n257#1:424\n257#1:425,3\n258#1:428\n258#1:429\n258#1:430,3\n258#1:433\n254#1:434\n285#1:435,14\n287#1:449,14\n289#1:463\n289#1:464,3\n347#1:467,2\n347#1:469,4\n353#1:473\n353#1:474,3\n153#1:383,3\n156#1:386,6\n167#1:392,6\n153#1:398,2\n*E\n"
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
.method public static synthetic $r8$lambda$24n6tFiGEOsPvjnFUcYWeFHT3DE(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->saveTopic$lambda$33(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CteA2Sr-at_acw3Gk15uVXRh6hw(Lcom/iMe/fork/controller/ForkTopicsController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->insertTopics$lambda$36(Lcom/iMe/fork/controller/ForkTopicsController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bOjPTe5BxZC8Ghl8u0U0ix2qutE(Lcom/iMe/fork/controller/ForkTopicsController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics$lambda$10(Lcom/iMe/fork/controller/ForkTopicsController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dZkM3qlvU8fGXNsAWaAbOt7jYGI(Lcom/iMe/fork/controller/ForkTopicsController;ZJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/fork/controller/ForkTopicsController;->setHidden$lambda$11(Lcom/iMe/fork/controller/ForkTopicsController;ZJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lrINbVmNS_s4f0ul0Xa_ugMSXY8(Lcom/iMe/fork/controller/ForkTopicsController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->updateCatalog$lambda$29(Lcom/iMe/fork/controller/ForkTopicsController;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/ForkTopicsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/ForkTopicsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/ForkTopicsController;->Companion:Lcom/iMe/fork/controller/ForkTopicsController$Companion;

    .line 363
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

    .line 295
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->calcNextId()J

    move-result-wide p2

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->calcNextOrder()I

    move-result p4

    .line 293
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

    .line 352
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/controller/ForkTopicsController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final insertTopics$lambda$36(Lcom/iMe/fork/controller/ForkTopicsController;Ljava/util/List;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$topics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
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

    .line 353
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v2, v3, v4}, Lcom/iMe/storage/data/mapper/topics/TopicMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/topics/TopicModel;J)Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    return-void
.end method

.method private final putTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 3

    .line 321
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

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 328
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->saveTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method private final saveTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 4

    .line 332
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

    .line 334
    iget-object v1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics()V

    if-eqz v0, :cond_2

    .line 338
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 342
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private static final saveTopic$lambda$33(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
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

.method private static final setHidden$lambda$11(Lcom/iMe/fork/controller/ForkTopicsController;ZJ)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v3, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    move v2, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;->setHidden(ZJJ)V

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

    .line 347
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

    .line 347
    :cond_0
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    .line 348
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics()V

    return-void
.end method

.method private static final updateCatalog$lambda$29(Lcom/iMe/fork/controller/ForkTopicsController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
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

    .line 285
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

    .line 285
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    .line 1969
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1970
    move-object v5, v4

    check-cast v5, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 285
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

    .line 285
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

    .line 287
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

    .line 287
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v2

    .line 1969
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1970
    move-object v4, v3

    check-cast v4, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 287
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

    .line 287
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

    .line 311
    iput v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->lastTopicsCount:I

    const-wide/16 v0, -0x1

    .line 312
    iput-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    .line 313
    iput-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    return-void
.end method

.method public final createNewTopic(Lcom/iMe/storage/data/repository/topics/Topic;JI)Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 14

    .line 298
    new-instance v13, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 304
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 305
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 306
    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x100

    const/4 v12, 0x0

    move-object v0, v13

    move-wide/from16 v1, p2

    move-object v4, p1

    move/from16 v5, p4

    .line 298
    invoke-direct/range {v0 .. v12}, Lcom/iMe/storage/domain/model/topics/TopicModel;-><init>(JLjava/lang/String;Lcom/iMe/storage/data/repository/topics/Topic;IZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v13
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

    .line 225
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

    .line 226
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

    .line 227
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 857
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 228
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

    .line 229
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

    .line 230
    invoke-static/range {v6 .. v12}, Lcom/iMe/fork/controller/ForkTopicsController;->createNewTopic$default(Lcom/iMe/fork/controller/ForkTopicsController;Lcom/iMe/storage/data/repository/topics/Topic;JIILjava/lang/Object;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v6

    .line 1621
    :cond_7
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 228
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

    .line 212
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

    .line 213
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

    .line 281
    iget-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    :goto_0
    return-wide v0
.end method

.method public final getTopic(J)Lcom/iMe/storage/domain/model/topics/TopicModel;
    .locals 1

    .line 291
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

    .line 216
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

    .line 217
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/MessagesController;->isArchivedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 220
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

    .line 216
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

    .line 289
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

    .line 289
    invoke-static {v2}, Lcom/iMe/fork/models/backup/BackupMappingKt;->mapToBackup(Lcom/iMe/storage/domain/model/topics/TopicModel;)Lcom/iMe/fork/models/backup/TopicBackup;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTopicsNotEmpty(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation

    .line 208
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

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/topics/TopicModel;

    .line 209
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isHidden()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_3

    if-eqz p1, :cond_1

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

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    if-eqz v5, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1045
    :cond_4
    new-instance p1, Lcom/iMe/fork/controller/ForkTopicsController$getTopicsNotEmpty$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/iMe/fork/controller/ForkTopicsController$getTopicsNotEmpty$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final hasSelectedTopic(Z)Z
    .locals 4

    .line 283
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

    .line 236
    iget-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    return-void

    .line 239
    :cond_0
    iput-wide p2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    goto :goto_0

    .line 241
    :cond_1
    iget-wide v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_2

    return-void

    .line 244
    :cond_2
    iput-wide p2, p0, Lcom/iMe/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    .line 246
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 247
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final setHidden(JZ)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/topics/TopicModel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {v0, p3}, Lcom/iMe/storage/domain/model/topics/TopicModel;->setHidden(Z)V

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/iMe/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.iMe.storage.domain.model.topics.TopicModel"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lj$/util/Map$-EL;->replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->topicsSettingsChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 203
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/fork/controller/ForkTopicsController;ZJ)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

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

    .line 251
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 252
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

    .line 252
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    invoke-interface {v10, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
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

    .line 255
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

    .line 257
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

    .line 257
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

    .line 258
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

    .line 258
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

    .line 259
    :cond_c
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    .line 260
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    :cond_e
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 262
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 263
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 264
    invoke-direct {v7, v1}, Lcom/iMe/fork/controller/ForkTopicsController;->putTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    .line 265
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v13, v15

    goto/16 :goto_1

    .line 270
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/fork/controller/ForkTopicsController;->filterTopics()V

    .line 271
    invoke-direct {v7, v9}, Lcom/iMe/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    if-eqz v8, :cond_10

    .line 272
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :cond_10
    if-eqz v13, :cond_11

    .line 274
    new-instance v0, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda1;

    invoke-direct {v0, v7}, Lcom/iMe/fork/controller/ForkTopicsController$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/controller/ForkTopicsController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method
