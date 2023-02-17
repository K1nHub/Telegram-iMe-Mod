.class public final Lorg/fork/controller/FiltersController;
.super Lorg/telegram/messenger/BaseController;
.source "FiltersController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/controller/FiltersController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFiltersController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FiltersController.kt\norg/fork/controller/FiltersController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,292:1\n56#2,6:293\n764#3:299\n855#3,2:300\n1601#3,9:302\n1849#3:311\n1850#3:313\n1610#3:314\n1000#3,2:315\n1849#3:317\n1858#3,3:318\n1850#3:321\n1547#3:322\n1618#3,3:323\n1547#3:326\n1618#3,3:327\n1547#3:331\n1618#3,3:332\n1177#3,2:335\n1251#3,4:337\n764#3:341\n855#3,2:342\n1849#3,2:344\n1000#3,2:346\n1849#3,2:348\n764#3:350\n855#3,2:351\n1#4:312\n1#4:330\n*S KotlinDebug\n*F\n+ 1 FiltersController.kt\norg/fork/controller/FiltersController\n*L\n27#1:293,6\n92#1:299\n92#1:300,2\n124#1:302,9\n124#1:311\n124#1:313\n124#1:314\n125#1:315,2\n132#1:317\n137#1:318,3\n132#1:321\n146#1:322\n146#1:323,3\n149#1:326\n149#1:327,3\n204#1:331\n204#1:332,3\n228#1:335,2\n228#1:337,4\n239#1:341\n239#1:342,2\n249#1:344,2\n262#1:346,2\n269#1:348,2\n280#1:350\n280#1:351,2\n124#1:312\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/fork/controller/FiltersController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/fork/controller/FiltersController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activeArchiveSortingTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation
.end field

.field private final activeSortingTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation
.end field

.field private archiveSortingTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation
.end field

.field private final filterSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final filtersDao$delegate:Lkotlin/Lazy;

.field private isAllChatsTabEnabled:Z

.field private isArchiveSortingChatsEnabled:Z

.field private isFoldersFirstEnabled:Z

.field private isHideFoldersEnabled:Z

.field private isIconInsteadAllChatsTabTitleEnabled:Z

.field private isSortingChatsEnabled:Z

.field private selectedAllChatsTabFabs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation
.end field

.field private sortingTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$TeQY_wNic7Lq1r82UEI8I12-aoM(Lorg/fork/controller/FiltersController;Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/FiltersController;->addOrEditFilterSettings$lambda-14(Lorg/fork/controller/FiltersController;Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/controller/FiltersController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/controller/FiltersController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    .line 287
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/fork/controller/FiltersController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 24
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lorg/fork/controller/FiltersController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/fork/controller/FiltersController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 27
    iput-object p1, p0, Lorg/fork/controller/FiltersController;->filtersDao$delegate:Lkotlin/Lazy;

    .line 30
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isHideFoldersEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled:Z

    .line 31
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isFoldersFirstEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/FiltersController;->isFoldersFirstEnabled:Z

    .line 32
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isAllChatsTabEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/FiltersController;->isAllChatsTabEnabled:Z

    .line 33
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isIconInsteadAllChatsTabTitleEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled:Z

    .line 34
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/FiltersController;->selectedAllChatsTabFabs:Ljava/util/Set;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/FiltersController;->sortingTabs:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/FiltersController;->archiveSortingTabs:Ljava/util/List;

    .line 39
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isSortingChatsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    .line 40
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isArchiveSortingChatsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    .line 41
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/FiltersController;->filterSettings:Ljava/util/Map;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/FiltersController;->activeSortingTabs:Ljava/util/List;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/FiltersController;->activeArchiveSortingTabs:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 24
    sget-object v0, Lorg/fork/controller/FiltersController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static final addOrEditFilterSettings$lambda-14(Lorg/fork/controller/FiltersController;Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lorg/fork/controller/FiltersController;->filterSettings:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getFilterId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-direct {p0}, Lorg/fork/controller/FiltersController;->getFiltersDao()Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {p1, v1, v2}, Lcom/smedialink/storage/data/mapper/filter/FilterSettingsMappingKt;->mapToDb(Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;J)Lcom/smedialink/storage/data/locale/db/model/filter/FilterSettingsDb;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/smedialink/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method private final getFiltersDao()Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/fork/controller/FiltersController;->filtersDao$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao;

    return-object v0
.end method

.method public static final getInstance(I)Lorg/fork/controller/FiltersController;
    .locals 1

    sget-object v0, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/controller/FiltersController$Companion;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object p0

    return-object p0
.end method

.method private final loadSortingTabsConfig(ZLandroid/content/SharedPreferences;)V
    .locals 6

    .line 247
    invoke-virtual {p0, p1}, Lorg/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object v0

    .line 248
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 249
    sget-object v1, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v1, p1}, Lorg/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object p1

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fork/enums/SortingFilter;

    .line 252
    sget-object v2, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    .line 253
    :try_start_0
    invoke-static {v1}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/fork/enums/SortingFilter;->getFabByDefault()Lcom/smedialink/storage/domain/model/filters/FilterFab;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 255
    :catch_0
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {v1}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 256
    invoke-virtual {v1}, Lorg/fork/enums/SortingFilter;->getFabByDefault()Lcom/smedialink/storage/domain/model/filters/FilterFab;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 252
    :goto_1
    invoke-virtual {v2, v3}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 258
    invoke-static {v1}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v4

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 259
    invoke-static {v1}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabEnabledKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/fork/enums/SortingFilter;->isEnabledByDefault()Z

    move-result v5

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 250
    new-instance v5, Lorg/fork/models/SortingTabState;

    invoke-direct {v5, v1, v2, v3, v4}, Lorg/fork/models/SortingTabState;-><init>(Lorg/fork/enums/SortingFilter;Ljava/util/Set;IZ)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1000
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    new-instance p1, Lorg/fork/controller/FiltersController$loadSortingTabsConfig$lambda-20$lambda-19$$inlined$sortBy$1;

    invoke-direct {p1}, Lorg/fork/controller/FiltersController$loadSortingTabsConfig$lambda-20$lambda-19$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    return-void
.end method

.method private final refreshActiveSortingTabs(Z)V
    .locals 4

    .line 278
    invoke-virtual {p0, p1}, Lorg/fork/controller/FiltersController;->getActiveSortingTabs(Z)Ljava/util/List;

    move-result-object v0

    .line 279
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    invoke-virtual {p0, p1}, Lorg/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object p1

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/fork/models/SortingTabState;

    .line 280
    invoke-virtual {v3}, Lorg/fork/models/SortingTabState;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final saveSortingTabsConfig(ZLandroid/content/SharedPreferences$Editor;)V
    .locals 3

    .line 269
    invoke-virtual {p0, p1}, Lorg/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object p1

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/models/SortingTabState;

    .line 270
    invoke-virtual {v0}, Lorg/fork/models/SortingTabState;->getType()Lorg/fork/enums/SortingFilter;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/fork/models/SortingTabState;->getPosition()I

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 271
    invoke-virtual {v0}, Lorg/fork/models/SortingTabState;->getType()Lorg/fork/enums/SortingFilter;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabEnabledKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/fork/models/SortingTabState;->isEnabled()Z

    move-result v2

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-virtual {v0}, Lorg/fork/models/SortingTabState;->getType()Lorg/fork/enums/SortingFilter;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v0}, Lorg/fork/models/SortingTabState;->getFabs()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addOrEditFilterSettings(Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;)V
    .locals 2

    const-string/jumbo v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/fork/controller/FiltersController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/fork/controller/FiltersController$$ExternalSyntheticLambda0;-><init>(Lorg/fork/controller/FiltersController;Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final disableSortingFilter(Lorg/fork/enums/SortingFilter;)V
    .locals 2

    const-string/jumbo v0, "sortingFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p1}, Lorg/fork/controller/FiltersController;->getSortingFilterState(Lorg/fork/enums/SortingFilter;)Lorg/fork/models/SortingTabState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/fork/models/SortingTabState;->setEnabled(Z)V

    .line 180
    invoke-virtual {p1}, Lorg/fork/enums/SortingFilter;->isArchive()Z

    move-result p1

    invoke-direct {p0, p1}, Lorg/fork/controller/FiltersController;->refreshActiveSortingTabs(Z)V

    return-void
.end method

.method public final getActiveSortingTabs(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lorg/fork/controller/FiltersController;->activeArchiveSortingTabs:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/fork/controller/FiltersController;->activeSortingTabs:Ljava/util/List;

    :goto_0
    return-object p1
.end method

.method public final getActiveSortingTabsCount(Z)I
    .locals 1

    .line 199
    invoke-virtual {p0, p1}, Lorg/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/fork/controller/FiltersController;->getActiveSortingTabs(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getArchiveSortingTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/fork/controller/FiltersController;->archiveSortingTabs:Ljava/util/List;

    return-object v0
.end method

.method public final getBackupSortingTabs(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/fork/models/backup/SortingTabStateBackup;",
            ">;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lorg/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object p1

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lorg/fork/models/SortingTabState;

    .line 146
    invoke-static {v1}, Lorg/fork/models/backup/BackupMappingKt;->mapToBackup(Lorg/fork/models/SortingTabState;)Lorg/fork/models/backup/SortingTabStateBackup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getEnabledByDefaultTabs(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation

    .line 239
    invoke-virtual {p0, p1}, Lorg/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object p1

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/fork/models/SortingTabState;

    .line 239
    invoke-virtual {v2}, Lorg/fork/models/SortingTabState;->getType()Lorg/fork/enums/SortingFilter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/enums/SortingFilter;->isEnabledByDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getFiltersBackupData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/fork/controller/FiltersController;->filterSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 24
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getPinnedChats(Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->archiveSortingDialogFilters:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->sortingDialogFilters:Ljava/util/ArrayList;

    :goto_0
    const-string v1, "filters"

    .line 228
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1252
    check-cast v1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 230
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 231
    iget-object v6, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v6

    if-lez v6, :cond_2

    :goto_2
    add-int/lit8 v7, v5, 0x1

    .line 232
    iget-object v8, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v8, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v8, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v8, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v7, v6, :cond_1

    goto :goto_3

    :cond_1
    move v5, v7

    goto :goto_2

    .line 235
    :cond_2
    :goto_3
    sget-object v5, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    iget v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v5, p1, v1}, Lorg/fork/enums/SortingFilter$Companion;->getFilterByIdWithExtra(ZI)Lorg/fork/enums/SortingFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 236
    :cond_3
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final getSelectedAllChatsTabFabs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/fork/controller/FiltersController;->selectedAllChatsTabFabs:Ljava/util/Set;

    return-object v0
.end method

.method public final getSettings(I)Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;
    .locals 4

    .line 220
    iget-object v0, p0, Lorg/fork/controller/FiltersController;->filterSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/smedialink/storage/domain/model/filters/FilterFab;

    const/4 v2, 0x0

    .line 222
    sget-object v3, Lcom/smedialink/storage/domain/model/filters/FilterFab;->CREATE_CHAT:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    aput-object v3, v1, v2

    invoke-static {v1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    .line 220
    invoke-direct {v0, p1, v1, v2}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;-><init>(ILjava/util/Set;Lcom/smedialink/storage/domain/model/filters/FilterIcon;)V

    :cond_0
    return-object v0
.end method

.method public final getSortingFilterState(Lorg/fork/enums/SortingFilter;)Lorg/fork/models/SortingTabState;
    .locals 3

    const-string/jumbo v0, "sortingFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lorg/fork/enums/SortingFilter;->isArchive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

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

    check-cast v2, Lorg/fork/models/SortingTabState;

    invoke-virtual {v2}, Lorg/fork/models/SortingTabState;->getType()Lorg/fork/enums/SortingFilter;

    move-result-object v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lorg/fork/models/SortingTabState;

    return-object v1
.end method

.method public final getSortingTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/fork/controller/FiltersController;->sortingTabs:Ljava/util/List;

    return-object v0
.end method

.method public final getSortingTabs(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lorg/fork/controller/FiltersController;->archiveSortingTabs:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/fork/controller/FiltersController;->sortingTabs:Ljava/util/List;

    :goto_0
    return-object p1
.end method

.method public final isAllChatsTabEnabled()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lorg/fork/controller/FiltersController;->isAllChatsTabEnabled:Z

    return v0
.end method

.method public final isFoldersFirstEnabled()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lorg/fork/controller/FiltersController;->isFoldersFirstEnabled:Z

    return v0
.end method

.method public final isHideFoldersEnabled()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled:Z

    return v0
.end method

.method public final isIconInsteadAllChatsTabTitleEnabled()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lorg/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled:Z

    return v0
.end method

.method public final isSortingEnabled(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 156
    iget-boolean p1, p0, Lorg/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lorg/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    :goto_0
    return p1
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isHideFoldersEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isHideFoldersEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/FiltersController;->setHideFoldersEnabled(Z)V

    .line 50
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isFoldersFirstEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isFoldersFirstEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/FiltersController;->setFoldersFirstEnabled(Z)V

    .line 51
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isAllChatsTabEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isAllChatsTabEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/FiltersController;->setAllChatsTabEnabled(Z)V

    .line 52
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isIconInsteadAllChatsTabTitleEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isIconInsteadAllChatsTabTitleEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/FiltersController;->setIconInsteadAllChatsTabTitleEnabled(Z)V

    .line 53
    sget-object v0, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    .line 54
    :try_start_0
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedAllChatsTabFabs()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedAllChatsTabFabs()Ljava/util/Set;

    move-result-object v1

    .line 53
    :goto_0
    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/FiltersController;->setSelectedAllChatsTabFabs(Ljava/util/Set;)V

    .line 59
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isSortingChatsEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    .line 60
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isArchiveSortingChatsEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isArchiveSortingChatsEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, p1}, Lorg/fork/controller/FiltersController;->loadSortingTabsConfig(ZLandroid/content/SharedPreferences;)V

    const/4 v1, 0x1

    .line 62
    invoke-direct {p0, v1, p1}, Lorg/fork/controller/FiltersController;->loadSortingTabsConfig(ZLandroid/content/SharedPreferences;)V

    .line 64
    invoke-direct {p0, v0}, Lorg/fork/controller/FiltersController;->refreshActiveSortingTabs(Z)V

    .line 65
    invoke-direct {p0, v1}, Lorg/fork/controller/FiltersController;->refreshActiveSortingTabs(Z)V

    return-void
.end method

.method public final loadFilterSettings()V
    .locals 5

    .line 202
    iget-object v0, p0, Lorg/fork/controller/FiltersController;->filterSettings:Ljava/util/Map;

    .line 203
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 204
    invoke-direct {p0}, Lorg/fork/controller/FiltersController;->getFiltersDao()Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v1, v2, v3}, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao;->getFilterSettings(J)Ljava/util/List;

    move-result-object v1

    .line 1547
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1619
    check-cast v3, Lcom/smedialink/storage/data/locale/db/model/filter/FilterSettingsDb;

    .line 204
    invoke-virtual {v3}, Lcom/smedialink/storage/data/locale/db/model/filter/FilterSettingsDb;->getFilterId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Lcom/smedialink/storage/data/mapper/filter/FilterSettingsMappingKt;->mapToDomain(Lcom/smedialink/storage/data/locale/db/model/filter/FilterSettingsDb;)Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final removeFilterSettings(I)V
    .locals 3

    .line 216
    iget-object v0, p0, Lorg/fork/controller/FiltersController;->filterSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-direct {p0}, Lorg/fork/controller/FiltersController;->getFiltersDao()Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao;->removeFilterSettings(IJ)V

    return-void
.end method

.method public final restoreAllChatsTabBackup(Lorg/fork/models/backup/Backup;)V
    .locals 1

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isAllChatsTabEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isAllChatsTabEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/FiltersController;->isAllChatsTabEnabled:Z

    .line 103
    :cond_0
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getIconInsteadAllChatsTabTitle()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getIconInsteadAllChatsTabTitle()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled:Z

    .line 106
    :cond_1
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getAllChatsTabFabs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    sget-object v0, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getAllChatsTabFabs()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/controller/FiltersController;->selectedAllChatsTabFabs:Ljava/util/Set;

    :cond_2
    return-void
.end method

.method public final restoreBackup(Lorg/fork/models/backup/Backup;)V
    .locals 7

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getHideFolders()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getHideFolders()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled:Z

    .line 88
    :cond_0
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getFoldersFirst()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getFoldersFirst()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/FiltersController;->isFoldersFirstEnabled:Z

    .line 91
    :cond_1
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getFilters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 92
    invoke-direct {p0}, Lorg/fork/controller/FiltersController;->getFiltersDao()Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getFilters()Ljava/util/List;

    move-result-object p1

    .line 764
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;

    .line 93
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogFiltersById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;->getFilterId()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {v0, v1, v2, v3}, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao;->restoreBackup(JLjava/util/List;)V

    .line 96
    :cond_5
    invoke-virtual {p0}, Lorg/fork/controller/FiltersController;->saveConfig()V

    return-void
.end method

.method public final restoreSortingBackup(ZLorg/fork/models/backup/Backup;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "backup"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "parentFragment"

    move-object/from16 v15, p3

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual/range {p2 .. p2}, Lorg/fork/models/backup/Backup;->isArchiveSortingChatsEnabled()Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/fork/models/backup/Backup;->isSortingChatsEnabled()Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lorg/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lorg/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 120
    invoke-virtual/range {p2 .. p2}, Lorg/fork/models/backup/Backup;->getArchiveSortingSettings()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/fork/models/backup/Backup;->getSortingSettings()Ljava/util/List;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_7

    .line 122
    invoke-virtual/range {p0 .. p1}, Lorg/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object v4

    .line 123
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1601
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1609
    check-cast v6, Lorg/fork/models/backup/SortingTabStateBackup;

    .line 124
    invoke-static {v6}, Lorg/fork/models/backup/BackupMappingKt;->mapToDomain(Lorg/fork/models/backup/SortingTabStateBackup;)Lorg/fork/models/SortingTabState;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1609
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 124
    :cond_5
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1000
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_6

    new-instance v2, Lorg/fork/controller/FiltersController$restoreSortingBackup$lambda-5$$inlined$sortBy$1;

    invoke-direct {v2}, Lorg/fork/controller/FiltersController$restoreSortingBackup$lambda-5$$inlined$sortBy$1;-><init>()V

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 127
    :cond_6
    invoke-direct/range {p0 .. p1}, Lorg/fork/controller/FiltersController;->refreshActiveSortingTabs(Z)V

    :cond_7
    if-eqz v1, :cond_8

    .line 129
    invoke-virtual/range {p2 .. p2}, Lorg/fork/models/backup/Backup;->getArchiveSortingPinnedChats()Ljava/util/Map;

    move-result-object v2

    goto :goto_4

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lorg/fork/models/backup/Backup;->getSortingPinnedChats()Ljava/util/Map;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_d

    .line 131
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    if-eqz v1, :cond_9

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->archiveSortingDialogFilters:Ljava/util/ArrayList;

    goto :goto_5

    :cond_9
    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->sortingDialogFilters:Ljava/util/ArrayList;

    :goto_5
    const-string v4, "filters"

    .line 132
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1849
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 133
    iget-object v4, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 134
    iget-object v4, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->clear()V

    .line 135
    sget-object v4, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    iget v5, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v4, v1, v5}, Lorg/fork/enums/SortingFilter$Companion;->getFilterByIdWithExtra(ZI)Lorg/fork/enums/SortingFilter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    if-nez v4, :cond_a

    goto :goto_6

    .line 137
    :cond_a
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    const/4 v6, 0x0

    .line 1859
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-gez v6, :cond_b

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_b
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 138
    iget-object v7, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v7, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v7, v9, v10, v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->put(JI)V

    move v6, v8

    goto :goto_7

    .line 141
    :cond_c
    iget v4, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    iget-object v5, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iget-object v6, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    iget-object v7, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    iget-object v8, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p3

    move-object/from16 v15, v17

    invoke-static/range {v3 .. v15}, Lorg/telegram/ui/FilterCreateActivity;->saveFilterToServer(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/support/LongSparseIntArray;ZZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    move-object/from16 v15, p3

    goto/16 :goto_6

    :cond_d
    return-void
.end method

.method public final saveConfig()V
    .locals 4

    .line 69
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isHideFoldersEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isFoldersFirstEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/FiltersController;->isFoldersFirstEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isAllChatsTabEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isIconInsteadAllChatsTabTitleEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {p0}, Lorg/fork/controller/FiltersController;->getSelectedAllChatsTabFabs()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isArchiveSortingChatsEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "this"

    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/fork/controller/FiltersController;->saveSortingTabsConfig(ZLandroid/content/SharedPreferences$Editor;)V

    const/4 v1, 0x1

    .line 78
    invoke-direct {p0, v1, v0}, Lorg/fork/controller/FiltersController;->saveSortingTabsConfig(ZLandroid/content/SharedPreferences$Editor;)V

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setAllChatsTabEnabled(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lorg/fork/controller/FiltersController;->isAllChatsTabEnabled:Z

    return-void
.end method

.method public final setArchiveSortingTabs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fork/models/SortingTabState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/fork/controller/FiltersController;->archiveSortingTabs:Ljava/util/List;

    return-void
.end method

.method public final setFoldersFirstEnabled(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lorg/fork/controller/FiltersController;->isFoldersFirstEnabled:Z

    return-void
.end method

.method public final setHideFoldersEnabled(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled:Z

    return-void
.end method

.method public final setIconInsteadAllChatsTabTitleEnabled(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lorg/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled:Z

    return-void
.end method

.method public final setSelectedAllChatsTabFabs(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/fork/controller/FiltersController;->selectedAllChatsTabFabs:Ljava/util/Set;

    return-void
.end method

.method public final setSortingEnabled(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 168
    iput-boolean p2, p0, Lorg/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    goto :goto_0

    .line 170
    :cond_0
    iput-boolean p2, p0, Lorg/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    :goto_0
    return-void
.end method

.method public final setSortingTabs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/fork/models/SortingTabState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lorg/fork/controller/FiltersController;->sortingTabs:Ljava/util/List;

    return-void
.end method

.method public final swapSortingFilters(ZII)V
    .locals 3

    .line 189
    invoke-virtual {p0, p1}, Lorg/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object v0

    .line 190
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fork/models/SortingTabState;

    .line 191
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/fork/models/SortingTabState;

    .line 192
    invoke-virtual {v1, p3}, Lorg/fork/models/SortingTabState;->setPosition(I)V

    .line 193
    invoke-virtual {v2, p2}, Lorg/fork/models/SortingTabState;->setPosition(I)V

    .line 194
    invoke-interface {v0, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-interface {v0, p3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-direct {p0, p1}, Lorg/fork/controller/FiltersController;->refreshActiveSortingTabs(Z)V

    return-void
.end method

.method public final switchSortingFilterEnabled(ZI)V
    .locals 1

    .line 184
    invoke-virtual {p0, p1}, Lorg/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fork/models/SortingTabState;

    invoke-virtual {p2}, Lorg/fork/models/SortingTabState;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/fork/models/SortingTabState;->setEnabled(Z)V

    .line 185
    invoke-direct {p0, p1}, Lorg/fork/controller/FiltersController;->refreshActiveSortingTabs(Z)V

    return-void
.end method

.method public final toggleSortingEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 160
    iget-boolean p1, p0, Lorg/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    goto :goto_0

    .line 162
    :cond_0
    iget-boolean p1, p0, Lorg/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    :goto_0
    return-void
.end method
