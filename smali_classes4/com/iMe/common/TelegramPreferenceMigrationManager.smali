.class public final Lcom/iMe/common/TelegramPreferenceMigrationManager;
.super Ljava/lang/Object;
.source "TelegramPreferenceMigrationManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramPreferenceMigrationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramPreferenceMigrationManager.kt\ncom/iMe/common/TelegramPreferenceMigrationManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,508:1\n1855#2,2:509\n1855#2:511\n1549#2:512\n1620#2,3:513\n1856#2:516\n1549#2:517\n1620#2,3:518\n1855#2,2:521\n1855#2,2:523\n1855#2,2:526\n1855#2,2:529\n1855#2,2:531\n1855#2,2:535\n1045#2:537\n1559#2:538\n1590#2,3:539\n1593#2:543\n1045#2:544\n1559#2:545\n1590#2,4:546\n13579#3:525\n13580#3:528\n13579#3,2:533\n1#4:542\n*S KotlinDebug\n*F\n+ 1 TelegramPreferenceMigrationManager.kt\ncom/iMe/common/TelegramPreferenceMigrationManager\n*L\n128#1:509,2\n162#1:511\n177#1:512\n177#1:513,3\n162#1:516\n193#1:517\n193#1:518,3\n212#1:521,2\n250#1:523,2\n280#1:526,2\n313#1:529,2\n344#1:531,2\n435#1:535,2\n459#1:537\n460#1:538\n460#1:539,3\n460#1:543\n463#1:544\n464#1:545\n464#1:546,4\n278#1:525\n278#1:528\n404#1:533,2\n*E\n"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/common/TelegramPreferenceMigrationManager;

    invoke-direct {v0}, Lcom/iMe/common/TelegramPreferenceMigrationManager;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final migrateGlobalPreferences(Landroid/content/SharedPreferences;)V
    .locals 8

    const-string v0, "preferences"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iMe_globalPreferencesVersion"

    const/4 v1, 0x0

    .line 33
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_7

    if-eq v2, v3, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 101
    :pswitch_0
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isReadAllChatsConfirmationShown()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isReadAllChatsConfirmationShown:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setReadAllChatsConfirmationShown(Z)V

    .line 104
    :cond_0
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isAlbumsIntroShown()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 105
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setAlbumsIntroShown(Z)V

    .line 107
    :cond_1
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isMusicIntroShown()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 108
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setMusicIntroShown(Z)V

    goto/16 :goto_2

    .line 90
    :pswitch_1
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedPhotoViewerMenuItems()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 92
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    .line 93
    sget-object v5, Lcom/iMe/fork/enums/PhotoViewerMenuItem;->COPY_IMAGE:Lcom/iMe/fork/enums/PhotoViewerMenuItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v5, Lcom/iMe/fork/enums/PhotoViewerMenuItem;->CLEAR_CACHE:Lcom/iMe/fork/enums/PhotoViewerMenuItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setSelectedPhotoViewerMenuItems(Ljava/util/Set;)V

    goto/16 :goto_2

    .line 80
    :pswitch_2
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 81
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    .line 83
    sget-object v5, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->CATALOG:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    .line 82
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    goto :goto_2

    .line 74
    :pswitch_3
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 75
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "forwardingOptionsHintShown"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 47
    :cond_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "iMe_drawerAccountData"

    const/4 v6, 0x0

    .line 49
    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 51
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "HIDE"

    .line 52
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 53
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    .line 55
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderSubtitleEnabled()Ljava/lang/String;

    move-result-object v5

    .line 56
    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    .line 54
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 60
    :cond_3
    sget-object v5, Lcom/iMe/ui/drawer/DrawerAccountData;->Companion:Lcom/iMe/ui/drawer/DrawerAccountData$Companion;

    .line 62
    sget-object v7, Lcom/iMe/ui/drawer/DrawerAccountData;->PHONE:Lcom/iMe/ui/drawer/DrawerAccountData;

    .line 60
    invoke-virtual {v5, v6, v7}, Lcom/iMe/ui/drawer/DrawerAccountData$Companion;->mapNameToEnum(Ljava/lang/String;Lcom/iMe/ui/drawer/DrawerAccountData;)Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object v5

    .line 59
    sput-object v5, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    .line 65
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerHeaderSubtitle()Ljava/lang/String;

    move-result-object v5

    .line 66
    sget-object v6, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    :cond_4
    :goto_1
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 37
    :cond_5
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 38
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    .line 40
    sget-object v5, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->ALBUMS:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    .line 39
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    .line 112
    :cond_6
    :goto_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final migrateUserPreferences(ILandroid/content/SharedPreferences;)V
    .locals 16

    move/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "preferences"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "iMe_userPreferencesVersion"

    const/4 v3, 0x0

    .line 118
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    :goto_0
    const/16 v6, 0xe

    if-ge v4, v6, :cond_23

    const-string v6, "preferences.getString(ol\u2026        ?: return@forEach"

    const-string v7, "iMe_sortingTab_"

    const/16 v8, 0xa

    const/4 v9, 0x0

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    move v7, v3

    goto/16 :goto_17

    .line 499
    :pswitch_1
    sget-object v6, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v6

    new-array v7, v5, [Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 500
    sget-object v8, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_STORY:Lcom/iMe/storage/domain/model/filters/FilterFab;

    aput-object v8, v7, v3

    invoke-static {v7}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iMe/fork/controller/FiltersController;->setSelectedAllChatsTabFabs(Ljava/util/Set;)V

    .line 501
    invoke-virtual {v6}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    goto :goto_1

    .line 490
    :pswitch_2
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 491
    sget-object v6, Lcom/iMe/fork/controller/ToolsController;->Companion:Lcom/iMe/fork/controller/ToolsController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/ToolsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v6

    .line 492
    invoke-virtual {v6}, Lcom/iMe/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Lcom/iMe/fork/enums/MessagePopupItem;->FORWARD_ONLY_CLOUD:Lcom/iMe/fork/enums/MessagePopupItem;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v6}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    goto :goto_1

    .line 481
    :pswitch_3
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedRecentChatsDialogTypes()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 482
    sget-object v6, Lcom/iMe/fork/controller/RecentChatsController;->Companion:Lcom/iMe/fork/controller/RecentChatsController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/RecentChatsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v6

    .line 483
    invoke-virtual {v6}, Lcom/iMe/fork/controller/RecentChatsController;->getSelectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Lcom/iMe/fork/enums/RecentChatsDialogType;->FORUM:Lcom/iMe/fork/enums/RecentChatsDialogType;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-virtual {v6}, Lcom/iMe/fork/controller/RecentChatsController;->saveConfig()V

    goto :goto_1

    .line 472
    :pswitch_4
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 473
    sget-object v6, Lcom/iMe/fork/controller/ToolsController;->Companion:Lcom/iMe/fork/controller/ToolsController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/ToolsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v6

    .line 474
    invoke-virtual {v6}, Lcom/iMe/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Lcom/iMe/fork/enums/MessagePopupItem;->SHARE:Lcom/iMe/fork/enums/MessagePopupItem;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {v6}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    goto :goto_1

    .line 456
    :pswitch_5
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 457
    sget-object v6, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v6

    .line 458
    invoke-virtual {v6}, Lcom/iMe/fork/controller/FiltersController;->getSortingTabs()Ljava/util/List;

    move-result-object v7

    .line 1045
    new-instance v9, Lcom/iMe/common/TelegramPreferenceMigrationManager$migrateUserPreferences$lambda$32$$inlined$sortedBy$1;

    invoke-direct {v9}, Lcom/iMe/common/TelegramPreferenceMigrationManager$migrateUserPreferences$lambda$32$$inlined$sortedBy$1;-><init>()V

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v7

    .line 1559
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1591
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v10, v3

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    if-gez v10, :cond_1

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v11, Lcom/iMe/fork/models/SortingTabState;

    .line 460
    invoke-virtual {v11, v10}, Lcom/iMe/fork/models/SortingTabState;->setPosition(I)V

    .line 1592
    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v10, v12

    goto :goto_2

    .line 461
    :cond_2
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    .line 458
    invoke-virtual {v6, v7}, Lcom/iMe/fork/controller/FiltersController;->setSortingTabs(Ljava/util/List;)V

    .line 462
    invoke-virtual {v6}, Lcom/iMe/fork/controller/FiltersController;->getArchiveSortingTabs()Ljava/util/List;

    move-result-object v7

    .line 1045
    new-instance v9, Lcom/iMe/common/TelegramPreferenceMigrationManager$migrateUserPreferences$lambda$32$$inlined$sortedBy$2;

    invoke-direct {v9}, Lcom/iMe/common/TelegramPreferenceMigrationManager$migrateUserPreferences$lambda$32$$inlined$sortedBy$2;-><init>()V

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v7

    .line 1559
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1591
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v3

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v8, 0x1

    if-gez v8, :cond_3

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v10, Lcom/iMe/fork/models/SortingTabState;

    .line 464
    invoke-virtual {v10, v8}, Lcom/iMe/fork/models/SortingTabState;->setPosition(I)V

    .line 1592
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v8, v11

    goto :goto_3

    .line 465
    :cond_4
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    .line 462
    invoke-virtual {v6, v7}, Lcom/iMe/fork/controller/FiltersController;->setArchiveSortingTabs(Ljava/util/List;)V

    .line 466
    invoke-virtual {v6}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    goto/16 :goto_1

    .line 428
    :pswitch_6
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 429
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "iMe_sortingTab_ARCHIVE_MENTIONED_CHATS_position"

    const/4 v8, -0x1

    .line 433
    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v8, :cond_6

    .line 435
    sget-object v8, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    invoke-virtual {v8, v5}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v8

    .line 1855
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iMe/fork/enums/SortingFilter;

    .line 437
    invoke-static {v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v10

    .line 439
    invoke-virtual {v9}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v11

    .line 436
    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-le v10, v7, :cond_5

    .line 443
    invoke-static {v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v10, -0x1

    .line 442
    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 450
    :cond_6
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 451
    sget-object v6, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/iMe/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 380
    :pswitch_7
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 381
    sget-object v8, Lcom/iMe/fork/controller/ToolsController;->Companion:Lcom/iMe/fork/controller/ToolsController$Companion;

    invoke-virtual {v8, v0}, Lcom/iMe/fork/controller/ToolsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v8

    .line 382
    invoke-virtual {v8}, Lcom/iMe/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v10

    sget-object v11, Lcom/iMe/fork/enums/MessagePopupItem;->SAVE_AS:Lcom/iMe/fork/enums/MessagePopupItem;

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-virtual {v8}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    :cond_7
    const-string v8, "iMe_allChatsTabFabs"

    .line 388
    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 389
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 390
    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    goto :goto_5

    :cond_8
    const-string v12, "preferences.getString(ol\u2026          ?: return@apply"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-interface {v10, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 394
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v8

    .line 395
    sget-object v12, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    .line 396
    invoke-virtual {v12, v11}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    .line 395
    invoke-virtual {v12, v11}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    .line 393
    invoke-interface {v10, v8, v11}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 399
    :goto_5
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v8, v5

    goto :goto_6

    :cond_9
    move v8, v3

    .line 402
    :goto_6
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 403
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 404
    invoke-static {}, Lcom/iMe/fork/enums/SortingFilter;->values()[Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v10

    .line 13579
    array-length v11, v10

    move v12, v3

    :goto_7
    if-ge v12, v11, :cond_b

    aget-object v13, v10, v12

    .line 406
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_fabs"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 407
    invoke-interface {v1, v14, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_a

    goto :goto_8

    :cond_a
    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-interface {v8, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-static {v13}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v13

    .line 414
    sget-object v14, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    .line 415
    invoke-virtual {v14, v15}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v15

    .line 414
    invoke-virtual {v14, v15}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v14

    .line 410
    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 419
    :cond_b
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v8, v5

    :cond_c
    if-eqz v8, :cond_0

    .line 423
    sget-object v6, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/iMe/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 371
    :pswitch_8
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 372
    sget-object v6, Lcom/iMe/fork/controller/ToolsController;->Companion:Lcom/iMe/fork/controller/ToolsController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/ToolsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v6

    .line 373
    invoke-virtual {v6}, Lcom/iMe/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Lcom/iMe/fork/enums/MessagePopupItem;->COPY_IMAGE:Lcom/iMe/fork/enums/MessagePopupItem;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v6}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    goto/16 :goto_1

    .line 248
    :pswitch_9
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isMultiPanelEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 249
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 250
    sget-object v7, Lcom/iMe/fork/enums/DialogType;->CHANNEL:Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v7}, Lcom/iMe/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v7

    .line 1855
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iMe/fork/enums/MultiPanelButton;

    .line 251
    sget-object v9, Lcom/iMe/fork/enums/MultiPanelButton;->MUTE:Lcom/iMe/fork/enums/MultiPanelButton;

    if-eq v8, v9, :cond_d

    sget-object v9, Lcom/iMe/fork/enums/MultiPanelButton;->PINS:Lcom/iMe/fork/enums/MultiPanelButton;

    if-eq v8, v9, :cond_d

    .line 255
    sget-object v9, Lcom/iMe/fork/enums/DialogType;->CHANNEL:Lcom/iMe/fork/enums/DialogType;

    .line 253
    invoke-static {v8, v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v10

    .line 252
    invoke-interface {v1, v10, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 259
    invoke-static {v8, v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v10, v5

    .line 258
    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_9

    .line 268
    :cond_e
    sget-object v7, Lcom/iMe/fork/enums/MultiPanelButton;->MUTE:Lcom/iMe/fork/enums/MultiPanelButton;

    .line 269
    sget-object v8, Lcom/iMe/fork/enums/DialogType;->CHANNEL:Lcom/iMe/fork/enums/DialogType;

    .line 267
    invoke-static {v7, v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v9

    .line 266
    invoke-interface {v6, v9, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 273
    invoke-static {v7, v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v7

    .line 272
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-static {}, Lcom/iMe/fork/enums/DialogType;->values()[Lcom/iMe/fork/enums/DialogType;

    move-result-object v7

    .line 13579
    array-length v8, v7

    move v9, v3

    :goto_a
    if-ge v9, v8, :cond_10

    aget-object v10, v7, v9

    .line 280
    invoke-virtual {v10}, Lcom/iMe/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v11

    .line 1855
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v3

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/iMe/fork/enums/MultiPanelButton;

    .line 284
    invoke-static {v13, v10}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v13

    .line 283
    invoke-interface {v1, v13, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_b

    .line 293
    :cond_f
    sget-object v11, Lcom/iMe/fork/enums/MultiPanelButton;->PINS:Lcom/iMe/fork/enums/MultiPanelButton;

    .line 292
    invoke-static {v11, v10}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    .line 291
    invoke-interface {v6, v13, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 298
    invoke-static {v11, v10}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v10

    .line 301
    invoke-virtual {v11}, Lcom/iMe/fork/enums/MultiPanelButton;->isEnabledByDefault()Z

    move-result v11

    .line 297
    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 304
    :cond_10
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    sget-object v6, Lcom/iMe/fork/controller/MultiPanelController;->Companion:Lcom/iMe/fork/controller/MultiPanelController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/MultiPanelController$Companion;->getInstance(I)Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/iMe/fork/controller/MultiPanelController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 307
    :cond_11
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 308
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 310
    sget-object v7, Lcom/iMe/fork/enums/SortingFilter;->PERSONAL:Lcom/iMe/fork/enums/SortingFilter;

    invoke-static {v7}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    .line 311
    invoke-virtual {v7}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v7

    .line 309
    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 313
    sget-object v8, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    invoke-virtual {v8, v3}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v8

    .line 1855
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_12
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iMe/fork/enums/SortingFilter;

    .line 314
    sget-object v10, Lcom/iMe/fork/enums/SortingFilter;->MENTIONED_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_12

    sget-object v10, Lcom/iMe/fork/enums/SortingFilter;->DELETED_USERS:Lcom/iMe/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_12

    sget-object v10, Lcom/iMe/fork/enums/SortingFilter;->LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_12

    .line 316
    invoke-static {v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v10

    .line 318
    invoke-virtual {v9}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v11

    .line 315
    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-le v10, v7, :cond_12

    .line 322
    invoke-static {v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v10, 0x2

    .line 321
    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_c

    .line 331
    :cond_13
    sget-object v8, Lcom/iMe/fork/enums/SortingFilter;->MENTIONED_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    .line 330
    invoke-static {v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    .line 329
    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 336
    sget-object v8, Lcom/iMe/fork/enums/SortingFilter;->DELETED_USERS:Lcom/iMe/fork/enums/SortingFilter;

    .line 335
    invoke-static {v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x2

    .line 334
    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 341
    sget-object v7, Lcom/iMe/fork/enums/SortingFilter;->CHANNELS:Lcom/iMe/fork/enums/SortingFilter;

    invoke-static {v7}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    .line 342
    invoke-virtual {v7}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v7

    .line 340
    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 344
    sget-object v8, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    invoke-virtual {v8, v3}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v8

    .line 1855
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_14
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iMe/fork/enums/SortingFilter;

    .line 345
    sget-object v10, Lcom/iMe/fork/enums/SortingFilter;->LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_14

    .line 347
    invoke-static {v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v10

    .line 349
    invoke-virtual {v9}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v11

    .line 346
    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-le v10, v7, :cond_14

    .line 353
    invoke-static {v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v10, 0x1

    .line 352
    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_d

    .line 362
    :cond_15
    sget-object v8, Lcom/iMe/fork/enums/SortingFilter;->LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    .line 361
    invoke-static {v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 360
    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 365
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 366
    sget-object v6, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/iMe/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 204
    :pswitch_a
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isMultiPanelEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 205
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 208
    sget-object v7, Lcom/iMe/fork/enums/MultiPanelButton;->SEARCH:Lcom/iMe/fork/enums/MultiPanelButton;

    .line 209
    sget-object v8, Lcom/iMe/fork/enums/DialogType;->BOT:Lcom/iMe/fork/enums/DialogType;

    .line 207
    invoke-static {v7, v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v7

    .line 206
    invoke-interface {v1, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 212
    invoke-virtual {v8}, Lcom/iMe/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v8

    .line 1855
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_16
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/iMe/fork/enums/MultiPanelButton;

    .line 213
    sget-object v10, Lcom/iMe/fork/enums/MultiPanelButton;->CACHE:Lcom/iMe/fork/enums/MultiPanelButton;

    if-eq v9, v10, :cond_16

    .line 217
    sget-object v10, Lcom/iMe/fork/enums/DialogType;->BOT:Lcom/iMe/fork/enums/DialogType;

    .line 215
    invoke-static {v9, v10}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v11

    .line 214
    invoke-interface {v1, v11, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-lt v11, v7, :cond_16

    .line 222
    invoke-static {v9, v10}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v11, v11, 0x1

    .line 221
    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 232
    :cond_17
    sget-object v8, Lcom/iMe/fork/enums/MultiPanelButton;->CACHE:Lcom/iMe/fork/enums/MultiPanelButton;

    .line 233
    sget-object v9, Lcom/iMe/fork/enums/DialogType;->BOT:Lcom/iMe/fork/enums/DialogType;

    .line 231
    invoke-static {v8, v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v10

    .line 230
    invoke-interface {v6, v10, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-static {v8, v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v7

    .line 236
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 242
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    sget-object v6, Lcom/iMe/fork/controller/MultiPanelController;->Companion:Lcom/iMe/fork/controller/MultiPanelController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/MultiPanelController$Companion;->getInstance(I)Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/iMe/fork/controller/MultiPanelController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 160
    :pswitch_b
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 161
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 162
    sget-object v11, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    invoke-virtual {v11, v3}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v11

    .line 1855
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v13, "fab_multi"

    if-eqz v12, :cond_1c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 163
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_fab"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 165
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_multiFabs"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-interface {v1, v14, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_18

    goto :goto_12

    :cond_18
    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_12

    :cond_19
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    sget-object v13, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v13, v3}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    goto :goto_10

    .line 173
    :cond_1a
    sget-object v3, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v3, v15}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->findByOldPreferenceId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/filters/FilterFab;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 175
    :goto_10
    invoke-static {v12}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v12

    .line 177
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v13

    .line 1549
    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1621
    check-cast v9, Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 177
    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/filters/FilterFab;->getOldPreferenceId()Ljava/lang/String;

    move-result-object v9

    .line 1621
    invoke-interface {v15, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 177
    :cond_1b
    invoke-virtual {v13, v15}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-interface {v10, v12, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v10, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v10, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_12
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto/16 :goto_f

    :cond_1c
    const-string v3, "iMe_allChatsTabFab"

    const-string v5, "iMe_allChatsTabMultiFabs"

    const/4 v6, 0x0

    .line 184
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_1f

    if-eqz v6, :cond_1f

    .line 188
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    sget-object v7, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v7, v6}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    goto :goto_13

    .line 190
    :cond_1d
    sget-object v6, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v6, v7}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->findByOldPreferenceId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/filters/FilterFab;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 192
    :goto_13
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v9

    .line 1549
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1621
    check-cast v8, Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 193
    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/filters/FilterFab;->getOldPreferenceId()Ljava/lang/String;

    move-result-object v8

    .line 1621
    invoke-interface {v11, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 193
    :cond_1e
    invoke-virtual {v9, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-interface {v10, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v10, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v10, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    :cond_1f
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    sget-object v3, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v3, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/iMe/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_16

    .line 122
    :pswitch_c
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 123
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 125
    sget-object v5, Lcom/iMe/fork/enums/SortingFilter;->GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    invoke-static {v5}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-virtual {v5}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v5

    .line 124
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 128
    sget-object v6, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v6

    .line 1855
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_20
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/iMe/fork/enums/SortingFilter;

    .line 129
    sget-object v9, Lcom/iMe/fork/enums/SortingFilter;->PRIVATE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    if-eq v8, v9, :cond_20

    sget-object v9, Lcom/iMe/fork/enums/SortingFilter;->PUBLIC_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    if-eq v8, v9, :cond_20

    .line 131
    invoke-static {v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    .line 133
    invoke-virtual {v8}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v10

    .line 130
    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-le v9, v5, :cond_20

    .line 137
    invoke-static {v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v9, 0x2

    .line 136
    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    .line 146
    :cond_21
    sget-object v6, Lcom/iMe/fork/enums/SortingFilter;->PRIVATE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 145
    invoke-static {v6}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v8, v5, 0x1

    .line 144
    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 151
    sget-object v6, Lcom/iMe/fork/enums/SortingFilter;->PUBLIC_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 150
    invoke-static {v6}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x2

    .line 149
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    sget-object v3, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v3, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/iMe/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto :goto_17

    :cond_22
    :goto_16
    const/4 v7, 0x0

    .line 505
    :goto_17
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v4, v4, 0x1

    move v3, v7

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_23
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
