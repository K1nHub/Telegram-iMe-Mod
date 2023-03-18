.class public final Lcom/smedialink/common/TelegramPreferenceMigrationManager;
.super Ljava/lang/Object;
.source "TelegramPreferenceMigrationManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramPreferenceMigrationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramPreferenceMigrationManager.kt\ncom/smedialink/common/TelegramPreferenceMigrationManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,308:1\n1#2:309\n1855#3,2:310\n1855#3:312\n1549#3:313\n1620#3,3:314\n1856#3:317\n1549#3:318\n1620#3,3:319\n1855#3,2:322\n1855#3,2:324\n1855#3,2:327\n1855#3,2:330\n1855#3,2:332\n1855#3,2:336\n1045#3:338\n1559#3:339\n1590#3,4:340\n1045#3:344\n1559#3:345\n1590#3,4:346\n13579#4:326\n13580#4:329\n13579#4,2:334\n*S KotlinDebug\n*F\n+ 1 TelegramPreferenceMigrationManager.kt\ncom/smedialink/common/TelegramPreferenceMigrationManager\n*L\n103#1:310,2\n120#1:312\n128#1:313\n128#1:314,3\n120#1:317\n138#1:318\n138#1:319,3\n150#1:322,2\n167#1:324,2\n177#1:327,2\n189#1:330,2\n201#1:332,2\n262#1:336,2\n277#1:338\n278#1:339\n278#1:340,4\n281#1:344\n282#1:345\n282#1:346,4\n175#1:326\n175#1:329\n242#1:334,2\n*E\n"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/common/TelegramPreferenceMigrationManager;

    invoke-direct {v0}, Lcom/smedialink/common/TelegramPreferenceMigrationManager;-><init>()V

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

    .line 79
    :pswitch_0
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isReadAllChatsConfirmationShown()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isReadAllChatsConfirmationShown:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setReadAllChatsConfirmationShown(Z)V

    .line 82
    :cond_0
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isAlbumsIntroShown()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setAlbumsIntroShown(Z)V

    .line 85
    :cond_1
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isMusicIntroShown()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 86
    sget-boolean v4, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    xor-int/2addr v4, v3

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setMusicIntroShown(Z)V

    goto/16 :goto_2

    .line 69
    :pswitch_1
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedPhotoViewerMenuItems()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 71
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    .line 72
    sget-object v5, Lorg/fork/enums/PhotoViewerMenuItem;->COPY_IMAGE:Lorg/fork/enums/PhotoViewerMenuItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v5, Lorg/fork/enums/PhotoViewerMenuItem;->CLEAR_CACHE:Lorg/fork/enums/PhotoViewerMenuItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setSelectedPhotoViewerMenuItems(Ljava/util/Set;)V

    goto/16 :goto_2

    .line 64
    :pswitch_2
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 65
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v5, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->CATALOG:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    goto/16 :goto_2

    .line 58
    :pswitch_3
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 59
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "forwardingOptionsHintShown"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v5, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->MANAGEMENT:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    goto :goto_2

    .line 53
    :pswitch_4
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 54
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v5, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->MANAGEMENT:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

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
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderSubtitleEnabled()Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 46
    :cond_3
    sget-object v5, Lcom/smedialink/ui/drawer/DrawerAccountData;->Companion:Lcom/smedialink/ui/drawer/DrawerAccountData$Companion;

    sget-object v7, Lcom/smedialink/ui/drawer/DrawerAccountData;->PHONE:Lcom/smedialink/ui/drawer/DrawerAccountData;

    invoke-virtual {v5, v6, v7}, Lcom/smedialink/ui/drawer/DrawerAccountData$Companion;->mapNameToEnum(Ljava/lang/String;Lcom/smedialink/ui/drawer/DrawerAccountData;)Lcom/smedialink/ui/drawer/DrawerAccountData;

    move-result-object v5

    sput-object v5, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    .line 47
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerHeaderSubtitle()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

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
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 33
    sget-object v4, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v5, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->ALBUMS:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    .line 90
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
    .packed-switch 0x5
        :pswitch_4
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

    .line 96
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    :goto_0
    const/16 v6, 0xc

    if-ge v4, v6, :cond_22

    const-string v6, "preferences.getString(ol\u2026        ?: return@forEach"

    const-string v7, "iMe_sortingTab_"

    const/16 v8, 0xa

    const/4 v9, 0x0

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    const/4 v7, 0x0

    goto/16 :goto_16

    .line 297
    :pswitch_1
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedRecentChatsDialogTypes()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 298
    sget-object v6, Lorg/fork/controller/RecentChatsController;->Companion:Lorg/fork/controller/RecentChatsController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/RecentChatsController$Companion;->getInstance(I)Lorg/fork/controller/RecentChatsController;

    move-result-object v6

    .line 299
    invoke-virtual {v6}, Lorg/fork/controller/RecentChatsController;->getSelectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Lorg/fork/enums/RecentChatsDialogType;->FORUM:Lorg/fork/enums/RecentChatsDialogType;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v6}, Lorg/fork/controller/RecentChatsController;->saveConfig()V

    goto :goto_1

    .line 289
    :pswitch_2
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 290
    sget-object v6, Lorg/fork/controller/ToolsController;->Companion:Lorg/fork/controller/ToolsController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/ToolsController$Companion;->getInstance(I)Lorg/fork/controller/ToolsController;

    move-result-object v6

    .line 291
    invoke-virtual {v6}, Lorg/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Lorg/fork/enums/MessagePopupItem;->SHARE:Lorg/fork/enums/MessagePopupItem;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v6}, Lorg/fork/controller/ToolsController;->saveConfig()V

    goto :goto_1

    .line 274
    :pswitch_3
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 275
    sget-object v6, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/FiltersController$Companion;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v6

    .line 276
    invoke-virtual {v6}, Lorg/fork/controller/FiltersController;->getSortingTabs()Ljava/util/List;

    move-result-object v7

    .line 1045
    new-instance v9, Lcom/smedialink/common/TelegramPreferenceMigrationManager$migrateUserPreferences$lambda$34$$inlined$sortedBy$1;

    invoke-direct {v9}, Lcom/smedialink/common/TelegramPreferenceMigrationManager$migrateUserPreferences$lambda$34$$inlined$sortedBy$1;-><init>()V

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

    const/4 v10, 0x0

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
    check-cast v11, Lorg/fork/models/SortingTabState;

    .line 278
    invoke-virtual {v11, v10}, Lorg/fork/models/SortingTabState;->setPosition(I)V

    .line 1592
    invoke-interface {v9, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v10, v12

    goto :goto_2

    .line 279
    :cond_2
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    .line 276
    invoke-virtual {v6, v7}, Lorg/fork/controller/FiltersController;->setSortingTabs(Ljava/util/List;)V

    .line 280
    invoke-virtual {v6}, Lorg/fork/controller/FiltersController;->getArchiveSortingTabs()Ljava/util/List;

    move-result-object v7

    .line 1045
    new-instance v9, Lcom/smedialink/common/TelegramPreferenceMigrationManager$migrateUserPreferences$lambda$34$$inlined$sortedBy$2;

    invoke-direct {v9}, Lcom/smedialink/common/TelegramPreferenceMigrationManager$migrateUserPreferences$lambda$34$$inlined$sortedBy$2;-><init>()V

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

    const/4 v8, 0x0

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
    check-cast v10, Lorg/fork/models/SortingTabState;

    .line 282
    invoke-virtual {v10, v8}, Lorg/fork/models/SortingTabState;->setPosition(I)V

    .line 1592
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v8, v11

    goto :goto_3

    .line 283
    :cond_4
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    .line 280
    invoke-virtual {v6, v7}, Lorg/fork/controller/FiltersController;->setArchiveSortingTabs(Ljava/util/List;)V

    .line 284
    invoke-virtual {v6}, Lorg/fork/controller/FiltersController;->saveConfig()V

    goto/16 :goto_1

    .line 257
    :pswitch_4
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 258
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "iMe_sortingTab_ARCHIVE_MENTIONED_CHATS_position"

    const/4 v8, -0x1

    .line 260
    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v8, :cond_6

    .line 262
    sget-object v8, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v8, v5}, Lorg/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

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

    check-cast v9, Lorg/fork/enums/SortingFilter;

    .line 263
    invoke-static {v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v11

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-le v10, v7, :cond_5

    .line 265
    invoke-static {v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 269
    :cond_6
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 270
    sget-object v6, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/FiltersController$Companion;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 223
    :pswitch_5
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 224
    sget-object v8, Lorg/fork/controller/ToolsController;->Companion:Lorg/fork/controller/ToolsController$Companion;

    invoke-virtual {v8, v0}, Lorg/fork/controller/ToolsController$Companion;->getInstance(I)Lorg/fork/controller/ToolsController;

    move-result-object v8

    .line 225
    invoke-virtual {v8}, Lorg/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v10

    sget-object v11, Lorg/fork/enums/MessagePopupItem;->SAVE_AS:Lorg/fork/enums/MessagePopupItem;

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {v8}, Lorg/fork/controller/ToolsController;->saveConfig()V

    :cond_7
    const-string v8, "iMe_allChatsTabFabs"

    .line 231
    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 232
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 233
    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    goto :goto_5

    :cond_8
    const-string v12, "preferences.getString(ol\u2026          ?: return@apply"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-interface {v10, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v8

    sget-object v12, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v12, v11}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v10, v8, v11}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 237
    :goto_5
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v8, 0x1

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    .line 240
    :goto_6
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 241
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 242
    invoke-static {}, Lorg/fork/enums/SortingFilter;->values()[Lorg/fork/enums/SortingFilter;

    move-result-object v10

    .line 13579
    array-length v11, v10

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v11, :cond_b

    aget-object v13, v10, v12

    .line 243
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

    .line 244
    invoke-interface {v1, v14, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_a

    goto :goto_8

    :cond_a
    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-interface {v8, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-static {v13}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v14, v15}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v8, v13, v14}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 249
    :cond_b
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v8, 0x1

    :cond_c
    if-eqz v8, :cond_0

    .line 253
    sget-object v6, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/FiltersController$Companion;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 215
    :pswitch_6
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 216
    sget-object v6, Lorg/fork/controller/ToolsController;->Companion:Lorg/fork/controller/ToolsController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/ToolsController$Companion;->getInstance(I)Lorg/fork/controller/ToolsController;

    move-result-object v6

    .line 217
    invoke-virtual {v6}, Lorg/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v7

    sget-object v8, Lorg/fork/enums/MessagePopupItem;->COPY_IMAGE:Lorg/fork/enums/MessagePopupItem;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v6}, Lorg/fork/controller/ToolsController;->saveConfig()V

    goto/16 :goto_1

    .line 165
    :pswitch_7
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isMultiPanelEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 166
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 167
    sget-object v7, Lorg/fork/enums/DialogType;->CHANNEL:Lorg/fork/enums/DialogType;

    invoke-virtual {v7}, Lorg/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

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

    check-cast v8, Lorg/fork/enums/MultiPanelButton;

    .line 168
    sget-object v9, Lorg/fork/enums/MultiPanelButton;->MUTE:Lorg/fork/enums/MultiPanelButton;

    if-eq v8, v9, :cond_d

    sget-object v9, Lorg/fork/enums/MultiPanelButton;->PINS:Lorg/fork/enums/MultiPanelButton;

    if-eq v8, v9, :cond_d

    .line 169
    sget-object v9, Lorg/fork/enums/DialogType;->CHANNEL:Lorg/fork/enums/DialogType;

    invoke-static {v8, v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 170
    invoke-static {v8, v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v10, v5

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_9

    .line 173
    :cond_e
    sget-object v7, Lorg/fork/enums/MultiPanelButton;->MUTE:Lorg/fork/enums/MultiPanelButton;

    sget-object v8, Lorg/fork/enums/DialogType;->CHANNEL:Lorg/fork/enums/DialogType;

    invoke-static {v7, v8}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-static {v7, v8}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-static {}, Lorg/fork/enums/DialogType;->values()[Lorg/fork/enums/DialogType;

    move-result-object v7

    .line 13579
    array-length v8, v7

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v8, :cond_10

    aget-object v10, v7, v9

    .line 177
    invoke-virtual {v10}, Lorg/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v11

    .line 1855
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/fork/enums/MultiPanelButton;

    .line 178
    invoke-static {v13, v10}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_b

    .line 180
    :cond_f
    sget-object v11, Lorg/fork/enums/MultiPanelButton;->PINS:Lorg/fork/enums/MultiPanelButton;

    invoke-static {v11, v10}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    invoke-interface {v6, v13, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-static {v11, v10}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Lorg/fork/enums/MultiPanelButton;->isEnabledByDefault()Z

    move-result v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 183
    :cond_10
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 184
    sget-object v6, Lorg/fork/controller/MultiPanelController;->Companion:Lorg/fork/controller/MultiPanelController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/MultiPanelController$Companion;->getInstance(I)Lorg/fork/controller/MultiPanelController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/fork/controller/MultiPanelController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 186
    :cond_11
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 187
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 188
    sget-object v7, Lorg/fork/enums/SortingFilter;->PERSONAL:Lorg/fork/enums/SortingFilter;

    invoke-static {v7}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v7

    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 189
    sget-object v8, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v8, v3}, Lorg/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

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

    check-cast v9, Lorg/fork/enums/SortingFilter;

    .line 190
    sget-object v10, Lorg/fork/enums/SortingFilter;->MENTIONED_CHATS:Lorg/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_12

    sget-object v10, Lorg/fork/enums/SortingFilter;->DELETED_USERS:Lorg/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_12

    sget-object v10, Lorg/fork/enums/SortingFilter;->LIVE_CHATS:Lorg/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_12

    .line 191
    invoke-static {v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v11

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-le v10, v7, :cond_12

    .line 193
    invoke-static {v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v10, 0x2

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_c

    .line 197
    :cond_13
    sget-object v8, Lorg/fork/enums/SortingFilter;->MENTIONED_CHATS:Lorg/fork/enums/SortingFilter;

    invoke-static {v8}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    sget-object v8, Lorg/fork/enums/SortingFilter;->DELETED_USERS:Lorg/fork/enums/SortingFilter;

    invoke-static {v8}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x2

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 200
    sget-object v7, Lorg/fork/enums/SortingFilter;->CHANNELS:Lorg/fork/enums/SortingFilter;

    invoke-static {v7}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v7

    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 201
    sget-object v8, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v8, v3}, Lorg/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

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

    check-cast v9, Lorg/fork/enums/SortingFilter;

    .line 202
    sget-object v10, Lorg/fork/enums/SortingFilter;->LIVE_CHATS:Lorg/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_14

    .line 203
    invoke-static {v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v11

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-le v10, v7, :cond_14

    .line 205
    invoke-static {v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v10, 0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_d

    .line 209
    :cond_15
    sget-object v8, Lorg/fork/enums/SortingFilter;->LIVE_CHATS:Lorg/fork/enums/SortingFilter;

    invoke-static {v8}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 211
    sget-object v6, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/FiltersController$Companion;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 147
    :pswitch_8
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isMultiPanelEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 148
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 149
    sget-object v7, Lorg/fork/enums/MultiPanelButton;->SEARCH:Lorg/fork/enums/MultiPanelButton;

    sget-object v8, Lorg/fork/enums/DialogType;->BOT:Lorg/fork/enums/DialogType;

    invoke-static {v7, v8}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 150
    invoke-virtual {v8}, Lorg/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

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

    check-cast v9, Lorg/fork/enums/MultiPanelButton;

    .line 151
    sget-object v10, Lorg/fork/enums/MultiPanelButton;->CACHE:Lorg/fork/enums/MultiPanelButton;

    if-eq v9, v10, :cond_16

    .line 152
    sget-object v10, Lorg/fork/enums/DialogType;->BOT:Lorg/fork/enums/DialogType;

    invoke-static {v9, v10}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-lt v11, v7, :cond_16

    .line 154
    invoke-static {v9, v10}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 158
    :cond_17
    sget-object v8, Lorg/fork/enums/MultiPanelButton;->CACHE:Lorg/fork/enums/MultiPanelButton;

    sget-object v9, Lorg/fork/enums/DialogType;->BOT:Lorg/fork/enums/DialogType;

    invoke-static {v8, v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-static {v8, v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    sget-object v6, Lorg/fork/controller/MultiPanelController;->Companion:Lorg/fork/controller/MultiPanelController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/MultiPanelController$Companion;->getInstance(I)Lorg/fork/controller/MultiPanelController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/fork/controller/MultiPanelController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 118
    :pswitch_9
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 119
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 120
    sget-object v11, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v11, v3}, Lorg/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

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

    check-cast v12, Lorg/fork/enums/SortingFilter;

    .line 121
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

    .line 122
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

    .line 123
    invoke-interface {v1, v14, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_18

    goto :goto_12

    :cond_18
    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_12

    :cond_19
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    sget-object v13, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v13, v3}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    goto :goto_10

    :cond_1a
    sget-object v3, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v3, v15}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->findByOldPreferenceId(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/filters/FilterFab;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 128
    :goto_10
    invoke-static {v12}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

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
    check-cast v9, Lcom/smedialink/storage/domain/model/filters/FilterFab;

    .line 128
    invoke-virtual {v9}, Lcom/smedialink/storage/domain/model/filters/FilterFab;->getOldPreferenceId()Ljava/lang/String;

    move-result-object v9

    .line 1621
    invoke-interface {v15, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 128
    :cond_1b
    invoke-virtual {v13, v15}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v12, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {v10, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
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

    .line 134
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 135
    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_1f

    if-eqz v6, :cond_1f

    .line 137
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    sget-object v7, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v7, v6}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    goto :goto_13

    :cond_1d
    sget-object v6, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v6, v7}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->findByOldPreferenceId(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/filters/FilterFab;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    .line 138
    :goto_13
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

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
    check-cast v8, Lcom/smedialink/storage/domain/model/filters/FilterFab;

    .line 138
    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/filters/FilterFab;->getOldPreferenceId()Ljava/lang/String;

    move-result-object v8

    .line 1621
    invoke-interface {v11, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 138
    :cond_1e
    invoke-virtual {v9, v11}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v10, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v10, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    :cond_1f
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    sget-object v3, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    invoke-virtual {v3, v0}, Lorg/fork/controller/FiltersController$Companion;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 100
    :pswitch_a
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 102
    sget-object v5, Lorg/fork/enums/SortingFilter;->GROUPS:Lorg/fork/enums/SortingFilter;

    invoke-static {v5}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v5

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 103
    sget-object v6, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

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

    check-cast v8, Lorg/fork/enums/SortingFilter;

    .line 104
    sget-object v9, Lorg/fork/enums/SortingFilter;->PRIVATE_GROUPS:Lorg/fork/enums/SortingFilter;

    if-eq v8, v9, :cond_20

    sget-object v9, Lorg/fork/enums/SortingFilter;->PUBLIC_GROUPS:Lorg/fork/enums/SortingFilter;

    if-eq v8, v9, :cond_20

    .line 105
    invoke-static {v8}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v10

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-le v9, v5, :cond_20

    .line 107
    invoke-static {v8}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v9, 0x2

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    .line 111
    :cond_21
    sget-object v6, Lorg/fork/enums/SortingFilter;->PRIVATE_GROUPS:Lorg/fork/enums/SortingFilter;

    invoke-static {v6}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    sget-object v6, Lorg/fork/enums/SortingFilter;->PUBLIC_GROUPS:Lorg/fork/enums/SortingFilter;

    invoke-static {v6}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x2

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    sget-object v3, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    invoke-virtual {v3, v0}, Lorg/fork/controller/FiltersController$Companion;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 305
    :goto_16
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_22
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
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
