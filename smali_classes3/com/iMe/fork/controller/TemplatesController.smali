.class public final Lcom/iMe/fork/controller/TemplatesController;
.super Lorg/telegram/messenger/BaseController;
.source "TemplatesController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/TemplatesController$Companion;,
        Lcom/iMe/fork/controller/TemplatesController$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplatesController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplatesController.kt\ncom/iMe/fork/controller/TemplatesController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 IterableExt.kt\ncom/iMe/utils/extentions/common/IterableExtKt\n*L\n1#1,218:1\n56#2,6:219\n1179#3,2:225\n1253#3,4:227\n1549#3:231\n1620#3,3:232\n766#3:235\n857#3,2:236\n1002#3,2:247\n1002#3,2:249\n1011#3,2:251\n1549#3:253\n1620#3,3:254\n1549#3:257\n1620#3,3:258\n1855#3,2:261\n1855#3,2:263\n1855#3,2:265\n766#3:267\n857#3,2:268\n1549#3:270\n1620#3,3:271\n1855#3,2:274\n1855#3,2:276\n766#3:278\n857#3,2:279\n1549#3:281\n1620#3,3:282\n1549#3:285\n1620#3,3:286\n1549#3:289\n1620#3,3:290\n1549#3:293\n1620#3,3:294\n4#4,9:238\n*S KotlinDebug\n*F\n+ 1 TemplatesController.kt\ncom/iMe/fork/controller/TemplatesController\n*L\n31#1:219,6\n41#1:225,2\n41#1:227,4\n52#1:231\n52#1:232,3\n89#1:235\n89#1:236,2\n95#1:247,2\n96#1:249,2\n97#1:251,2\n128#1:253\n128#1:254,3\n129#1:257\n129#1:258,3\n140#1:261,2\n156#1:263,2\n181#1:265,2\n192#1:267\n192#1:268,2\n193#1:270\n193#1:271,3\n58#1:274,2\n62#1:276,2\n70#1:278\n70#1:279,2\n71#1:281\n71#1:282,3\n131#1:285\n131#1:286,3\n147#1:289\n147#1:290,3\n163#1:293\n163#1:294,3\n93#1:238,9\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/TemplatesController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/TemplatesController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dao$delegate:Lkotlin/Lazy;

.field private templates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/templates/TemplateModel;",
            ">;"
        }
    .end annotation
.end field

.field private templatesChannelId:J


# direct methods
.method public static synthetic $r8$lambda$2Y98dXzwR3O9NQuM5pvdpP6phH8(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/TemplatesController;->convertToTemplate$lambda$21(Lcom/iMe/fork/controller/TemplatesController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5oZl9EFrxbqYjdy40nNnqpg_JZM(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/TemplatesController;->markAsSent$lambda$16(Lcom/iMe/fork/controller/TemplatesController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6FqtfqR9GgvtXJmwU0vLAUa7aco(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/TemplatesController;->removeTemplates$lambda$33(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HoUcp-UITFmynUkfL7D61N88_y8(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/TemplatesController;->convertToTemplate$lambda$20(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OwdPcXnQ9xQ5ofD1-euJ72LkVaQ(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/TemplatesController;->renameTemplate$lambda$24(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PZ2pIRnBBEct2STmS-VRcjXxHfI(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/TemplatesController;->renameTemplate$lambda$25(Lcom/iMe/fork/controller/TemplatesController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V6sOpfgGCLa-A-AZ2EQVH7FtNek(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/TemplatesController;->removeTemplates$lambda$34(Lcom/iMe/fork/controller/TemplatesController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z2fjSqA7aCVoUv9DiWkYSLHE4rE(Lcom/iMe/fork/controller/TemplatesController;Lcom/iMe/storage/domain/model/templates/TemplateModel;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/fork/controller/TemplatesController;->markAsSent$lambda$15(Lcom/iMe/fork/controller/TemplatesController;Lcom/iMe/storage/domain/model/templates/TemplateModel;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$_RDwy5WCiozoTZweWPkj141-gRU(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/TemplatesController;->incrementUsageRating$lambda$28(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$momIJHj668F1Bh2nUBkGvewIToA(Lcom/iMe/fork/models/backup/Backup;Lcom/iMe/fork/controller/TemplatesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/fork/controller/TemplatesController;->restoreBackup$lambda$8(Lcom/iMe/fork/models/backup/Backup;Lcom/iMe/fork/controller/TemplatesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oUp3-ZRNk6xS7SVl8NT_q5jxsXE(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/TemplatesController;->incrementUsageRating$lambda$29(Lcom/iMe/fork/controller/TemplatesController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oryWrDKa7bsXbF07IVT-0chm7ho(Lcom/iMe/fork/controller/TemplatesController;Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/TemplatesController;->addTemplate$lambda$14(Lcom/iMe/fork/controller/TemplatesController;Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q363YPq-RrUwSsT0xU1k4PH8pVM(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/TemplatesController;->restoreBackup$lambda$8$lambda$7(Lcom/iMe/fork/controller/TemplatesController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sqBlxsJSu_28IHoOqbuMmKQUYy0(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/TemplatesController;->clearAllTemplates$lambda$31(Lcom/iMe/fork/controller/TemplatesController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$usir1EVWmGSpY1xsYmQr4FLHh48(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/controller/TemplatesController;->clearAllTemplates$lambda$30(Lcom/iMe/fork/controller/TemplatesController;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/TemplatesController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/TemplatesController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/TemplatesController;->Companion:Lcom/iMe/fork/controller/TemplatesController$Companion;

    .line 212
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/TemplatesController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/fork/controller/TemplatesController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/fork/controller/TemplatesController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/iMe/fork/controller/TemplatesController;->dao$delegate:Lkotlin/Lazy;

    .line 34
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->templatesChannelId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/fork/controller/TemplatesController;->templatesChannelId:J

    .line 35
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 28
    sget-object v0, Lcom/iMe/fork/controller/TemplatesController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static final addTemplate$lambda$14(Lcom/iMe/fork/controller/TemplatesController;Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$template"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/iMe/fork/controller/TemplatesController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method private static final clearAllTemplates$lambda$30(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/iMe/fork/controller/TemplatesController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;->clearAllTemplates(J)V

    return-void
.end method

.method private static final clearAllTemplates$lambda$31(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static final convertToTemplate$lambda$20(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newTemplates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/iMe/fork/controller/TemplatesController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

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
    check-cast v2, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    .line 131
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v2, v3, v4}, Lcom/iMe/storage/data/mapper/template/TemplateMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/templates/TemplateModel;J)Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    return-void
.end method

.method private static final convertToTemplate$lambda$21(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private final getDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/controller/TemplatesController;->dao$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/TemplatesController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/TemplatesController;->Companion:Lcom/iMe/fork/controller/TemplatesController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/TemplatesController$Companion;->getInstance(I)Lcom/iMe/fork/controller/TemplatesController;

    move-result-object p0

    return-object p0
.end method

.method private static final incrementUsageRating$lambda$28(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newTemplates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/iMe/fork/controller/TemplatesController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

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
    check-cast v2, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    .line 163
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v2, v3, v4}, Lcom/iMe/storage/data/mapper/template/TemplateMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/templates/TemplateModel;J)Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    return-void
.end method

.method private static final incrementUsageRating$lambda$29(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static final markAsSent$lambda$15(Lcom/iMe/fork/controller/TemplatesController;Lcom/iMe/storage/domain/model/templates/TemplateModel;J)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newTemplate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/iMe/fork/controller/TemplatesController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {p1, v1, v2}, Lcom/iMe/storage/data/mapper/template/TemplateMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/templates/TemplateModel;J)Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    .line 119
    invoke-direct {p0}, Lcom/iMe/fork/controller/TemplatesController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v0, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;->removeTemplates(Ljava/util/List;J)V

    return-void
.end method

.method private static final markAsSent$lambda$16(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static final removeTemplates$lambda$33(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$messageIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/iMe/fork/controller/TemplatesController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;->removeTemplates(Ljava/util/List;J)V

    return-void
.end method

.method private static final removeTemplates$lambda$34(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static final renameTemplate$lambda$24(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newTemplates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/iMe/fork/controller/TemplatesController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

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
    check-cast v2, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    .line 147
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v2, v3, v4}, Lcom/iMe/storage/data/mapper/template/TemplateMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/templates/TemplateModel;J)Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    return-void
.end method

.method private static final renameTemplate$lambda$25(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static final restoreBackup$lambda$8(Lcom/iMe/fork/models/backup/Backup;Lcom/iMe/fork/controller/TemplatesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    const-string v0, "$backup"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_2

    .line 56
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz p3, :cond_2

    .line 57
    new-instance p3, Landroidx/collection/LongSparseArray;

    invoke-direct {p3}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 58
    check-cast p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const-string v2, "response.users"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 59
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p3, v3, v4, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_0
    new-instance p3, Landroidx/collection/LongSparseArray;

    invoke-direct {p3}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 62
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const-string v2, "response.chats"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 63
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p3, v3, v4, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 65
    :cond_1
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    const-string p3, "response.messages"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 66
    sget-object p3, Lcom/iMe/fork/controller/TemplatesController$restoreBackup$1$3;->INSTANCE:Lcom/iMe/fork/controller/TemplatesController$restoreBackup$1$3;

    invoke-static {p2, p3}, Lkotlin/sequences/SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 67
    sget-object p3, Lcom/iMe/fork/controller/TemplatesController$restoreBackup$1$4;->INSTANCE:Lcom/iMe/fork/controller/TemplatesController$restoreBackup$1$4;

    invoke-static {p2, p3}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 65
    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/iMe/fork/models/backup/Backup;->getTemplates()Ljava/util/List;

    move-result-object p0

    .line 766
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    .line 70
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getMessageId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 857
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 71
    :cond_4
    iget-object p0, p1, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    .line 1549
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    .line 71
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1621
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 71
    :cond_5
    invoke-static {p0, p3}, Lkotlin/collections/MapsKt;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 72
    invoke-direct {p1}, Lcom/iMe/fork/controller/TemplatesController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    move-result-object p0

    invoke-virtual {p1}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    iget-wide v0, p3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p0, v0, v1, p2}, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;->restoreBackup(JLjava/util/List;)V

    .line 73
    new-instance p0, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda5;

    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/fork/controller/TemplatesController;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final restoreBackup$lambda$8$lambda$7(Lcom/iMe/fork/controller/TemplatesController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->templatesDidChanged:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addTemplate(JJLjava/lang/String;)V
    .locals 14

    move-object v0, p0

    const-string v1, "name"

    move-object/from16 v9, p5

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v1, Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v3, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, v1

    move-wide v5, p1

    move-wide/from16 v7, p3

    invoke-direct/range {v2 .. v13}, Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;-><init>(JJJLjava/lang/String;JIZ)V

    .line 103
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 105
    iget-object v3, v0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/template/TemplateMappingKt;->mapToDomain(Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;)Lcom/iMe/storage/domain/model/templates/TemplateModel;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v1}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda8;-><init>(Lcom/iMe/fork/controller/TemplatesController;Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final checkValidTemplatesChat(J)Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canWriteToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final clearAllTemplates()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 172
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda7;-><init>(Lcom/iMe/fork/controller/TemplatesController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 175
    new-instance v0, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/fork/controller/TemplatesController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final convertToTemplate(Ljava/util/List;JLjava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "messageIds"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "name"

    move-object/from16 v13, p4

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v1, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 128
    new-instance v15, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    int-to-long v4, v3

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v3, v15

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v12}, Lcom/iMe/storage/domain/model/templates/TemplateModel;-><init>(JJLjava/lang/String;JIZ)V

    .line 1621
    invoke-interface {v2, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, v0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    .line 1549
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    .line 129
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getMessageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 1621
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_1
    invoke-static {v1, v3}, Lkotlin/collections/MapsKt;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    .line 130
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0, v2}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda11;-><init>(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 133
    new-instance v1, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/controller/TemplatesController;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 28
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getTemplateMessageIds(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 192
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getGroupId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    .line 192
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getGroupId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1549
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    .line 193
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getMessageId()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1621
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    return-object p1
.end method

.method public final getTemplates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/iMe/storage/domain/model/templates/TemplateModel;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    return-object v0
.end method

.method public final getTemplatesBackupData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/templates/TemplateModel;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

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

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    .line 89
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getSent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTemplatesChannelId()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/iMe/fork/controller/TemplatesController;->templatesChannelId:J

    return-wide v0
.end method

.method public final getTemplatesList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/templates/TemplateModel;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/iMe/fork/controller/TemplatesController;->getTemplatesBackupData()Ljava/util/List;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 7
    move-object v5, v4

    check-cast v5, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    .line 93
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getGroupId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 8
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 94
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedTemplatesSortingType:Lcom/iMe/fork/enums/TemplatesSortingType;

    if-nez v1, :cond_3

    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/iMe/fork/controller/TemplatesController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    .line 1011
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_6

    new-instance v1, Lcom/iMe/fork/controller/TemplatesController$getTemplatesList$$inlined$sortByDescending$1;

    invoke-direct {v1}, Lcom/iMe/fork/controller/TemplatesController$getTemplatesList$$inlined$sortByDescending$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 1002
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_6

    new-instance v1, Lcom/iMe/fork/controller/TemplatesController$getTemplatesList$$inlined$sortBy$2;

    invoke-direct {v1}, Lcom/iMe/fork/controller/TemplatesController$getTemplatesList$$inlined$sortBy$2;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 1002
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_6

    new-instance v1, Lcom/iMe/fork/controller/TemplatesController$getTemplatesList$$inlined$sortBy$1;

    invoke-direct {v1}, Lcom/iMe/fork/controller/TemplatesController$getTemplatesList$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6
    :goto_2
    return-object v0
.end method

.method public final incrementUsageRating(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "messages"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 157
    iget-object v4, v0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    .line 158
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getUsageRating()I

    move-result v4

    add-int/lit8 v13, v4, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x2f

    const/16 v16, 0x0

    invoke-static/range {v5 .. v16}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->copy$default(Lcom/iMe/storage/domain/model/templates/TemplateModel;JJLjava/lang/String;JIZILjava/lang/Object;)Lcom/iMe/storage/domain/model/templates/TemplateModel;

    move-result-object v4

    .line 159
    iget-object v5, v0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_1
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda13;

    invoke-direct {v3, v0, v1}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda13;-><init>(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 165
    new-instance v1, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/fork/controller/TemplatesController;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->templatesChannelId()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->templatesChannelId()J

    move-result-wide v1

    .line 197
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/fork/controller/TemplatesController;->templatesChannelId:J

    return-void
.end method

.method public final loadTemplates()V
    .locals 5

    .line 40
    invoke-direct {p0}, Lcom/iMe/fork/controller/TemplatesController;->getDao()Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/main/TemplatesDao;->getAllTemplatesForUser(J)Ljava/util/List;

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
    check-cast v1, Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;

    .line 41
    invoke-virtual {v1}, Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;->getMessageId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/template/TemplateMappingKt;->mapToDomain(Lcom/iMe/storage/data/locale/db/model/templates/TemplatesDb;)Lcom/iMe/storage/domain/model/templates/TemplateModel;

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

    .line 42
    :cond_0
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    return-void
.end method

.method public final markAsSent(JJ)V
    .locals 13

    move-object v0, p0

    .line 112
    iget-object v1, v0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    if-nez v1, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance v12, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getGroupId()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, v12

    move-wide/from16 v3, p3

    invoke-direct/range {v2 .. v11}, Lcom/iMe/storage/domain/model/templates/TemplateModel;-><init>(JJLjava/lang/String;JIZ)V

    .line 113
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 115
    iget-object v2, v0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    invoke-interface {v2, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, v0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda9;

    move-wide v3, p1

    invoke-direct {v2, p0, v12, p1, p2}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda9;-><init>(Lcom/iMe/fork/controller/TemplatesController;Lcom/iMe/storage/domain/model/templates/TemplateModel;J)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 121
    new-instance v1, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/controller/TemplatesController;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final removeTemplates(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messageIds"

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

    .line 181
    iget-object v3, p0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 182
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 185
    new-instance p1, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/controller/TemplatesController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final renameTemplate(Ljava/util/List;Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "messageIds"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newName"

    move-object/from16 v14, p2

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 141
    iget-object v3, v0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    int-to-long v12, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x3b

    const/16 v17, 0x0

    move-object/from16 v7, p2

    move-wide/from16 v18, v12

    move/from16 v12, v16

    move-object/from16 v13, v17

    .line 142
    invoke-static/range {v2 .. v13}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->copy$default(Lcom/iMe/storage/domain/model/templates/TemplateModel;JJLjava/lang/String;JIZILjava/lang/Object;)Lcom/iMe/storage/domain/model/templates/TemplateModel;

    move-result-object v2

    .line 143
    iget-object v3, v0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_1
    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda12;

    invoke-direct {v3, v0, v1}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda12;-><init>(Lcom/iMe/fork/controller/TemplatesController;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 149
    new-instance v1, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/controller/TemplatesController;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 6

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTemplatesChannelId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTemplatesChannelId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/iMe/fork/controller/TemplatesController;->checkValidTemplatesChat(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTemplatesChannelId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/fork/controller/TemplatesController;->templatesChannelId:J

    .line 48
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTemplates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTemplates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/iMe/fork/controller/TemplatesController;->templates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 51
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lcom/iMe/fork/controller/TemplatesController;->templatesChannelId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 52
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getTemplates()Ljava/util/List;

    move-result-object v2

    .line 1549
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Lcom/iMe/storage/domain/model/templates/TemplateModel;

    .line 52
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/templates/TemplateModel;->getMessageId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1621
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda14;

    invoke-direct {v2, p1, p0}, Lcom/iMe/fork/controller/TemplatesController$$ExternalSyntheticLambda14;-><init>(Lcom/iMe/fork/models/backup/Backup;Lcom/iMe/fork/controller/TemplatesController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/fork/controller/TemplatesController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 4

    .line 204
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->templatesChannelId()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/iMe/fork/controller/TemplatesController;->templatesChannelId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setTemplatesChannelId(J)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/iMe/fork/controller/TemplatesController;->templatesChannelId:J

    return-void
.end method
