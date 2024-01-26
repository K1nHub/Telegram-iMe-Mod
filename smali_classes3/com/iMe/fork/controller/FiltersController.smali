.class public final Lcom/iMe/fork/controller/FiltersController;
.super Lorg/telegram/messenger/BaseController;
.source "FiltersController.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/FiltersController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFiltersController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FiltersController.kt\ncom/iMe/fork/controller/FiltersController\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,391:1\n56#2,6:392\n766#3:398\n857#3,2:399\n1603#3,9:401\n1855#3:410\n1856#3:412\n1612#3:413\n1002#3,2:414\n1855#3:416\n1864#3,3:417\n1856#3:420\n1549#3:425\n1620#3,3:426\n1549#3:430\n1620#3,3:431\n1179#3,2:434\n1253#3,4:436\n766#3:440\n857#3,2:441\n1855#3,2:443\n1002#3,2:445\n1855#3,2:447\n766#3:449\n857#3,2:450\n1#4:411\n1#4:429\n204#5,4:421\n*S KotlinDebug\n*F\n+ 1 FiltersController.kt\ncom/iMe/fork/controller/FiltersController\n*L\n28#1:392,6\n127#1:398\n127#1:399,2\n160#1:401,9\n160#1:410\n160#1:412\n160#1:413\n161#1:414,2\n170#1:416\n176#1:417,3\n170#1:420\n208#1:425\n208#1:426,3\n266#1:430\n266#1:431,3\n292#1:434,2\n292#1:436,4\n307#1:440\n307#1:441,2\n317#1:443,2\n350#1:445,2\n357#1:447,2\n377#1:449\n377#1:450,2\n160#1:411\n206#1:421,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/FiltersController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activeArchiveSortingTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation
.end field

.field private final activeSortingTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation
.end field

.field private archiveSortingTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation
.end field

.field private final filterSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final filtersDao$delegate:Lkotlin/Lazy;

.field private isAllChatsTabEnabled:Z

.field private isArchiveSortingChatsEnabled:Z

.field private isFoldersFirstEnabled:Z

.field private isFoldersHidden:Z

.field private isIconInsteadAllChatsTabTitleEnabled:Z

.field private isSortingChatsEnabled:Z

.field private selectedAllChatsTabFabs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation
.end field

.field private sortingTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$GnbYYgY-mT72xoSbFX2Xs_YgnHQ(Lcom/iMe/fork/controller/FiltersController;Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->addOrEditFilterSettings$lambda$14(Lcom/iMe/fork/controller/FiltersController;Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/FiltersController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/FiltersController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    .line 385
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/FiltersController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/fork/controller/FiltersController$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/fork/controller/FiltersController$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->filtersDao$delegate:Lkotlin/Lazy;

    .line 31
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isFoldersHidden()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden:Z

    .line 32
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isFoldersFirstEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isFoldersFirstEnabled:Z

    .line 33
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isAllChatsTabEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled:Z

    .line 35
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isIconInsteadAllChatsTabTitleEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled:Z

    .line 36
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->selectedAllChatsTabFabs:Ljava/util/Set;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->sortingTabs:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->archiveSortingTabs:Ljava/util/List;

    .line 41
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSortingChatsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    .line 43
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isArchiveSortingChatsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    .line 44
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->filterSettings:Ljava/util/Map;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->activeSortingTabs:Ljava/util/List;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->activeArchiveSortingTabs:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 25
    sget-object v0, Lcom/iMe/fork/controller/FiltersController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static final addOrEditFilterSettings$lambda$14(Lcom/iMe/fork/controller/FiltersController;Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/iMe/fork/controller/FiltersController;->getFiltersDao()Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget-wide v1, p0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {p1, v1, v2}, Lcom/iMe/storage/data/mapper/filter/FilterSettingsMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;J)Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/lang/Object;)J

    return-void
.end method

.method private final getFiltersDao()Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/fork/controller/FiltersController;->filtersDao$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/FiltersController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object p0

    return-object p0
.end method

.method private final loadSortingTabsConfig(ZLandroid/content/SharedPreferences;)V
    .locals 6

    .line 315
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object v0

    .line 316
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 317
    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    invoke-virtual {v1, p1}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object p1

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/fork/enums/SortingFilter;

    .line 321
    sget-object v2, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    .line 324
    :try_start_0
    invoke-static {v1}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-virtual {v1}, Lcom/iMe/fork/enums/SortingFilter;->getFabByDefault()Lcom/iMe/storage/domain/model/filters/FilterFab;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 323
    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 329
    :catch_0
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 330
    invoke-static {v1}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v4

    .line 329
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 333
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    invoke-virtual {v1}, Lcom/iMe/fork/enums/SortingFilter;->getFabByDefault()Lcom/iMe/storage/domain/model/filters/FilterFab;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 321
    :goto_1
    invoke-virtual {v2, v3}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/SortedSet;

    move-result-object v2

    .line 338
    invoke-static {v1}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-virtual {v1}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v4

    .line 337
    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 343
    invoke-static {v1}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabEnabledKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-virtual {v1}, Lcom/iMe/fork/enums/SortingFilter;->isEnabledByDefault()Z

    move-result v5

    .line 342
    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 319
    new-instance v5, Lcom/iMe/fork/models/SortingTabState;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/iMe/fork/models/SortingTabState;-><init>(Lcom/iMe/fork/enums/SortingFilter;Ljava/util/Set;IZ)V

    .line 318
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1002
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    new-instance p1, Lcom/iMe/fork/controller/FiltersController$loadSortingTabsConfig$lambda$20$lambda$19$$inlined$sortBy$1;

    invoke-direct {p1}, Lcom/iMe/fork/controller/FiltersController$loadSortingTabsConfig$lambda$20$lambda$19$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    return-void
.end method

.method private final refreshActiveSortingTabs(Z)V
    .locals 4

    .line 375
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->getActiveSortingTabs(Z)Ljava/util/List;

    move-result-object v0

    .line 376
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 377
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object p1

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
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

    check-cast v3, Lcom/iMe/fork/models/SortingTabState;

    .line 377
    invoke-virtual {v3}, Lcom/iMe/fork/models/SortingTabState;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final saveSortingTabsConfig(ZLandroid/content/SharedPreferences$Editor;)V
    .locals 3

    .line 357
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object p1

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/models/SortingTabState;

    .line 359
    invoke-virtual {v0}, Lcom/iMe/fork/models/SortingTabState;->getType()Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {v0}, Lcom/iMe/fork/models/SortingTabState;->getPosition()I

    move-result v2

    .line 358
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 363
    invoke-virtual {v0}, Lcom/iMe/fork/models/SortingTabState;->getType()Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabEnabledKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {v0}, Lcom/iMe/fork/models/SortingTabState;->isEnabled()Z

    move-result v2

    .line 362
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 367
    invoke-virtual {v0}, Lcom/iMe/fork/models/SortingTabState;->getType()Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v1

    .line 368
    sget-object v2, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v0}, Lcom/iMe/fork/models/SortingTabState;->getFabs()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 366
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addOrEditFilterSettings(Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;)V
    .locals 2

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/iMe/fork/controller/FiltersController;->filterSettings:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getFilterId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lcom/iMe/fork/controller/FiltersController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/iMe/fork/controller/FiltersController$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/controller/FiltersController;Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final disableSortingFilter(Lcom/iMe/fork/enums/SortingFilter;)V
    .locals 2

    const-string v0, "sortingFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->getSortingFilterState(Lcom/iMe/fork/enums/SortingFilter;)Lcom/iMe/fork/models/SortingTabState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iMe/fork/models/SortingTabState;->setEnabled(Z)V

    .line 239
    invoke-virtual {p1}, Lcom/iMe/fork/enums/SortingFilter;->isArchive()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->refreshActiveSortingTabs(Z)V

    return-void
.end method

.method public final getActiveSortingTabs(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->activeArchiveSortingTabs:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->activeSortingTabs:Ljava/util/List;

    :goto_0
    return-object p1
.end method

.method public final getActiveSortingTabsCount(Z)I
    .locals 1

    .line 259
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->getActiveSortingTabs(Z)Ljava/util/List;

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
            "Lcom/iMe/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/iMe/fork/controller/FiltersController;->archiveSortingTabs:Ljava/util/List;

    return-object v0
.end method

.method public final getBackupSortingTabs(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/SortingTabStateBackup;",
            ">;"
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object p1

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/fork/models/SortingTabState;

    .line 208
    invoke-static {v1}, Lcom/iMe/fork/models/backup/BackupMappingKt;->mapToBackup(Lcom/iMe/fork/models/SortingTabState;)Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
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
            "Lcom/iMe/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation

    .line 307
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object p1

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
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

    check-cast v2, Lcom/iMe/fork/models/SortingTabState;

    .line 307
    invoke-virtual {v2}, Lcom/iMe/fork/models/SortingTabState;->getType()Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/enums/SortingFilter;->isEnabledByDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
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
            "Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/iMe/fork/controller/FiltersController;->filterSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getHiddenFiltersCount()I
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/iMe/fork/controller/FiltersController;->filterSettings:Ljava/util/Map;

    .line 204
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 25
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getPinnedChats(Z)Ljava/util/Map;
    .locals 9
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

    .line 291
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->archiveSortingDialogFilters:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->sortingDialogFilters:Ljava/util/ArrayList;

    :goto_0
    const-string v1, "filters"

    .line 292
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1254
    check-cast v1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 293
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 294
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 295
    iget-object v6, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/LongSparseIntArray;->size()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_1

    .line 296
    iget-object v7, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v7, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->keyAt(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v7, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v7, v5}, Lorg/telegram/messenger/support/LongSparseIntArray;->valueAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 299
    :cond_1
    sget-object v5, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    .line 301
    iget v1, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    .line 299
    invoke-virtual {v5, p1, v1}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getFilterByIdWithExtra(ZI)Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 299
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1254
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 303
    :cond_2
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
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/iMe/fork/controller/FiltersController;->selectedAllChatsTabFabs:Ljava/util/Set;

    return-object v0
.end method

.method public final getSettings(I)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/iMe/fork/controller/FiltersController;->filterSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 284
    sget-object v2, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_CHAT:Lcom/iMe/storage/domain/model/filters/FilterFab;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    .line 282
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;-><init>(ILjava/util/Set;Lcom/iMe/storage/domain/model/filters/FilterIcon;Z)V

    :cond_0
    return-object v0
.end method

.method public final getSortingFilterState(Lcom/iMe/fork/enums/SortingFilter;)Lcom/iMe/fork/models/SortingTabState;
    .locals 3

    const-string v0, "sortingFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Lcom/iMe/fork/enums/SortingFilter;->isArchive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/iMe/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

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

    check-cast v2, Lcom/iMe/fork/models/SortingTabState;

    invoke-virtual {v2}, Lcom/iMe/fork/models/SortingTabState;->getType()Lcom/iMe/fork/enums/SortingFilter;

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

    check-cast v1, Lcom/iMe/fork/models/SortingTabState;

    return-object v1
.end method

.method public final getSortingTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/iMe/fork/controller/FiltersController;->sortingTabs:Ljava/util/List;

    return-object v0
.end method

.method public final getSortingTabs(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/SortingTabState;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->archiveSortingTabs:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->sortingTabs:Ljava/util/List;

    :goto_0
    return-object p1
.end method

.method public final isAllChatsTabEnabled()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled:Z

    return v0
.end method

.method public final isFoldersFirstEnabled()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isFoldersFirstEnabled:Z

    return v0
.end method

.method public final isFoldersHidden()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden:Z

    return v0
.end method

.method public final isIconInsteadAllChatsTabTitleEnabled()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled:Z

    return v0
.end method

.method public final isSortingEnabled(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 216
    iget-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    :goto_0
    return p1
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isFoldersHidden()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isFoldersHidden()Z

    move-result v1

    .line 52
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden:Z

    .line 57
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isFoldersFirstEnabled()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isFoldersFirstEnabled()Z

    move-result v1

    .line 56
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isFoldersFirstEnabled:Z

    .line 61
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isAllChatsTabEnabled()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isAllChatsTabEnabled()Z

    move-result v1

    .line 60
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled:Z

    .line 65
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isIconInsteadAllChatsTabTitleEnabled()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isIconInsteadAllChatsTabTitleEnabled()Z

    move-result v1

    .line 64
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled:Z

    .line 68
    sget-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    .line 71
    :try_start_0
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedAllChatsTabFabs()Ljava/util/Set;

    move-result-object v2

    .line 70
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedAllChatsTabFabs()Ljava/util/Set;

    move-result-object v1

    .line 68
    :goto_0
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/FiltersController;->selectedAllChatsTabFabs:Ljava/util/Set;

    .line 80
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSortingChatsEnabled()Z

    move-result v1

    .line 79
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    .line 84
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isArchiveSortingChatsEnabled()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isArchiveSortingChatsEnabled()Z

    move-result v1

    .line 83
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0, p1}, Lcom/iMe/fork/controller/FiltersController;->loadSortingTabsConfig(ZLandroid/content/SharedPreferences;)V

    const/4 v1, 0x1

    .line 88
    invoke-direct {p0, v1, p1}, Lcom/iMe/fork/controller/FiltersController;->loadSortingTabsConfig(ZLandroid/content/SharedPreferences;)V

    .line 90
    invoke-direct {p0, v0}, Lcom/iMe/fork/controller/FiltersController;->refreshActiveSortingTabs(Z)V

    .line 91
    invoke-direct {p0, v1}, Lcom/iMe/fork/controller/FiltersController;->refreshActiveSortingTabs(Z)V

    return-void
.end method

.method public final loadFilterSettings()V
    .locals 5

    .line 262
    iget-object v0, p0, Lcom/iMe/fork/controller/FiltersController;->filterSettings:Ljava/util/Map;

    .line 263
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 265
    invoke-direct {p0}, Lcom/iMe/fork/controller/FiltersController;->getFiltersDao()Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v1, v2, v3}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;->getFilterSettings(J)Ljava/util/List;

    move-result-object v1

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;

    .line 266
    invoke-virtual {v3}, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->getFilterId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Lcom/iMe/storage/data/mapper/filter/FilterSettingsMappingKt;->mapToDomain(Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final removeFilterSettings(I)V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/iMe/fork/controller/FiltersController;->filterSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-direct {p0}, Lcom/iMe/fork/controller/FiltersController;->getFiltersDao()Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;->removeFilterSettings(IJ)V

    return-void
.end method

.method public final restoreAllChatsTabBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 1

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isAllChatsTabEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isAllChatsTabEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled:Z

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getIconInsteadAllChatsTabTitle()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getIconInsteadAllChatsTabTitle()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled:Z

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getAllChatsTabFabs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 142
    sget-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getAllChatsTabFabs()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/SortedSet;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->selectedAllChatsTabFabs:Ljava/util/Set;

    :cond_2
    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 7

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getHideFolders()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getHideFolders()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden:Z

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFoldersFirst()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFoldersFirst()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/FiltersController;->isFoldersFirstEnabled:Z

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 127
    invoke-direct {p0}, Lcom/iMe/fork/controller/FiltersController;->getFiltersDao()Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getFilters()Ljava/util/List;

    move-result-object p1

    .line 766
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 857
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

    check-cast v5, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    .line 128
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/MessagesController;->dialogFiltersById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getFilterId()I

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

    .line 857
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {v0, v1, v2, v3}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;->restoreBackup(JLjava/util/List;)V

    .line 131
    :cond_5
    invoke-virtual {p0}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    return-void
.end method

.method public final restoreSortingBackup(ZLcom/iMe/fork/models/backup/Backup;Lorg/telegram/ui/ActionBar/BaseFragment;)V
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

    .line 148
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/fork/models/backup/Backup;->isArchiveSortingChatsEnabled()Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/fork/models/backup/Backup;->isSortingChatsEnabled()Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/iMe/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/iMe/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 156
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/fork/models/backup/Backup;->getArchiveSortingSettings()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/fork/models/backup/Backup;->getSortingSettings()Ljava/util/List;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_7

    .line 158
    invoke-virtual/range {p0 .. p1}, Lcom/iMe/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object v4

    .line 159
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1603
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1611
    check-cast v6, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    .line 160
    invoke-static {v6}, Lcom/iMe/fork/models/backup/BackupMappingKt;->mapToDomain(Lcom/iMe/fork/models/backup/SortingTabStateBackup;)Lcom/iMe/fork/models/SortingTabState;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1611
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 160
    :cond_5
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1002
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_6

    new-instance v2, Lcom/iMe/fork/controller/FiltersController$restoreSortingBackup$lambda$5$$inlined$sortBy$1;

    invoke-direct {v2}, Lcom/iMe/fork/controller/FiltersController$restoreSortingBackup$lambda$5$$inlined$sortBy$1;-><init>()V

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/iMe/fork/controller/FiltersController;->refreshActiveSortingTabs(Z)V

    :cond_7
    if-eqz v1, :cond_8

    .line 166
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/fork/models/backup/Backup;->getArchiveSortingPinnedChats()Ljava/util/Map;

    move-result-object v2

    goto :goto_4

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/fork/models/backup/Backup;->getSortingPinnedChats()Ljava/util/Map;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_d

    .line 169
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    if-eqz v1, :cond_9

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->archiveSortingDialogFilters:Ljava/util/ArrayList;

    goto :goto_5

    :cond_9
    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->sortingDialogFilters:Ljava/util/ArrayList;

    :goto_5
    const-string v4, "filters"

    .line 170
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1855
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 171
    iget-object v4, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 172
    iget-object v4, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/LongSparseIntArray;->clear()V

    .line 174
    sget-object v4, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    iget v5, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v4, v1, v5}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getFilterByIdWithExtra(ZI)Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    if-nez v4, :cond_a

    goto :goto_8

    .line 176
    :cond_a
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    const/4 v6, 0x0

    .line 1865
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

    .line 177
    iget-object v7, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
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

    .line 182
    :cond_c
    iget v4, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 183
    iget-object v5, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    .line 184
    iget-object v6, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    .line 185
    iget-object v7, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    .line 186
    iget-object v8, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p3

    move-object/from16 v15, v17

    .line 180
    invoke-static/range {v3 .. v15}, Lorg/telegram/ui/FilterCreateActivity;->saveFilterToServer(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/support/LongSparseIntArray;ZZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    :goto_8
    move-object/from16 v15, p3

    goto/16 :goto_6

    :cond_d
    return-void
.end method

.method public final saveConfig()V
    .locals 4

    .line 95
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isFoldersHidden()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isFoldersFirstEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/FiltersController;->isFoldersFirstEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isAllChatsTabEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isIconInsteadAllChatsTabTitleEnabled()Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-boolean v2, p0, Lcom/iMe/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled:Z

    .line 99
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v1

    .line 105
    sget-object v2, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    iget-object v3, p0, Lcom/iMe/fork/controller/FiltersController;->selectedAllChatsTabFabs:Ljava/util/Set;

    invoke-virtual {v2, v3}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 103
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isArchiveSortingChatsEnabled()Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-boolean v2, p0, Lcom/iMe/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    .line 108
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "this"

    .line 112
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/iMe/fork/controller/FiltersController;->saveSortingTabsConfig(ZLandroid/content/SharedPreferences$Editor;)V

    const/4 v1, 0x1

    .line 113
    invoke-direct {p0, v1, v0}, Lcom/iMe/fork/controller/FiltersController;->saveSortingTabsConfig(ZLandroid/content/SharedPreferences$Editor;)V

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setAllChatsTabEnabled(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled:Z

    return-void
.end method

.method public final setArchiveSortingTabs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/SortingTabState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->archiveSortingTabs:Ljava/util/List;

    return-void
.end method

.method public final setFoldersFirstEnabled(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isFoldersFirstEnabled:Z

    return-void
.end method

.method public final setFoldersHidden(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden:Z

    return-void
.end method

.method public final setHidden(IZ)V
    .locals 1

    .line 200
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->getSettings(I)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p1

    .line 201
    invoke-virtual {p1, p2}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->setHidden(Z)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->addOrEditFilterSettings(Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;)V

    .line 203
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final setIconInsteadAllChatsTabTitleEnabled(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled:Z

    return-void
.end method

.method public final setSelectedAllChatsTabFabs(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->selectedAllChatsTabFabs:Ljava/util/Set;

    return-void
.end method

.method public final setSortingEnabled(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 228
    iput-boolean p2, p0, Lcom/iMe/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    goto :goto_0

    .line 230
    :cond_0
    iput-boolean p2, p0, Lcom/iMe/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    :goto_0
    return-void
.end method

.method public final setSortingTabs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/SortingTabState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/iMe/fork/controller/FiltersController;->sortingTabs:Ljava/util/List;

    return-void
.end method

.method public final swapSortingFilters(ZII)V
    .locals 3

    .line 248
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object v0

    .line 249
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/fork/models/SortingTabState;

    .line 250
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/fork/models/SortingTabState;

    .line 251
    invoke-virtual {v1, p3}, Lcom/iMe/fork/models/SortingTabState;->setPosition(I)V

    .line 252
    invoke-virtual {v2, p2}, Lcom/iMe/fork/models/SortingTabState;->setPosition(I)V

    .line 253
    invoke-interface {v0, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-interface {v0, p3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->refreshActiveSortingTabs(Z)V

    return-void
.end method

.method public final switchSortingFilterEnabled(ZI)V
    .locals 1

    .line 243
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/fork/models/SortingTabState;

    invoke-virtual {p2}, Lcom/iMe/fork/models/SortingTabState;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/iMe/fork/models/SortingTabState;->setEnabled(Z)V

    .line 244
    invoke-direct {p0, p1}, Lcom/iMe/fork/controller/FiltersController;->refreshActiveSortingTabs(Z)V

    return-void
.end method

.method public final toggleSortingEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 220
    iget-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isArchiveSortingChatsEnabled:Z

    goto :goto_0

    .line 222
    :cond_0
    iget-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/FiltersController;->isSortingChatsEnabled:Z

    :goto_0
    return-void
.end method
