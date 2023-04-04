.class public final Lcom/iMe/fork/controller/MultiPanelController;
.super Lorg/telegram/messenger/BaseController;
.source "MultiPanelController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/MultiPanelController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiPanelController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiPanelController.kt\ncom/iMe/fork/controller/MultiPanelController\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,100:1\n13579#2:101\n13580#2:107\n13579#2:143\n13580#2:146\n1864#3,3:102\n1002#3,2:105\n1864#3,3:109\n1179#3,2:113\n1253#3,2:115\n1549#3:117\n1620#3,3:118\n1256#3:121\n766#3:122\n857#3,2:123\n1179#3,2:125\n1253#3,2:127\n1603#3,9:129\n1855#3:138\n1856#3:140\n1612#3:141\n1256#3:142\n1855#3,2:144\n1747#3,3:150\n215#4:108\n216#4:112\n125#4:157\n152#4,3:158\n1#5:139\n1#5:168\n515#6:147\n500#6,2:148\n502#6,4:153\n361#6,7:161\n*S KotlinDebug\n*F\n+ 1 MultiPanelController.kt\ncom/iMe/fork/controller/MultiPanelController\n*L\n30#1:101\n30#1:107\n74#1:143\n74#1:146\n32#1:102,3\n37#1:105,2\n48#1:109,3\n56#1:113,2\n56#1:115,2\n56#1:117\n56#1:118,3\n56#1:121\n66#1:122\n66#1:123,2\n66#1:125,2\n66#1:127,2\n66#1:129,9\n66#1:138\n66#1:140\n66#1:141\n66#1:142\n75#1:144,2\n84#1:150,3\n47#1:108\n47#1:112\n84#1:157\n84#1:158,3\n66#1:139\n84#1:147\n84#1:148,2\n84#1:153,4\n86#1:161,7\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/MultiPanelController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/MultiPanelController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buttonStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/iMe/fork/enums/DialogType;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/MultiPanelButtonState;",
            ">;>;"
        }
    .end annotation
.end field

.field private isHideMultiPanelOnScrollEnabled:Z

.field private isMultiPanelEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/MultiPanelController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/MultiPanelController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/MultiPanelController;->Companion:Lcom/iMe/fork/controller/MultiPanelController$Companion;

    .line 95
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/MultiPanelController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 19
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isMultiPanelEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled:Z

    .line 20
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isHideMultiPanelOnScrollEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled:Z

    .line 21
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/MultiPanelController;->buttonStates:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 16
    sget-object v0, Lcom/iMe/fork/controller/MultiPanelController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/MultiPanelController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/MultiPanelController;->Companion:Lcom/iMe/fork/controller/MultiPanelController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/MultiPanelController$Companion;->getInstance(I)Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getActiveDialogTypeNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/iMe/fork/controller/MultiPanelController;->buttonStates:Ljava/util/Map;

    .line 515
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 500
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 1747
    instance-of v4, v3, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1748
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/fork/models/MultiPanelButtonState;

    .line 84
    invoke-virtual {v4}, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    :cond_3
    :goto_1
    if-eqz v5, :cond_0

    .line 502
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v2}, Lcom/iMe/fork/enums/DialogType;->getNameResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public final getBackupData()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;",
            ">;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/iMe/fork/controller/MultiPanelController;->buttonStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0xa

    .line 1179
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 1180
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1254
    check-cast v2, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 1549
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1621
    check-cast v6, Lcom/iMe/fork/models/MultiPanelButtonState;

    .line 56
    invoke-static {v6}, Lcom/iMe/fork/models/backup/BackupMappingKt;->mapToBackup(Lcom/iMe/fork/models/MultiPanelButtonState;)Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    move-result-object v6

    .line 1621
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    :cond_0
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 1254
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {v3}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getButtonStates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/iMe/fork/enums/DialogType;",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/MultiPanelButtonState;",
            ">;>;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/iMe/fork/controller/MultiPanelController;->buttonStates:Ljava/util/Map;

    return-object v0
.end method

.method public final getButtons(Lcom/iMe/fork/enums/DialogType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/enums/DialogType;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/fork/models/MultiPanelButtonState;",
            ">;"
        }
    .end annotation

    const-string v0, "dialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/iMe/fork/controller/MultiPanelController;->buttonStates:Ljava/util/Map;

    .line 361
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final isHideMultiPanelOnScrollEnabled()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/iMe/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled:Z

    return v0
.end method

.method public final isMultiPanelEnabled()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 12

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/iMe/fork/controller/MultiPanelController;->buttonStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 28
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isMultiPanelEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isMultiPanelEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled:Z

    .line 29
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isHideMultiPanelOnScrollEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isHideMultiPanelOnScrollEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled:Z

    .line 30
    invoke-static {}, Lcom/iMe/fork/enums/DialogType;->values()[Lcom/iMe/fork/enums/DialogType;

    move-result-object v0

    .line 13579
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 31
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {v4}, Lcom/iMe/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v6

    .line 1865
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-gez v7, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v8, Lcom/iMe/fork/enums/MultiPanelButton;

    .line 33
    invoke-static {v8, v4}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 34
    invoke-static {v8, v4}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/iMe/fork/enums/MultiPanelButton;->isEnabledByDefault()Z

    move-result v11

    invoke-interface {p1, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 35
    new-instance v11, Lcom/iMe/fork/models/MultiPanelButtonState;

    invoke-direct {v11, v8, v10, v7}, Lcom/iMe/fork/models/MultiPanelButtonState;-><init>(Lcom/iMe/fork/enums/MultiPanelButton;ZI)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v9

    goto :goto_1

    .line 1002
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    new-instance v6, Lcom/iMe/fork/controller/MultiPanelController$loadConfig$lambda$3$lambda$2$$inlined$sortBy$1;

    invoke-direct {v6}, Lcom/iMe/fork/controller/MultiPanelController$loadConfig$lambda$3$lambda$2$$inlined$sortBy$1;-><init>()V

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 38
    :cond_2
    iget-object v6, p0, Lcom/iMe/fork/controller/MultiPanelController;->buttonStates:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final resetConfig()V
    .locals 8

    .line 72
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isMultiPanelEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-static {}, Lcom/iMe/fork/enums/DialogType;->values()[Lcom/iMe/fork/enums/DialogType;

    move-result-object v1

    .line 13579
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 75
    invoke-virtual {v4}, Lcom/iMe/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v5

    .line 1855
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iMe/fork/enums/MultiPanelButton;

    .line 76
    invoke-static {v6, v4}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-static {v6, v4}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userConfig.preferencesPublic"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iMe/fork/controller/MultiPanelController;->loadConfig(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 5

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMultiPanelEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMultiPanelEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled:Z

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isHideMultiPanelOnScrollEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isHideMultiPanelOnScrollEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled:Z

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getMultiPanelSettings()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 66
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getMultiPanelSettings()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    sget-object v3, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/iMe/fork/enums/DialogType$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/DialogType;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 857
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/16 p1, 0xa

    .line 1179
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 1180
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1254
    check-cast v0, Ljava/util/Map$Entry;

    .line 66
    sget-object v2, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/DialogType$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/DialogType;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.iMe.fork.enums.DialogType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1603
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1611
    check-cast v4, Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;

    .line 66
    invoke-static {v4}, Lcom/iMe/fork/models/backup/BackupMappingKt;->mapToDomain(Lcom/iMe/fork/models/backup/MultiPanelButtonStateBackup;)Lcom/iMe/fork/models/MultiPanelButtonState;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1611
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 66
    :cond_6
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 66
    :cond_7
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/MultiPanelController;->buttonStates:Ljava/util/Map;

    .line 68
    :cond_8
    invoke-virtual {p0}, Lcom/iMe/fork/controller/MultiPanelController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 8

    .line 44
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isMultiPanelEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isHideMultiPanelOnScrollEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 47
    iget-object v1, p0, Lcom/iMe/fork/controller/MultiPanelController;->buttonStates:Ljava/util/Map;

    .line 215
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/fork/enums/DialogType;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    .line 1865
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v5, Lcom/iMe/fork/models/MultiPanelButtonState;

    .line 49
    invoke-virtual {v5}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-virtual {v5}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v4, v6

    goto :goto_0

    .line 53
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setButtonEnabled(Lcom/iMe/fork/enums/DialogType;Lcom/iMe/fork/enums/MultiPanelButton;Z)V
    .locals 3

    const-string v0, "dialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "button"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/iMe/fork/controller/MultiPanelController;->buttonStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/fork/models/MultiPanelButtonState;

    invoke-virtual {v2}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v2

    if-ne v2, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/iMe/fork/models/MultiPanelButtonState;

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p3}, Lcom/iMe/fork/models/MultiPanelButtonState;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public final setHideMultiPanelOnScrollEnabled(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/iMe/fork/controller/MultiPanelController;->isHideMultiPanelOnScrollEnabled:Z

    return-void
.end method

.method public final setMultiPanelEnabled(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/iMe/fork/controller/MultiPanelController;->isMultiPanelEnabled:Z

    return-void
.end method
