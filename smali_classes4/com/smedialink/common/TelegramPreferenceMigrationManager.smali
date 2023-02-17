.class public final Lcom/smedialink/common/TelegramPreferenceMigrationManager;
.super Ljava/lang/Object;
.source "TelegramPreferenceMigrationManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramPreferenceMigrationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramPreferenceMigrationManager.kt\ncom/smedialink/common/TelegramPreferenceMigrationManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,299:1\n1#2:300\n1849#3,2:301\n1849#3:303\n1547#3:304\n1618#3,3:305\n1850#3:308\n1547#3:309\n1618#3,3:310\n1849#3,2:313\n1849#3,2:315\n1849#3,2:318\n1849#3,2:321\n1849#3,2:323\n1849#3,2:327\n1043#3:329\n1557#3:330\n1588#3,4:331\n1043#3:335\n1557#3:336\n1588#3,4:337\n13536#4:317\n13537#4:320\n13536#4,2:325\n*S KotlinDebug\n*F\n+ 1 TelegramPreferenceMigrationManager.kt\ncom/smedialink/common/TelegramPreferenceMigrationManager\n*L\n102#1:301,2\n119#1:303\n127#1:304\n127#1:305,3\n119#1:308\n137#1:309\n137#1:310,3\n149#1:313,2\n166#1:315,2\n176#1:318,2\n188#1:321,2\n200#1:323,2\n261#1:327,2\n276#1:329\n277#1:330\n277#1:331,4\n280#1:335\n281#1:336\n281#1:337,4\n174#1:317\n174#1:320\n241#1:325,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/common/TelegramPreferenceMigrationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/common/TelegramPreferenceMigrationManager;

    invoke-direct {v0}, Lcom/smedialink/common/TelegramPreferenceMigrationManager;-><init>()V

    sput-object v0, Lcom/smedialink/common/TelegramPreferenceMigrationManager;->INSTANCE:Lcom/smedialink/common/TelegramPreferenceMigrationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final migrateGlobalPreferences(Landroid/content/SharedPreferences;)V
    .locals 10

    const-string v0, "preferences"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iMe_globalPreferencesVersion"

    const/4 v1, 0x0

    .line 27
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v4, 0x9

    if-gt v2, v4, :cond_8

    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-eq v2, v3, :cond_5

    const/4 v6, 0x3

    if-eq v2, v6, :cond_2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 78
    :pswitch_0
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isReadAllChatsConfirmationShown()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isReadAllChatsConfirmationShown:Z

    xor-int/2addr v6, v3

    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->setReadAllChatsConfirmationShown(Z)V

    .line 81
    :cond_0
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isAlbumsIntroShown()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 82
    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    xor-int/2addr v6, v3

    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->setAlbumsIntroShown(Z)V

    .line 84
    :cond_1
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isMusicIntroShown()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 85
    sget-boolean v6, Lorg/telegram/messenger/SharedConfig;->isMusicIntroShown:Z

    xor-int/2addr v6, v3

    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->setMusicIntroShown(Z)V

    goto/16 :goto_2

    .line 68
    :pswitch_1
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedPhotoViewerMenuItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 70
    sget-object v6, Lorg/telegram/messenger/SharedConfig;->selectedPhotoViewerMenuItems:Ljava/util/Set;

    .line 71
    sget-object v7, Lorg/fork/enums/PhotoViewerMenuItem;->COPY_IMAGE:Lorg/fork/enums/PhotoViewerMenuItem;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v7, Lorg/fork/enums/PhotoViewerMenuItem;->CLEAR_CACHE:Lorg/fork/enums/PhotoViewerMenuItem;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->setSelectedPhotoViewerMenuItems(Ljava/util/Set;)V

    goto/16 :goto_2

    .line 63
    :pswitch_2
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 64
    sget-object v6, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v7, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->CATALOG:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    goto/16 :goto_2

    .line 57
    :pswitch_3
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 58
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "forwardingOptionsHintShown"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    sget-object v6, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v7, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->MANAGEMENT:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    goto :goto_2

    .line 52
    :pswitch_4
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 53
    sget-object v6, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v7, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->MANAGEMENT:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    goto :goto_2

    .line 36
    :cond_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "iMe_drawerAccountData"

    const/4 v8, 0x0

    .line 38
    invoke-interface {p0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 40
    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "HIDE"

    .line 41
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 42
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    .line 43
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isShowDrawerHeaderSubtitleEnabled()Ljava/lang/String;

    move-result-object v7

    sget-boolean v8, Lorg/telegram/messenger/SharedConfig;->isShowDrawerHeaderSubtitleEnabled:Z

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 45
    :cond_3
    sget-object v7, Lcom/smedialink/ui/drawer/DrawerAccountData;->Companion:Lcom/smedialink/ui/drawer/DrawerAccountData$Companion;

    sget-object v9, Lcom/smedialink/ui/drawer/DrawerAccountData;->PHONE:Lcom/smedialink/ui/drawer/DrawerAccountData;

    invoke-virtual {v7, v8, v9}, Lcom/smedialink/ui/drawer/DrawerAccountData$Companion;->mapNameToEnum(Ljava/lang/String;Lcom/smedialink/ui/drawer/DrawerAccountData;)Lcom/smedialink/ui/drawer/DrawerAccountData;

    move-result-object v7

    sput-object v7, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    .line 46
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerHeaderSubtitle()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/telegram/messenger/SharedConfig;->selectedDrawerHeaderSubtitle:Lcom/smedialink/ui/drawer/DrawerAccountData;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    :cond_4
    :goto_1
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 31
    :cond_5
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->selectedDrawerItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 32
    sget-object v6, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v7, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->ALBUMS:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    .line 89
    :cond_6
    :goto_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-ne v2, v4, :cond_7

    goto :goto_3

    :cond_7
    move v2, v5

    goto/16 :goto_0

    :cond_8
    :goto_3
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

    .line 95
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/16 v6, 0x9

    if-gt v4, v6, :cond_23

    :goto_0
    add-int/lit8 v7, v4, 0x1

    const-string v8, "iMe_sortingTab_"

    const/16 v9, 0xa

    const/4 v10, 0x0

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    const/4 v8, 0x0

    goto/16 :goto_16

    .line 288
    :pswitch_1
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 289
    sget-object v8, Lorg/fork/controller/ToolsController;->Companion:Lorg/fork/controller/ToolsController$Companion;

    invoke-virtual {v8, v0}, Lorg/fork/controller/ToolsController$Companion;->getInstance(I)Lorg/fork/controller/ToolsController;

    move-result-object v8

    .line 290
    invoke-virtual {v8}, Lorg/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v9

    sget-object v10, Lorg/fork/enums/MessagePopupItem;->SHARE:Lorg/fork/enums/MessagePopupItem;

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {v8}, Lorg/fork/controller/ToolsController;->saveConfig()V

    .line 292
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 273
    :pswitch_2
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 274
    sget-object v8, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    invoke-virtual {v8, v0}, Lorg/fork/controller/FiltersController$Companion;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v8

    .line 275
    invoke-virtual {v8}, Lorg/fork/controller/FiltersController;->getSortingTabs()Ljava/util/List;

    move-result-object v10

    .line 1043
    new-instance v11, Lcom/smedialink/common/TelegramPreferenceMigrationManager$migrateUserPreferences$lambda-34$$inlined$sortedBy$1;

    invoke-direct {v11}, Lcom/smedialink/common/TelegramPreferenceMigrationManager$migrateUserPreferences$lambda-34$$inlined$sortedBy$1;-><init>()V

    invoke-static {v10, v11}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v10

    .line 1557
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v10, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1589
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v12, 0x0

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v12, 0x1

    if-gez v12, :cond_1

    .line 1590
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v13, Lorg/fork/models/SortingTabState;

    .line 277
    invoke-virtual {v13, v12}, Lorg/fork/models/SortingTabState;->setPosition(I)V

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v11, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v12, v14

    goto :goto_2

    .line 278
    :cond_2
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v10

    .line 275
    invoke-virtual {v8, v10}, Lorg/fork/controller/FiltersController;->setSortingTabs(Ljava/util/List;)V

    .line 279
    invoke-virtual {v8}, Lorg/fork/controller/FiltersController;->getArchiveSortingTabs()Ljava/util/List;

    move-result-object v10

    .line 1043
    new-instance v11, Lcom/smedialink/common/TelegramPreferenceMigrationManager$migrateUserPreferences$lambda-34$$inlined$sortedBy$2;

    invoke-direct {v11}, Lcom/smedialink/common/TelegramPreferenceMigrationManager$migrateUserPreferences$lambda-34$$inlined$sortedBy$2;-><init>()V

    invoke-static {v10, v11}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v10

    .line 1557
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v10, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1589
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v10, 0x1

    if-gez v10, :cond_3

    .line 1590
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v12, Lorg/fork/models/SortingTabState;

    .line 281
    invoke-virtual {v12, v10}, Lorg/fork/models/SortingTabState;->setPosition(I)V

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v10, v13

    goto :goto_3

    .line 282
    :cond_4
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    .line 279
    invoke-virtual {v8, v9}, Lorg/fork/controller/FiltersController;->setArchiveSortingTabs(Ljava/util/List;)V

    .line 283
    invoke-virtual {v8}, Lorg/fork/controller/FiltersController;->saveConfig()V

    .line 284
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 256
    :pswitch_3
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 257
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "iMe_sortingTab_ARCHIVE_MENTIONED_CHATS_position"

    const/4 v10, -0x1

    .line 259
    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v10, :cond_6

    .line 261
    sget-object v10, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v10, v5}, Lorg/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v10

    .line 1849
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/fork/enums/SortingFilter;

    .line 262
    invoke-static {v11}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v13

    invoke-interface {v1, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-le v12, v9, :cond_5

    .line 264
    invoke-static {v11}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 268
    :cond_6
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    sget-object v8, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    invoke-virtual {v8, v0}, Lorg/fork/controller/FiltersController$Companion;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 222
    :pswitch_4
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 223
    sget-object v9, Lorg/fork/controller/ToolsController;->Companion:Lorg/fork/controller/ToolsController$Companion;

    invoke-virtual {v9, v0}, Lorg/fork/controller/ToolsController$Companion;->getInstance(I)Lorg/fork/controller/ToolsController;

    move-result-object v9

    .line 224
    invoke-virtual {v9}, Lorg/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v11

    sget-object v12, Lorg/fork/enums/MessagePopupItem;->SAVE_AS:Lorg/fork/enums/MessagePopupItem;

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {v9}, Lorg/fork/controller/ToolsController;->saveConfig()V

    .line 226
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_7
    const-string v9, "iMe_"

    const-string v11, "allChatsTabFabs"

    .line 229
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 230
    invoke-interface {v1, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 231
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 232
    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    goto :goto_5

    .line 234
    :cond_8
    invoke-interface {v11, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v9

    sget-object v13, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v13, v12}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v11, v9, v12}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 236
    :goto_5
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v9, 0x1

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    .line 239
    :goto_6
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 240
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 241
    invoke-static {}, Lorg/fork/enums/SortingFilter;->values()[Lorg/fork/enums/SortingFilter;

    move-result-object v11

    .line 13536
    array-length v12, v11

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v12, :cond_b

    aget-object v14, v11, v13

    .line 242
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_fabs"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 243
    invoke-interface {v1, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_a

    goto :goto_8

    .line 245
    :cond_a
    invoke-interface {v9, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    invoke-static {v14}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v6

    sget-object v14, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v14, v15}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v14

    invoke-interface {v9, v6, v14}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :goto_8
    add-int/lit8 v13, v13, 0x1

    const/16 v6, 0x9

    goto :goto_7

    .line 248
    :cond_b
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v9, 0x1

    :cond_c
    if-eqz v9, :cond_0

    .line 252
    sget-object v6, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/FiltersController$Companion;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 214
    :pswitch_5
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 215
    sget-object v6, Lorg/fork/controller/ToolsController;->Companion:Lorg/fork/controller/ToolsController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/ToolsController$Companion;->getInstance(I)Lorg/fork/controller/ToolsController;

    move-result-object v6

    .line 216
    invoke-virtual {v6}, Lorg/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v8

    sget-object v9, Lorg/fork/enums/MessagePopupItem;->COPY_IMAGE:Lorg/fork/enums/MessagePopupItem;

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {v6}, Lorg/fork/controller/ToolsController;->saveConfig()V

    .line 218
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_1

    .line 164
    :pswitch_6
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isMultiPanelEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 165
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 166
    sget-object v8, Lorg/fork/enums/DialogType;->CHANNEL:Lorg/fork/enums/DialogType;

    invoke-virtual {v8}, Lorg/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v8

    .line 1849
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/fork/enums/MultiPanelButton;

    .line 167
    sget-object v10, Lorg/fork/enums/MultiPanelButton;->MUTE:Lorg/fork/enums/MultiPanelButton;

    if-eq v9, v10, :cond_d

    sget-object v10, Lorg/fork/enums/MultiPanelButton;->PINS:Lorg/fork/enums/MultiPanelButton;

    if-eq v9, v10, :cond_d

    .line 168
    sget-object v10, Lorg/fork/enums/DialogType;->CHANNEL:Lorg/fork/enums/DialogType;

    invoke-static {v9, v10}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 169
    invoke-static {v9, v10}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v11, v5

    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_9

    .line 172
    :cond_e
    sget-object v8, Lorg/fork/enums/MultiPanelButton;->MUTE:Lorg/fork/enums/MultiPanelButton;

    sget-object v9, Lorg/fork/enums/DialogType;->CHANNEL:Lorg/fork/enums/DialogType;

    invoke-static {v8, v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-static {v8, v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-static {}, Lorg/fork/enums/DialogType;->values()[Lorg/fork/enums/DialogType;

    move-result-object v8

    .line 13536
    array-length v9, v8

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v9, :cond_10

    aget-object v11, v8, v10

    .line 176
    invoke-virtual {v11}, Lorg/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v12

    .line 1849
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/fork/enums/MultiPanelButton;

    .line 177
    invoke-static {v14, v11}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_b

    .line 179
    :cond_f
    sget-object v12, Lorg/fork/enums/MultiPanelButton;->PINS:Lorg/fork/enums/MultiPanelButton;

    invoke-static {v12, v11}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    invoke-interface {v6, v14, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-static {v12, v11}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12}, Lorg/fork/enums/MultiPanelButton;->isEnabledByDefault()Z

    move-result v12

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 182
    :cond_10
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    sget-object v6, Lorg/fork/controller/MultiPanelController;->Companion:Lorg/fork/controller/MultiPanelController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/MultiPanelController$Companion;->getInstance(I)Lorg/fork/controller/MultiPanelController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/fork/controller/MultiPanelController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 185
    :cond_11
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 186
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 187
    sget-object v8, Lorg/fork/enums/SortingFilter;->PERSONAL:Lorg/fork/enums/SortingFilter;

    invoke-static {v8}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v8

    invoke-interface {v1, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 188
    sget-object v9, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v9, v3}, Lorg/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v9

    .line 1849
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_12
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/fork/enums/SortingFilter;

    .line 189
    sget-object v11, Lorg/fork/enums/SortingFilter;->MENTIONED_CHATS:Lorg/fork/enums/SortingFilter;

    if-eq v10, v11, :cond_12

    sget-object v11, Lorg/fork/enums/SortingFilter;->DELETED_USERS:Lorg/fork/enums/SortingFilter;

    if-eq v10, v11, :cond_12

    sget-object v11, Lorg/fork/enums/SortingFilter;->LIVE_CHATS:Lorg/fork/enums/SortingFilter;

    if-eq v10, v11, :cond_12

    .line 190
    invoke-static {v10}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v12

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-le v11, v8, :cond_12

    .line 192
    invoke-static {v10}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v11, 0x2

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_c

    .line 196
    :cond_13
    sget-object v9, Lorg/fork/enums/SortingFilter;->MENTIONED_CHATS:Lorg/fork/enums/SortingFilter;

    invoke-static {v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 197
    sget-object v9, Lorg/fork/enums/SortingFilter;->DELETED_USERS:Lorg/fork/enums/SortingFilter;

    invoke-static {v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x2

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 199
    sget-object v8, Lorg/fork/enums/SortingFilter;->CHANNELS:Lorg/fork/enums/SortingFilter;

    invoke-static {v8}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v8

    invoke-interface {v1, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 200
    sget-object v9, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v9, v3}, Lorg/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v9

    .line 1849
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_14
    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/fork/enums/SortingFilter;

    .line 201
    sget-object v11, Lorg/fork/enums/SortingFilter;->LIVE_CHATS:Lorg/fork/enums/SortingFilter;

    if-eq v10, v11, :cond_14

    .line 202
    invoke-static {v10}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v12

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-le v11, v8, :cond_14

    .line 204
    invoke-static {v10}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_d

    .line 208
    :cond_15
    sget-object v9, Lorg/fork/enums/SortingFilter;->LIVE_CHATS:Lorg/fork/enums/SortingFilter;

    invoke-static {v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 209
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    sget-object v6, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/FiltersController$Companion;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 146
    :pswitch_7
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isMultiPanelEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 148
    sget-object v8, Lorg/fork/enums/MultiPanelButton;->SEARCH:Lorg/fork/enums/MultiPanelButton;

    sget-object v9, Lorg/fork/enums/DialogType;->BOT:Lorg/fork/enums/DialogType;

    invoke-static {v8, v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 149
    invoke-virtual {v9}, Lorg/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v9

    .line 1849
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_16
    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/fork/enums/MultiPanelButton;

    .line 150
    sget-object v11, Lorg/fork/enums/MultiPanelButton;->CACHE:Lorg/fork/enums/MultiPanelButton;

    if-eq v10, v11, :cond_16

    .line 151
    sget-object v11, Lorg/fork/enums/DialogType;->BOT:Lorg/fork/enums/DialogType;

    invoke-static {v10, v11}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-lt v12, v8, :cond_16

    .line 153
    invoke-static {v10, v11}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v12, v12, 0x1

    invoke-interface {v6, v10, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_e

    .line 157
    :cond_17
    sget-object v9, Lorg/fork/enums/MultiPanelButton;->CACHE:Lorg/fork/enums/MultiPanelButton;

    sget-object v10, Lorg/fork/enums/DialogType;->BOT:Lorg/fork/enums/DialogType;

    invoke-static {v9, v10}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonPositionKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-static {v9, v10}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildMultiPanelButtonEnabledKey(Lorg/fork/enums/MultiPanelButton;Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 159
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    sget-object v6, Lorg/fork/controller/MultiPanelController;->Companion:Lorg/fork/controller/MultiPanelController$Companion;

    invoke-virtual {v6, v0}, Lorg/fork/controller/MultiPanelController$Companion;->getInstance(I)Lorg/fork/controller/MultiPanelController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/fork/controller/MultiPanelController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 117
    :pswitch_8
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 118
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 119
    sget-object v11, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v11, v3}, Lorg/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v11

    .line 1849
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

    .line 120
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_fab"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 121
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_multiFabs"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-interface {v1, v14, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_18

    :goto_10
    const/4 v5, 0x1

    goto :goto_f

    .line 124
    :cond_18
    invoke-interface {v1, v5, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    const/4 v3, 0x0

    goto :goto_10

    .line 126
    :cond_19
    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    sget-object v13, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v13, v3}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    goto :goto_11

    :cond_1a
    sget-object v3, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v3, v15}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->findByOldPreferenceId(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/filters/FilterFab;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 127
    :goto_11
    invoke-static {v12}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabSelectedFabsKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v13

    .line 1547
    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1619
    check-cast v10, Lcom/smedialink/storage/domain/model/filters/FilterFab;

    .line 127
    invoke-virtual {v10}, Lcom/smedialink/storage/domain/model/filters/FilterFab;->getOldPreferenceId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1b
    invoke-virtual {v13, v15}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v12, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v6, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-interface {v6, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto/16 :goto_f

    :cond_1c
    const-string v3, "iMe_allChatsTabFab"

    const-string v5, "iMe_allChatsTabMultiFabs"

    const/4 v8, 0x0

    .line 133
    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 134
    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v10, :cond_1f

    if-eqz v8, :cond_1f

    .line 136
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    sget-object v10, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v10, v8}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->mapOldPreferenceJsonToEnums(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    goto :goto_13

    :cond_1d
    sget-object v8, Lcom/smedialink/storage/domain/model/filters/FilterFab;->Companion:Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v8, v10}, Lcom/smedialink/storage/domain/model/filters/FilterFab$Companion;->findByOldPreferenceId(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/filters/FilterFab;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    .line 137
    :goto_13
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedAllChatsTabFabs()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/GsonExtKt;->getGlobalGson()Lcom/google/gson/Gson;

    move-result-object v11

    .line 1547
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1619
    check-cast v9, Lcom/smedialink/storage/domain/model/filters/FilterFab;

    .line 137
    invoke-virtual {v9}, Lcom/smedialink/storage/domain/model/filters/FilterFab;->getOldPreferenceId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v12, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1e
    invoke-virtual {v11, v12}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v6, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v6, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    :cond_1f
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    sget-object v3, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    invoke-virtual {v3, v0}, Lorg/fork/controller/FiltersController$Companion;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    goto/16 :goto_1

    .line 99
    :pswitch_9
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSortingChatsEnabled()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 101
    sget-object v5, Lorg/fork/enums/SortingFilter;->GROUPS:Lorg/fork/enums/SortingFilter;

    invoke-static {v5}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v5

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 102
    sget-object v6, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v6

    .line 1849
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_20
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/fork/enums/SortingFilter;

    .line 103
    sget-object v10, Lorg/fork/enums/SortingFilter;->PRIVATE_GROUPS:Lorg/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_20

    sget-object v10, Lorg/fork/enums/SortingFilter;->PUBLIC_GROUPS:Lorg/fork/enums/SortingFilter;

    if-eq v9, v10, :cond_20

    .line 104
    invoke-static {v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lorg/fork/enums/SortingFilter;->groupOrdinal()I

    move-result v11

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-le v10, v5, :cond_20

    .line 106
    invoke-static {v9}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v10, 0x2

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    .line 110
    :cond_21
    sget-object v6, Lorg/fork/enums/SortingFilter;->PRIVATE_GROUPS:Lorg/fork/enums/SortingFilter;

    invoke-static {v6}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v9, v5, 0x1

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 111
    sget-object v6, Lorg/fork/enums/SortingFilter;->PUBLIC_GROUPS:Lorg/fork/enums/SortingFilter;

    invoke-static {v6}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildSortingTabPositionKey(Lorg/fork/enums/SortingFilter;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x2

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    sget-object v3, Lorg/fork/controller/FiltersController;->Companion:Lorg/fork/controller/FiltersController$Companion;

    invoke-virtual {v3, v0}, Lorg/fork/controller/FiltersController$Companion;->getInstance(I)Lorg/fork/controller/FiltersController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/fork/controller/FiltersController;->loadConfig(Landroid/content/SharedPreferences;)V

    .line 296
    :goto_16
    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v3, 0x9

    if-ne v4, v3, :cond_22

    goto :goto_17

    :cond_22
    move v4, v7

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x9

    goto/16 :goto_0

    :cond_23
    :goto_17
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
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
