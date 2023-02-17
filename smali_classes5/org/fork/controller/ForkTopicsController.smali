.class public final Lorg/fork/controller/ForkTopicsController;
.super Lorg/telegram/messenger/BaseController;
.source "ForkTopicsController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/controller/ForkTopicsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForkTopicsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForkTopicsController.kt\norg/fork/controller/ForkTopicsController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CollectionExt.kt\ncom/smedialink/utils/extentions/common/CollectionExtKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,342:1\n56#2,6:343\n1557#3:349\n1588#3,4:350\n1849#3,2:354\n764#3:367\n855#3,2:368\n1043#3:370\n764#3:371\n855#3,2:372\n1043#3:374\n764#3:375\n855#3,2:376\n1043#3:378\n764#3:379\n855#3,2:380\n1547#3:382\n1618#3,2:383\n1620#3:386\n1895#3,14:387\n1895#3,14:401\n1547#3:415\n1618#3,3:416\n1177#3,2:419\n1251#3,4:421\n764#3:425\n855#3,2:426\n1849#3:428\n1547#3:429\n1618#3,3:430\n764#3:433\n855#3:434\n1720#3,3:435\n856#3:438\n1850#3:439\n1547#3:440\n1618#3,3:441\n10#4,3:356\n10#4,6:359\n14#4,2:365\n1#5:385\n*S KotlinDebug\n*F\n+ 1 ForkTopicsController.kt\norg/fork/controller/ForkTopicsController\n*L\n29#1:343,6\n87#1:349\n87#1:350,4\n99#1:354,2\n186#1:367\n186#1:368,2\n187#1:370\n190#1:371\n190#1:372,2\n191#1:374\n203#1:375\n203#1:376,2\n203#1:378\n204#1:379\n204#1:380,2\n205#1:382\n205#1:383,2\n205#1:386\n231#1:387,14\n233#1:401,14\n235#1:415\n235#1:416,3\n242#1:419,2\n242#1:421,4\n251#1:425\n251#1:426,2\n253#1:428\n256#1:429\n256#1:430,3\n256#1:433\n256#1:434\n256#1:435,3\n256#1:438\n253#1:439\n323#1:440\n323#1:441,3\n153#1:356,3\n156#1:359,6\n153#1:365,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/fork/controller/ForkTopicsController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/fork/controller/ForkTopicsController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dao$delegate:Lkotlin/Lazy;

.field private isAutoUpdateTopicsCatalogEnabled:Z

.field private isNoTopicFirstEnabled:Z

.field private isTopicsBarAtBottomEnabled:Z

.field private isTopicsBarEnabled:Z

.field private lastAutoUpdateTopicsCatalogTime:J

.field private lastTopicsCount:I

.field private selectedArchiveTopicId:J

.field private selectedAutoUpdateTopicsCatalogInterval:Lorg/fork/enums/Interval;

.field private selectedMainTopicId:J

.field private topics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2z2MKIr12FVM9ow9fpHQdLZJ-aA(Lorg/fork/controller/ForkTopicsController;Lcom/smedialink/storage/domain/model/topics/TopicModel;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/ForkTopicsController;->saveTopic$lambda-33(Lorg/fork/controller/ForkTopicsController;Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CGKdr-yOHWyesvr4OoEANUJmfFw(Lorg/fork/controller/ForkTopicsController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/ForkTopicsController;->insertTopics$lambda-35(Lorg/fork/controller/ForkTopicsController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X4ChP_fOSzx0v40pYtR8GY2qVYs(Lorg/fork/controller/ForkTopicsController;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/controller/ForkTopicsController;->updateCatalog$lambda-32(Lorg/fork/controller/ForkTopicsController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t3WC5CNyVlWA3BvpVYRWrZ-wAn8(Lorg/fork/controller/ForkTopicsController;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/controller/ForkTopicsController;->filterTopics$lambda-10(Lorg/fork/controller/ForkTopicsController;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/controller/ForkTopicsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/controller/ForkTopicsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/controller/ForkTopicsController;->Companion:Lorg/fork/controller/ForkTopicsController$Companion;

    .line 337
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/fork/controller/ForkTopicsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lorg/fork/controller/ForkTopicsController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/fork/controller/ForkTopicsController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 29
    iput-object p1, p0, Lorg/fork/controller/ForkTopicsController;->dao$delegate:Lkotlin/Lazy;

    .line 32
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isTopicsBarEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/ForkTopicsController;->isTopicsBarEnabled:Z

    .line 33
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isTopicsBarAtBottomEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    .line 34
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isAutoUpdateTopicsCatalogEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/ForkTopicsController;->isAutoUpdateTopicsCatalogEnabled:Z

    .line 35
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedAutoUpdateTopicsCatalogInterval()Lorg/fork/enums/Interval;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/controller/ForkTopicsController;->selectedAutoUpdateTopicsCatalogInterval:Lorg/fork/enums/Interval;

    .line 36
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isNoTopicFirstEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    .line 39
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->lastAutoUpdateTopicsCatalogTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fork/controller/ForkTopicsController;->lastAutoUpdateTopicsCatalogTime:J

    const-wide/16 v0, -0x1

    .line 41
    iput-wide v0, p0, Lorg/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    .line 42
    iput-wide v0, p0, Lorg/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    .line 43
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 26
    sget-object v0, Lorg/fork/controller/ForkTopicsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static synthetic createNewTopic$default(Lorg/fork/controller/ForkTopicsController;Lcom/smedialink/storage/data/repository/topics/Topic;JIILjava/lang/Object;)Lcom/smedialink/storage/domain/model/topics/TopicModel;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 281
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->calcNextId()J

    move-result-wide p2

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->calcNextOrder()I

    move-result p4

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/fork/controller/ForkTopicsController;->createNewTopic(Lcom/smedialink/storage/data/repository/topics/Topic;JI)Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object p0

    return-object p0
.end method

.method private static final filterTopics$lambda-10(Lorg/fork/controller/ForkTopicsController;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoad:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private final getDao()Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/fork/controller/ForkTopicsController;->dao$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;

    return-object v0
.end method

.method public static final getInstance(I)Lorg/fork/controller/ForkTopicsController;
    .locals 1

    sget-object v0, Lorg/fork/controller/ForkTopicsController;->Companion:Lorg/fork/controller/ForkTopicsController$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/controller/ForkTopicsController$Companion;->getInstance(I)Lorg/fork/controller/ForkTopicsController;

    move-result-object p0

    return-object p0
.end method

.method private final insertTopics(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/topics/TopicModel;",
            ">;)V"
        }
    .end annotation

    .line 322
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/fork/controller/ForkTopicsController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/fork/controller/ForkTopicsController$$ExternalSyntheticLambda3;-><init>(Lorg/fork/controller/ForkTopicsController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final insertTopics$lambda-35(Lorg/fork/controller/ForkTopicsController;Ljava/util/List;)V
    .locals 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$topics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lorg/fork/controller/ForkTopicsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;

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
    check-cast v2, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 323
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v2, v3, v4}, Lcom/smedialink/storage/data/mapper/topics/TopicMappingKt;->mapToDb(Lcom/smedialink/storage/domain/model/topics/TopicModel;J)Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    return-void
.end method

.method private final needSkipAutoUpdateCatalog()Z
    .locals 6

    .line 328
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lorg/fork/controller/ForkTopicsController;->selectedAutoUpdateTopicsCatalogInterval:Lorg/fork/enums/Interval;

    invoke-virtual {v1}, Lorg/fork/enums/Interval;->getDays()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 329
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/fork/controller/ForkTopicsController;->lastAutoUpdateTopicsCatalogTime:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final putTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V
    .locals 3

    .line 296
    iget-object v0, p0, Lorg/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final removeTopicDialog(Lcom/smedialink/storage/domain/model/topics/TopicModel;J)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 303
    invoke-direct {p0, p1}, Lorg/fork/controller/ForkTopicsController;->saveTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method private final saveTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V
    .locals 4

    .line 307
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

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

    .line 309
    iget-object v1, p0, Lorg/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_1
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->filterTopics()V

    if-eqz v0, :cond_2

    .line 313
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/fork/controller/ForkTopicsController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/fork/controller/ForkTopicsController$$ExternalSyntheticLambda2;-><init>(Lorg/fork/controller/ForkTopicsController;Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 317
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private static final saveTopic$lambda-33(Lorg/fork/controller/ForkTopicsController;Lcom/smedialink/storage/domain/model/topics/TopicModel;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lorg/fork/controller/ForkTopicsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide p0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;->removeTopic(JJ)V

    return-void
.end method

.method private static final updateCatalog$lambda-32(Lorg/fork/controller/ForkTopicsController;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->topicsDidLoad:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addOrEditTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V
    .locals 10

    const-string/jumbo v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 100
    invoke-virtual {p0, v1, v2}, Lorg/fork/controller/ForkTopicsController;->getTopicForDialog(J)Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    const/4 v4, 0x1

    :cond_2
    :goto_1
    if-nez v4, :cond_0

    .line 102
    invoke-direct {p0, v3, v1, v2}, Lorg/fork/controller/ForkTopicsController;->removeTopicDialog(Lcom/smedialink/storage/domain/model/topics/TopicModel;J)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-direct {p0, p1}, Lorg/fork/controller/ForkTopicsController;->putTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    .line 106
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->filterTopics()V

    .line 107
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    return-void
.end method

.method public final addTopicDialog(Lcom/smedialink/storage/domain/model/topics/TopicModel;J)V
    .locals 8

    const-string/jumbo v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 112
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->calcNextId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->setTopicId(J)V

    .line 114
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/fork/controller/ForkTopicsController;->removeTopicDialog(J)V

    .line 115
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/fork/controller/ForkTopicsController;->getTopic(J)Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lorg/fork/controller/ForkTopicsController;->createNewTopic$default(Lorg/fork/controller/ForkTopicsController;Lcom/smedialink/storage/data/repository/topics/Topic;JIILjava/lang/Object;)Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object v0

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p0, v0}, Lorg/fork/controller/ForkTopicsController;->putTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    .line 120
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->filterTopics()V

    .line 121
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    return-void
.end method

.method public final calcNextId()J
    .locals 8

    .line 231
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->getTopicsList()Ljava/util/Collection;

    move-result-object v0

    .line 1895
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1896
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 1897
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1898
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 1899
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 231
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    .line 1901
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1902
    move-object v5, v4

    check-cast v5, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 231
    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_3

    move-object v1, v4

    move-wide v2, v5

    .line 1907
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 231
    :goto_1
    check-cast v0, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_2
    return-wide v0
.end method

.method public final calcNextOrder()I
    .locals 5

    .line 233
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->getTopicsList()Ljava/util/Collection;

    move-result-object v0

    .line 1895
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1896
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 1897
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1898
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 1899
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 233
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v2

    .line 1901
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1902
    move-object v4, v3

    check-cast v4, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 233
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v4

    if-ge v2, v4, :cond_3

    move-object v1, v3

    move v2, v4

    .line 1907
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 233
    :goto_1
    check-cast v0, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_2
    return v0
.end method

.method public final cleanup()V
    .locals 2

    const/4 v0, 0x0

    .line 286
    iput v0, p0, Lorg/fork/controller/ForkTopicsController;->lastTopicsCount:I

    const-wide/16 v0, -0x1

    .line 287
    iput-wide v0, p0, Lorg/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    .line 288
    iput-wide v0, p0, Lorg/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    return-void
.end method

.method public final createNewTopic(Lcom/smedialink/storage/data/repository/topics/Topic;JI)Lcom/smedialink/storage/domain/model/topics/TopicModel;
    .locals 13

    .line 282
    new-instance v12, Lcom/smedialink/storage/domain/model/topics/TopicModel;

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

    invoke-direct/range {v0 .. v11}, Lcom/smedialink/storage/domain/model/topics/TopicModel;-><init>(JLjava/lang/String;Lcom/smedialink/storage/data/repository/topics/Topic;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method public final filterTopics()V
    .locals 10

    .line 147
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->getTopicsList()Ljava/util/Collection;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 149
    iget v2, p0, Lorg/fork/controller/ForkTopicsController;->lastTopicsCount:I

    const/4 v3, 0x1

    if-eq v2, v1, :cond_0

    .line 150
    iput v1, p0, Lorg/fork/controller/ForkTopicsController;->lastTopicsCount:I

    const/4 v1, 0x1

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

    if-eqz v2, :cond_6

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 154
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    .line 10
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 11
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 12
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 157
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v9, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v9, :cond_2

    goto :goto_2

    .line 158
    :cond_2
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    if-nez v9, :cond_3

    .line 159
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 165
    :cond_4
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v6

    .line 166
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 167
    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 168
    invoke-interface {v6, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    .line 171
    :cond_5
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    .line 172
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 173
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 174
    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    .line 179
    new-instance v0, Lorg/fork/controller/ForkTopicsController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/fork/controller/ForkTopicsController$$ExternalSyntheticLambda1;-><init>(Lorg/fork/controller/ForkTopicsController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public final getAlertTopics()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->getTopicsList()Ljava/util/Collection;

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

    check-cast v4, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 203
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1043
    :cond_1
    new-instance v2, Lorg/fork/controller/ForkTopicsController$getAlertTopics$$inlined$sortedBy$1;

    invoke-direct {v2}, Lorg/fork/controller/ForkTopicsController$getAlertTopics$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 764
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 855
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

    check-cast v5, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 204
    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    :cond_3
    sget-object v0, Lcom/smedialink/storage/data/repository/topics/Topic;->Companion:Lcom/smedialink/storage/data/repository/topics/Topic$Companion;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/repository/topics/Topic$Companion;->autoTopics()Ljava/util/List;

    move-result-object v0

    .line 1547
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1619
    move-object v7, v5

    check-cast v7, Lcom/smedialink/storage/data/repository/topics/Topic;

    .line 206
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v8

    if-ne v8, v7, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_4

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    check-cast v6, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    if-nez v6, :cond_7

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v6, p0

    .line 207
    invoke-static/range {v6 .. v12}, Lorg/fork/controller/ForkTopicsController;->createNewTopic$default(Lorg/fork/controller/ForkTopicsController;Lcom/smedialink/storage/data/repository/topics/Topic;JIILjava/lang/Object;)Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object v6

    .line 206
    :cond_7
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 205
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
            "Lcom/smedialink/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->getTopicsList()Ljava/util/Collection;

    move-result-object v0

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
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

    check-cast v3, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 190
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

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

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1043
    :cond_3
    new-instance v0, Lorg/fork/controller/ForkTopicsController$getAllTopicsNotEmpty$$inlined$sortedBy$1;

    invoke-direct {v0}, Lorg/fork/controller/ForkTopicsController$getAllTopicsNotEmpty$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 26
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedAutoUpdateTopicsCatalogInterval()Lorg/fork/enums/Interval;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/fork/controller/ForkTopicsController;->selectedAutoUpdateTopicsCatalogInterval:Lorg/fork/enums/Interval;

    return-object v0
.end method

.method public final getSelectedTopicId(Z)J
    .locals 2

    if-eqz p1, :cond_0

    .line 227
    iget-wide v0, p0, Lorg/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    :goto_0
    return-wide v0
.end method

.method public final getTopic(J)Lcom/smedialink/storage/domain/model/topics/TopicModel;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    return-object p1
.end method

.method public final getTopicForDialog(J)Lcom/smedialink/storage/domain/model/topics/TopicModel;
    .locals 4

    .line 193
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->getTopicsList()Ljava/util/Collection;

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

    check-cast v2, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 194
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/MessagesController;->isArchivedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

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

    .line 193
    :goto_1
    check-cast v1, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    return-object v1
.end method

.method public final getTopicsBackupData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fork/models/backup/TopicBackup;",
            ">;"
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->getTopicsList()Ljava/util/Collection;

    move-result-object v0

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 235
    invoke-static {v2}, Lorg/fork/models/backup/BackupMappingKt;->mapToBackup(Lcom/smedialink/storage/domain/model/topics/TopicModel;)Lorg/fork/models/backup/TopicBackup;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTopicsList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/smedialink/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getTopicsNotEmpty(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/topics/TopicModel;",
            ">;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->getTopicsList()Ljava/util/Collection;

    move-result-object v0

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
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

    check-cast v3, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 186
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1043
    :cond_3
    new-instance p1, Lorg/fork/controller/ForkTopicsController$getTopicsNotEmpty$$inlined$sortedBy$1;

    invoke-direct {p1}, Lorg/fork/controller/ForkTopicsController$getTopicsNotEmpty$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final hasSelectedTopic(Z)Z
    .locals 4

    .line 229
    invoke-virtual {p0, p1}, Lorg/fork/controller/ForkTopicsController;->getSelectedTopicId(Z)J

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

.method public final isAutoUpdateTopicsCatalogEnabled()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lorg/fork/controller/ForkTopicsController;->isAutoUpdateTopicsCatalogEnabled:Z

    return v0
.end method

.method public final isNoTopicFirstEnabled()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lorg/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    return v0
.end method

.method public final isTopicsBarAtBottomEnabled()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lorg/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    return v0
.end method

.method public final isTopicsBarEnabled()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lorg/fork/controller/ForkTopicsController;->isTopicsBarEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isTopicsBarEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isTopicsBarEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ForkTopicsController;->setTopicsBarEnabled(Z)V

    .line 50
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isTopicsBarAtBottomEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isTopicsBarAtBottomEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ForkTopicsController;->setTopicsBarAtBottomEnabled(Z)V

    .line 51
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isAutoUpdateTopicsCatalogEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isAutoUpdateTopicsCatalogEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ForkTopicsController;->setAutoUpdateTopicsCatalogEnabled(Z)V

    .line 52
    sget-object v0, Lorg/fork/enums/Interval;->Companion:Lorg/fork/enums/Interval$Companion;

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedAutoUpdateTopicsCatalogInterval()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedAutoUpdateTopicsCatalogInterval()Lorg/fork/enums/Interval;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedAutoUpdateTopicsCatalogInterval()Lorg/fork/enums/Interval;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/fork/enums/Interval$Companion;->mapNameToEnum(Ljava/lang/String;Lorg/fork/enums/Interval;)Lorg/fork/enums/Interval;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ForkTopicsController;->setSelectedAutoUpdateTopicsCatalogInterval(Lorg/fork/enums/Interval;)V

    .line 53
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isNoTopicFirstEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isNoTopicFirstEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ForkTopicsController;->setNoTopicFirstEnabled(Z)V

    .line 54
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->lastAutoUpdateTopicsCatalogTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->lastAutoUpdateTopicsCatalogTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fork/controller/ForkTopicsController;->lastAutoUpdateTopicsCatalogTime:J

    return-void
.end method

.method public final loadTopics()V
    .locals 3

    .line 95
    invoke-direct {p0}, Lorg/fork/controller/ForkTopicsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;->getTopics(J)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ForkTopicsController;->setTopics(Ljava/util/List;)V

    return-void
.end method

.method public final removeTopicDialog(J)V
    .locals 1

    .line 125
    invoke-virtual {p0, p1, p2}, Lorg/fork/controller/ForkTopicsController;->getTopicForDialog(J)Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/fork/controller/ForkTopicsController;->removeTopicDialog(Lcom/smedialink/storage/domain/model/topics/TopicModel;J)V

    return-void
.end method

.method public final removeTopicFilterDialogs(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V
    .locals 3

    const-string/jumbo v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 141
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterDialogs()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getFilterArchivedDialogs()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 142
    invoke-direct {p0, p1}, Lorg/fork/controller/ForkTopicsController;->saveTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method public final resetLastAutoUpdateCatalogTime()V
    .locals 2

    .line 278
    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fork/controller/ForkTopicsController;->lastAutoUpdateTopicsCatalogTime:J

    return-void
.end method

.method public final restoreBackup(Lorg/fork/models/backup/Backup;)V
    .locals 8

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->cleanup()V

    .line 71
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getTopicsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getTopicsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/ForkTopicsController;->isTopicsBarEnabled:Z

    .line 74
    :cond_0
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getTopicsBarAtBottom()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getTopicsBarAtBottom()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    .line 77
    :cond_1
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isAutoUpdateCatalogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isAutoUpdateCatalogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/ForkTopicsController;->isAutoUpdateTopicsCatalogEnabled:Z

    .line 80
    :cond_2
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedAutoUpdateCatalogInterval()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 81
    sget-object v0, Lorg/fork/enums/Interval;->Companion:Lorg/fork/enums/Interval$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedAutoUpdateCatalogInterval()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedAutoUpdateTopicsCatalogInterval()Lorg/fork/enums/Interval;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/fork/enums/Interval$Companion;->mapNameToEnum(Ljava/lang/String;Lorg/fork/enums/Interval;)Lorg/fork/enums/Interval;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/controller/ForkTopicsController;->selectedAutoUpdateTopicsCatalogInterval:Lorg/fork/enums/Interval;

    .line 83
    :cond_3
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getNoTopicFirst()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getNoTopicFirst()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    .line 86
    :cond_4
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getTopics()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 87
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getTopics()Ljava/util/List;

    move-result-object p1

    .line 1557
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 1589
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_5

    .line 1590
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    check-cast v2, Lorg/fork/models/backup/TopicBackup;

    int-to-long v4, v1

    .line 87
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v6, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v2, v4, v5, v6, v7}, Lorg/fork/models/backup/BackupMappingKt;->mapToDb(Lorg/fork/models/backup/TopicBackup;JJ)Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    .line 88
    :cond_6
    invoke-direct {p0}, Lorg/fork/controller/ForkTopicsController;->getDao()Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1, v1, v2, v0}, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;->restoreBackup(JLjava/util/List;)V

    .line 89
    invoke-virtual {p0, v0}, Lorg/fork/controller/ForkTopicsController;->setTopics(Ljava/util/List;)V

    .line 91
    :cond_7
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 4

    .line 59
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isTopicsBarEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->isTopicsBarEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isTopicsBarAtBottomEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isAutoUpdateTopicsCatalogEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->isAutoUpdateTopicsCatalogEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedAutoUpdateTopicsCatalogInterval()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->getSelectedAutoUpdateTopicsCatalogInterval()Lorg/fork/enums/Interval;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isNoTopicFirstEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->lastAutoUpdateTopicsCatalogTime()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/fork/controller/ForkTopicsController;->lastAutoUpdateTopicsCatalogTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final selectTopic(ZJ)V
    .locals 2

    if-eqz p1, :cond_1

    .line 213
    iget-wide v0, p0, Lorg/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    return-void

    .line 216
    :cond_0
    iput-wide p2, p0, Lorg/fork/controller/ForkTopicsController;->selectedArchiveTopicId:J

    goto :goto_0

    .line 218
    :cond_1
    iget-wide v0, p0, Lorg/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    cmp-long p1, p2, v0

    if-nez p1, :cond_2

    return-void

    .line 221
    :cond_2
    iput-wide p2, p0, Lorg/fork/controller/ForkTopicsController;->selectedMainTopicId:J

    .line 223
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    .line 224
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final setAutoUpdateTopicsCatalogEnabled(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lorg/fork/controller/ForkTopicsController;->isAutoUpdateTopicsCatalogEnabled:Z

    return-void
.end method

.method public final setNoTopicFirstEnabled(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lorg/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled:Z

    return-void
.end method

.method public final setSelectedAutoUpdateTopicsCatalogInterval(Lorg/fork/enums/Interval;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lorg/fork/controller/ForkTopicsController;->selectedAutoUpdateTopicsCatalogInterval:Lorg/fork/enums/Interval;

    return-void
.end method

.method public final setTopics(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newTopics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 1177
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1178
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1251
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1252
    check-cast v0, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;

    .line 242
    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;->getTopicId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Lcom/smedialink/storage/data/mapper/topics/TopicMappingKt;->mapToDomain(Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;)Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/controller/ForkTopicsController;->topics:Ljava/util/Map;

    .line 243
    invoke-virtual {p0}, Lorg/fork/controller/ForkTopicsController;->filterTopics()V

    return-void
.end method

.method public final setTopicsBarAtBottomEnabled(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lorg/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled:Z

    return-void
.end method

.method public final setTopicsBarEnabled(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lorg/fork/controller/ForkTopicsController;->isTopicsBarEnabled:Z

    return-void
.end method

.method public final swapTopics(JJ)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2}, Lorg/fork/controller/ForkTopicsController;->getTopic(J)Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0, p3, p4}, Lorg/fork/controller/ForkTopicsController;->getTopic(J)Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result p3

    .line 132
    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getOrder()I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->setOrder(I)V

    .line 133
    invoke-virtual {p2, p3}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->setOrder(I)V

    const/4 p3, 0x2

    new-array p3, p3, [Lcom/smedialink/storage/domain/model/topics/TopicModel;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const/4 p1, 0x1

    aput-object p2, p3, p1

    .line 134
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public final updateCatalog(ZLorg/fork/utils/Callbacks$Callback1;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    if-eqz p1, :cond_1

    .line 247
    iget-boolean v0, v7, Lorg/fork/controller/ForkTopicsController;->isAutoUpdateTopicsCatalogEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/fork/controller/ForkTopicsController;->needSkipAutoUpdateCatalog()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 250
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-virtual/range {p0 .. p0}, Lorg/fork/controller/ForkTopicsController;->getTopicsList()Ljava/util/Collection;

    move-result-object v0

    .line 764
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 251
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_3
    sget-object v0, Lcom/smedialink/storage/data/repository/topics/Topic;->Companion:Lcom/smedialink/storage/data/repository/topics/Topic$Companion;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/repository/topics/Topic$Companion;->autoTopics()Ljava/util/List;

    move-result-object v0

    .line 1849
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/smedialink/storage/data/repository/topics/Topic;

    .line 254
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v2

    if-ne v2, v14, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_7
    move-object v1, v15

    :goto_3
    check-cast v1, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    if-nez v1, :cond_8

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static/range {v0 .. v6}, Lorg/fork/controller/ForkTopicsController;->createNewTopic$default(Lorg/fork/controller/ForkTopicsController;Lcom/smedialink/storage/data/repository/topics/Topic;JIILjava/lang/Object;)Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object v1

    .line 256
    :cond_8
    invoke-virtual {v14}, Lcom/smedialink/storage/data/repository/topics/Topic;->getPresets()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    goto/16 :goto_7

    .line 1547
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1619
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    neg-long v3, v3

    .line 256
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 764
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 256
    invoke-virtual/range {p0 .. p0}, Lorg/fork/controller/ForkTopicsController;->getTopicsList()Ljava/util/Collection;

    move-result-object v6

    .line 1720
    instance-of v14, v6, Ljava/util/Collection;

    if-eqz v14, :cond_d

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_d

    :cond_c
    const/4 v4, 0x1

    goto :goto_6

    .line 1721
    :cond_d
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    .line 256
    invoke-virtual {v14}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getDialogs()Ljava/util/Set;

    move-result-object v14

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_e

    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_b

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v15

    :goto_7
    if-nez v15, :cond_10

    .line 257
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 258
    :cond_10
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 259
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 260
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getPresets()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v15}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 261
    invoke-direct {v7, v1}, Lorg/fork/controller/ForkTopicsController;->putTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    .line 262
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    goto/16 :goto_1

    .line 267
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/fork/controller/ForkTopicsController;->filterTopics()V

    .line 268
    invoke-direct {v7, v9}, Lorg/fork/controller/ForkTopicsController;->insertTopics(Ljava/util/List;)V

    if-nez v8, :cond_12

    goto :goto_8

    .line 269
    :cond_12
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v8, v0}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :goto_8
    if-eqz v13, :cond_13

    .line 271
    new-instance v0, Lorg/fork/controller/ForkTopicsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Lorg/fork/controller/ForkTopicsController$$ExternalSyntheticLambda0;-><init>(Lorg/fork/controller/ForkTopicsController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method
