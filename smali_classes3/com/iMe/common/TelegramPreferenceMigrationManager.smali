.class public final Lcom/iMe/common/TelegramPreferenceMigrationManager;
.super Ljava/lang/Object;
.source "TelegramPreferenceMigrationManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramPreferenceMigrationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramPreferenceMigrationManager.kt\ncom/iMe/common/TelegramPreferenceMigrationManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,316:1\n1#2:317\n1855#3,2:318\n1855#3:320\n1549#3:321\n1620#3,3:322\n1856#3:325\n1549#3:326\n1620#3,3:327\n1855#3,2:330\n1855#3,2:332\n1855#3,2:335\n1855#3,2:338\n1855#3,2:340\n1855#3,2:344\n1045#3:346\n1559#3:347\n1590#3,4:348\n1045#3:352\n1559#3:353\n1590#3,4:354\n13579#4:334\n13580#4:337\n13579#4,2:342\n*S KotlinDebug\n*F\n+ 1 TelegramPreferenceMigrationManager.kt\ncom/iMe/common/TelegramPreferenceMigrationManager\n*L\n97#1:318,2\n114#1:320\n122#1:321\n122#1:322,3\n114#1:325\n132#1:326\n132#1:327,3\n144#1:330,2\n161#1:332,2\n171#1:335,2\n183#1:338,2\n195#1:340,2\n256#1:344,2\n271#1:346\n272#1:347\n272#1:348,4\n275#1:352\n276#1:353\n276#1:354,4\n169#1:334\n169#1:337\n236#1:342,2\n*E\n"
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final migrateGlobalPreferences(Landroid/content/SharedPreferences;)V
    .locals 8

    const-string v0, "preferences"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iMe_globalPreferencesVersion"

    const/4 v1, 0x0

    .line 28
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

    .line 73
    :pswitch_0
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isReadAllChatsConfirmationShown()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isReadAllChatsConfirmationShown:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setReadAllChatsConfirmationShown(Z)V

    .line 76
    :cond_0
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isAlbumsIntroShown()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setAlbumsIntroShown(Z)V

    .line 79
    :cond_1
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isMusicIntroShown()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 80
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setMusicIntroShown(Z)V

    goto/16 :goto_2

    .line 63
    :pswitch_1
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedPhotoViewerMenuItems()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 65
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    .line 66
    sget-object v5, Lcom/iMe/fork/enums/PhotoViewerMenuItem;->COPY_IMAGE:Lcom/iMe/fork/enums/PhotoViewerMenuItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v5, Lcom/iMe/fork/enums/PhotoViewerMenuItem;->CLEAR_CACHE:Lcom/iMe/fork/enums/PhotoViewerMenuItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setSelectedPhotoViewerMenuItems(Ljava/util/Set;)V

    goto/16 :goto_2

    .line 58
    :pswitch_2
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 59
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v5, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->CATALOG:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    goto :goto_2

    .line 53
    :pswitch_3
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "forwardingOptionsHintShown"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 37
    :cond_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "iMe_drawerAccountData"

    const/4 v6, 0x0

    .line 39
    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 41
    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v5, "HIDE"

    .line 42
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 43
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    .line 44
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderSubtitleEnabled()Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 46
    :cond_3
    sget-object v5, Lcom/iMe/ui/drawer/DrawerAccountData;->Companion:Lcom/iMe/ui/drawer/DrawerAccountData$Companion;

    sget-object v7, Lcom/iMe/ui/drawer/DrawerAccountData;->PHONE:Lcom/iMe/ui/drawer/DrawerAccountData;

    invoke-virtual {v5, v6, v7}, Lcom/iMe/ui/drawer/DrawerAccountData$Companion;->mapNameToEnum(Ljava/lang/String;Lcom/iMe/ui/drawer/DrawerAccountData;)Lcom/iMe/ui/drawer/DrawerAccountData;

    move-result-object v5

    sput-object v5, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    .line 47
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerHeaderSubtitle()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/iMe/ui/drawer/DrawerAccountData;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    :cond_4
    :goto_1
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 32
    :cond_5
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 33
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v5, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->ALBUMS:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    .line 84
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

    .line 90
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

    .line 307
    :pswitch_1
    sget-object v6, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v6

    new-array v7, v5, [Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 308
    sget-object v8, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_STORY:Lcom/iMe/storage/domain/model/filters/FilterFab;

    aput-object v8, v7, v3

    invoke-static {v7}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iMe/fork/controller/FiltersController;->setSelectedAllChatsTabFabs(Ljava/util/Set;)V

    .line 309
    invoke-virtual {v6}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    goto :goto_1

    .line 299
    :pswitch_2
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 300
    sget-object v6, Lcom/iMe/fork/controller/ToolsController;->Companion:Lcom/iMe/fork/controller/ToolsController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/ToolsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v6

    .line 301
    invoke-virtual {v6}, Lcom/iMe/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Lcom/iMe/fork/enums/MessagePopupItem;->FORWARD_ONLY_CLOUD:Lcom/iMe/fork/enums/MessagePopupItem;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {v6}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    goto :goto_1

    .line 291
    :pswitch_3
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedRecentChatsDialogTypes()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 292
    sget-object v6, Lcom/iMe/fork/controller/RecentChatsController;->Companion:Lcom/iMe/fork/controller/RecentChatsController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/RecentChatsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v6

    .line 293
    invoke-virtual {v6}, Lcom/iMe/fork/controller/RecentChatsController;->getSelectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Lcom/iMe/fork/enums/RecentChatsDialogType;->FORUM:Lcom/iMe/fork/enums/RecentChatsDialogType;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {v6}, Lcom/iMe/fork/controller/RecentChatsController;->saveConfig()V

    goto :goto_1

    .line 283
    :pswitch_4
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 284
    sget-object v6, Lcom/iMe/fork/controller/ToolsController;->Companion:Lcom/iMe/fork/controller/ToolsController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/ToolsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v6

    .line 285
    invoke-virtual {v6}, Lcom/iMe/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Lcom/iMe/fork/enums/MessagePopupItem;->SHARE:Lcom/iMe/fork/enums/MessagePopupItem;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-virtual {v6}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    goto :goto_1

    .line 268
    :pswitch_5
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 269
    sget-object v6, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v6

    .line 270
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

    .line 272
    invoke-virtual {v11, v10}, Lcom/iMe/fork/models/SortingTabState;->setPosition(I)V

    .line 1592
    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v10, v12

    goto :goto_2

    .line 273
    :cond_2
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    .line 270
    invoke-virtual {v6, v7}, Lcom/iMe/fork/controller/FiltersController;->setSortingTabs(Ljava/util/List;)V

    .line 274
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

    .line 276
    invoke-virtual {v10, v8}, Lcom/iMe/fork/models/SortingTabState;->setPosition(I)V

    .line 1592
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v8, v11

    goto :goto_3

    .line 277
    :cond_4
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    .line 274
    invoke-virtual {v6, v7}, Lcom/iMe/fork/controller/FiltersController;->setArchiveSortingTabs(Ljava/util/List;)V

    .line 278
    invoke-virtual {v6}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    goto/16 :goto_1

    .line 251
    :pswitch_6
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "iMe_sortingTab_ARCHIVE_MENTIONED_CHATS_position"

    const/4 v8, -0x1

    .line 254
    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v8, :cond_6

    .line 256
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

    .line 257
    invoke-static {v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v11

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-le v10, v7, :cond_5

    .line 259
    invoke-static {v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 263
    :cond_6
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    sget-object v6, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/iMe/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 217
    :pswitch_7
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 218
    sget-object v8, Lcom/iMe/fork/controller/ToolsController;->Companion:Lcom/iMe/fork/controller/ToolsController$Companion;

    invoke-virtual {v8, v0}, Lcom/iMe/fork/controller/ToolsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v8

    .line 219
    invoke-virtual {v8}, Lcom/iMe/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v10

    sget-object v11, Lcom/iMe/fork/enums/MessagePopupItem;->SAVE_AS:Lcom/iMe/fork/enums/MessagePopupItem;

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v8}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    :cond_7
    const-string v8, "iMe_allChatsTabFabs"

    .line 225
    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 226
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 227
    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    goto :goto_5

    :cond_8
    const-string v12, "preferences.getString(ol\u2026          ?: return@apply"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-interface {v10, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v8

    sget-object v12, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v12, v11}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v10, v8, v11}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 231
    :goto_5
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v8, v5

    goto :goto_6

    :cond_9
    move v8, v3

    .line 234
    :goto_6
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 235
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 236
    invoke-static {}, Lcom/iMe/fork/enums/SortingFilter;->values()[Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v10

    .line 13579
    array-length v11, v10

    move v12, v3

    :goto_7
    if-ge v12, v11, :cond_b

    aget-object v13, v10, v12

    .line 237
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

    .line 238
    invoke-interface {v1, v14, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_a

    goto :goto_8

    :cond_a
    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-interface {v8, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-static {v13}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v14, v15}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 243
    :cond_b
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v8, v5

    :cond_c
    if-eqz v8, :cond_0

    .line 247
    sget-object v6, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/iMe/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 209
    :pswitch_8
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 210
    sget-object v6, Lcom/iMe/fork/controller/ToolsController;->Companion:Lcom/iMe/fork/controller/ToolsController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/ToolsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v6

    .line 211
    invoke-virtual {v6}, Lcom/iMe/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Lcom/iMe/fork/enums/MessagePopupItem;->COPY_IMAGE:Lcom/iMe/fork/enums/MessagePopupItem;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v6}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    goto/16 :goto_1

    .line 159
    :pswitch_9
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isMultiPanelEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 160
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 161
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

    .line 162
    sget-object v9, Lcom/iMe/fork/enums/MultiPanelButton;->MUTE:Lcom/iMe/fork/enums/MultiPanelButton;

    if-eq v8, v9, :cond_d

    sget-object v9, Lcom/iMe/fork/enums/MultiPanelButton;->PINS:Lcom/iMe/fork/enums/MultiPanelButton;

    if-eq v8, v9, :cond_d

    .line 163
    sget-object v9, Lcom/iMe/fork/enums/DialogType;->CHANNEL:Lcom/iMe/fork/enums/DialogType;

    invoke-static {v8, v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 164
    invoke-static {v8, v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v10, v5

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_9

    .line 167
    :cond_e
    sget-object v7, Lcom/iMe/fork/enums/MultiPanelButton;->MUTE:Lcom/iMe/fork/enums/MultiPanelButton;

    sget-object v8, Lcom/iMe/fork/enums/DialogType;->CHANNEL:Lcom/iMe/fork/enums/DialogType;

    invoke-static {v7, v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-static {v7, v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-static {}, Lcom/iMe/fork/enums/DialogType;->values()[Lcom/iMe/fork/enums/DialogType;

    move-result-object v7

    .line 13579
    array-length v8, v7

    move v9, v3

    :goto_a
    if-ge v9, v8, :cond_10

    aget-object v10, v7, v9

    .line 171
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

    .line 172
    invoke-static {v13, v10}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_b

    .line 174
    :cond_f
    sget-object v11, Lcom/iMe/fork/enums/MultiPanelButton;->PINS:Lcom/iMe/fork/enums/MultiPanelButton;

    invoke-static {v11, v10}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    invoke-interface {v6, v13, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-static {v11, v10}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Lcom/iMe/fork/enums/MultiPanelButton;->isEnabledByDefault()Z

    move-result v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 177
    :cond_10
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    sget-object v6, Lcom/iMe/fork/controller/MultiPanelController;->Companion:Lcom/iMe/fork/controller/MultiPanelController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/MultiPanelController$Companion;->getInstance(I)Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/iMe/fork/controller/MultiPanelController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 180
    :cond_11
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 181
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 182
    sget-object v7, Lcom/iMe/fork/enums/SortingFilter;->PERSONAL:Lcom/iMe/fork/enums/SortingFilter;

    invoke-static {v7}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v7

    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 183
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

    .line 184
    sget-object v10, Lcom/iMe/fork/enums/SortingFilter;->MENTIONED_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_12

    sget-object v10, Lcom/iMe/fork/enums/SortingFilter;->DELETED_USERS:Lcom/iMe/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_12

    sget-object v10, Lcom/iMe/fork/enums/SortingFilter;->LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_12

    .line 185
    invoke-static {v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v11

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-le v10, v7, :cond_12

    .line 187
    invoke-static {v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v10, 0x2

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_c

    .line 191
    :cond_13
    sget-object v8, Lcom/iMe/fork/enums/SortingFilter;->MENTIONED_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    invoke-static {v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 192
    sget-object v8, Lcom/iMe/fork/enums/SortingFilter;->DELETED_USERS:Lcom/iMe/fork/enums/SortingFilter;

    invoke-static {v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x2

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 194
    sget-object v7, Lcom/iMe/fork/enums/SortingFilter;->CHANNELS:Lcom/iMe/fork/enums/SortingFilter;

    invoke-static {v7}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v7

    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 195
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

    .line 196
    sget-object v10, Lcom/iMe/fork/enums/SortingFilter;->LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_14

    .line 197
    invoke-static {v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v11

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-le v10, v7, :cond_14

    .line 199
    invoke-static {v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_d

    .line 203
    :cond_15
    sget-object v8, Lcom/iMe/fork/enums/SortingFilter;->LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    invoke-static {v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 205
    sget-object v6, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/iMe/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 141
    :pswitch_a
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isMultiPanelEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 142
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 143
    sget-object v7, Lcom/iMe/fork/enums/MultiPanelButton;->SEARCH:Lcom/iMe/fork/enums/MultiPanelButton;

    sget-object v8, Lcom/iMe/fork/enums/DialogType;->BOT:Lcom/iMe/fork/enums/DialogType;

    invoke-static {v7, v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 144
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

    .line 145
    sget-object v10, Lcom/iMe/fork/enums/MultiPanelButton;->CACHE:Lcom/iMe/fork/enums/MultiPanelButton;

    if-eq v9, v10, :cond_16

    .line 146
    sget-object v10, Lcom/iMe/fork/enums/DialogType;->BOT:Lcom/iMe/fork/enums/DialogType;

    invoke-static {v9, v10}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-lt v11, v7, :cond_16

    .line 148
    invoke-static {v9, v10}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 152
    :cond_17
    sget-object v8, Lcom/iMe/fork/enums/MultiPanelButton;->CACHE:Lcom/iMe/fork/enums/MultiPanelButton;

    sget-object v9, Lcom/iMe/fork/enums/DialogType;->BOT:Lcom/iMe/fork/enums/DialogType;

    invoke-static {v8, v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-static {v8, v9}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lcom/iMe/fork/enums/MultiPanelButton;Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    sget-object v6, Lcom/iMe/fork/controller/MultiPanelController;->Companion:Lcom/iMe/fork/controller/MultiPanelController$Companion;

    invoke-virtual {v6, v0}, Lcom/iMe/fork/controller/MultiPanelController$Companion;->getInstance(I)Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/iMe/fork/controller/MultiPanelController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 112
    :pswitch_b
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 113
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 114
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

    .line 115
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

    .line 116
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

    .line 117
    invoke-interface {v1, v14, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_18

    goto :goto_12

    :cond_18
    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_12

    :cond_19
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    sget-object v13, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v13, v3}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    goto :goto_10

    :cond_1a
    sget-object v3, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v3, v15}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->findByOldPreferenceId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/filters/FilterFab;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 122
    :goto_10
    invoke-static {v12}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v12

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

    .line 122
    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/filters/FilterFab;->getOldPreferenceId()Ljava/lang/String;

    move-result-object v9

    .line 1621
    invoke-interface {v15, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 122
    :cond_1b
    invoke-virtual {v13, v15}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v12, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v10, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
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

    .line 128
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 129
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_1f

    if-eqz v6, :cond_1f

    .line 131
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    sget-object v7, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v7, v6}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    goto :goto_13

    :cond_1d
    sget-object v6, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v6, v7}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->findByOldPreferenceId(Ljava/lang/String;)Lcom/iMe/storage/domain/model/filters/FilterFab;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 132
    :goto_13
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v7

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

    .line 132
    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/filters/FilterFab;->getOldPreferenceId()Ljava/lang/String;

    move-result-object v8

    .line 1621
    invoke-interface {v11, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 132
    :cond_1e
    invoke-virtual {v9, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v10, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v10, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    :cond_1f
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    sget-object v3, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v3, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/iMe/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_16

    .line 94
    :pswitch_c
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 95
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 96
    sget-object v5, Lcom/iMe/fork/enums/SortingFilter;->GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    invoke-static {v5}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v5

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 97
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

    .line 98
    sget-object v9, Lcom/iMe/fork/enums/SortingFilter;->PRIVATE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    if-eq v8, v9, :cond_20

    sget-object v9, Lcom/iMe/fork/enums/SortingFilter;->PUBLIC_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    if-eq v8, v9, :cond_20

    .line 99
    invoke-static {v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/iMe/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v10

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-le v9, v5, :cond_20

    .line 101
    invoke-static {v8}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v9, 0x2

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    .line 105
    :cond_21
    sget-object v6, Lcom/iMe/fork/enums/SortingFilter;->PRIVATE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    invoke-static {v6}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    sget-object v6, Lcom/iMe/fork/enums/SortingFilter;->PUBLIC_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    invoke-static {v6}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lcom/iMe/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x2

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    sget-object v3, Lcom/iMe/fork/controller/FiltersController;->Companion:Lcom/iMe/fork/controller/FiltersController$Companion;

    invoke-virtual {v3, v0}, Lcom/iMe/fork/controller/FiltersController$Companion;->getInstance(I)Lcom/iMe/fork/controller/FiltersController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/iMe/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto :goto_17

    :cond_22
    :goto_16
    const/4 v7, 0x0

    .line 313
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
