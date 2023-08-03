.class public Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DrawerLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;
    }
.end annotation


# instance fields
.field private accountNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private accountsShown:Z

.field private createButton:Lcom/iMe/fork/ui/view/DrawerExpandableCell;

.field private final createGroupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private hasGps:Z

.field public isCreateGroupExpanded:Z

.field private final itemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDrawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field private onPremiumDrawableClick:Landroid/view/View$OnClickListener;

.field private final prefixItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field public profileCell:Lorg/telegram/ui/Cells/DrawerProfileCell;

.field private final rectIconItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$pyljm01qtLl0BbFoRFh7-svzDDE(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->lambda$resetItems$0(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    .line 119
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    .line 120
    iput-object p3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mDrawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    .line 121
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->itemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 122
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v1, "accountsShown"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    .line 123
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createCommonDialogResources(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->resetItems()V

    .line 126
    :try_start_0
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.location.gps"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->hasGps:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 128
    :catchall_0
    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->hasGps:Z

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->onPremiumDrawableClick:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private getAccountRowsCount()I
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 134
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method private static synthetic lambda$resetItems$0(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 385
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/UserConfig;->loginTime:I

    int-to-long v0, p0

    .line 386
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/UserConfig;->loginTime:I

    int-to-long p0, p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private resetItems()V
    .locals 21

    move-object/from16 v0, p0

    .line 378
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 380
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    sget-object v2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$$ExternalSyntheticLambda0;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 395
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 397
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 398
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 399
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 401
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 404
    :cond_2
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_3

    .line 424
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_groups_ny:I

    .line 427
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contacts_ny:I

    .line 428
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_calls_ny:I

    .line 429
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_saved_ny:I

    .line 430
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_settings_ny:I

    .line 433
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_nearby_ny:I

    .line 435
    sget v8, Lorg/telegram/messenger/R$drawable;->fork_drawer_wallet_ny:I

    .line 437
    sget v9, Lorg/telegram/messenger/R$drawable;->fork_drawer_catalog_ny:I

    .line 438
    sget v10, Lorg/telegram/messenger/R$drawable;->fork_drawer_music_ny:I

    .line 439
    sget v11, Lorg/telegram/messenger/R$drawable;->fork_drawer_create_expandable_ny:I

    .line 440
    sget v12, Lorg/telegram/messenger/R$drawable;->msg_secret_ny:I

    .line 441
    sget v13, Lorg/telegram/messenger/R$drawable;->fork_drawer_channel_ny:I

    .line 442
    sget v14, Lorg/telegram/messenger/R$drawable;->fork_drawer_albums_ny:I

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 445
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_groups_14:I

    .line 448
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contacts_14:I

    .line 449
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_calls_14:I

    .line 450
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_saved_14:I

    .line 451
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_settings_14:I

    .line 454
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_secret_14:I

    .line 456
    sget v8, Lorg/telegram/messenger/R$drawable;->fork_drawer_wallet_14:I

    .line 458
    sget v9, Lorg/telegram/messenger/R$drawable;->fork_drawer_catalog_14:I

    .line 459
    sget v10, Lorg/telegram/messenger/R$drawable;->fork_drawer_music_14:I

    .line 460
    sget v11, Lorg/telegram/messenger/R$drawable;->fork_drawer_create_expandable_14:I

    .line 462
    sget v13, Lorg/telegram/messenger/R$drawable;->fork_drawer_channel_14:I

    .line 463
    sget v14, Lorg/telegram/messenger/R$drawable;->fork_drawer_albums_14:I

    :goto_1
    move v12, v7

    goto :goto_2

    :cond_4
    if-ne v1, v2, :cond_5

    .line 466
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_groups_hw:I

    .line 469
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contacts_hw:I

    .line 470
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_calls_hw:I

    .line 471
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_saved_hw:I

    .line 472
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_settings_hw:I

    .line 475
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_secret_hw:I

    .line 477
    sget v8, Lorg/telegram/messenger/R$drawable;->fork_drawer_wallet_hw:I

    .line 479
    sget v9, Lorg/telegram/messenger/R$drawable;->fork_drawer_catalog_hw:I

    .line 480
    sget v10, Lorg/telegram/messenger/R$drawable;->fork_drawer_music_hw:I

    .line 481
    sget v11, Lorg/telegram/messenger/R$drawable;->fork_drawer_create_expandable_hw:I

    .line 483
    sget v13, Lorg/telegram/messenger/R$drawable;->fork_drawer_channel_hw:I

    .line 484
    sget v14, Lorg/telegram/messenger/R$drawable;->fork_drawer_albums_hw:I

    goto :goto_1

    .line 487
    :cond_5
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    .line 490
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contacts:I

    .line 491
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_calls:I

    .line 493
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_settings_old:I

    .line 496
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_nearby:I

    .line 498
    sget v8, Lorg/telegram/messenger/R$drawable;->fork_drawer_wallet:I

    .line 500
    sget v9, Lorg/telegram/messenger/R$drawable;->fork_drawer_catalog:I

    .line 501
    sget v10, Lorg/telegram/messenger/R$drawable;->files_music:I

    .line 502
    sget v11, Lorg/telegram/messenger/R$drawable;->fork_drawer_create_expandable:I

    .line 503
    sget v12, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    .line 504
    sget v13, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    .line 505
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_drawer_cloud:I

    .line 506
    sget v14, Lorg/telegram/messenger/R$drawable;->fork_drawer_albums:I

    .line 509
    :goto_2
    sget v15, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v15}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 510
    invoke-virtual {v15}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v16

    if-eqz v16, :cond_8

    sget v16, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static/range {v16 .. v16}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled()Z

    move-result v16

    if-nez v16, :cond_6

    sget v16, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static/range {v16 .. v16}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 511
    :cond_6
    invoke-virtual {v15}, Lorg/telegram/messenger/UserConfig;->getEmojiStatus()Ljava/lang/Long;

    move-result-object v16

    if-eqz v16, :cond_7

    .line 512
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    move/from16 v17, v6

    new-instance v6, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    move/from16 v18, v14

    sget v14, Lorg/telegram/messenger/R$string;->ChangeEmojiStatus:I

    move/from16 v19, v5

    const-string v5, "ChangeEmojiStatus"

    invoke-static {v5, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v14, Lorg/telegram/messenger/R$drawable;->msg_status_edit:I

    move/from16 v20, v7

    const/16 v7, 0xf

    invoke-direct {v6, v7, v5, v14}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move/from16 v19, v5

    move/from16 v17, v6

    move/from16 v20, v7

    move/from16 v18, v14

    const/16 v7, 0xf

    .line 514
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    sget v6, Lorg/telegram/messenger/R$string;->SetEmojiStatus:I

    const-string v14, "SetEmojiStatus"

    invoke-static {v14, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget v14, Lorg/telegram/messenger/R$drawable;->msg_status_set:I

    invoke-direct {v5, v7, v6, v14}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move/from16 v19, v5

    move/from16 v17, v6

    move/from16 v20, v7

    move/from16 v18, v14

    .line 517
    :goto_3
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->storiesPosting:Ljava/lang/String;

    const-string v5, "disabled"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_9

    .line 518
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v7, 0x10

    sget v14, Lorg/telegram/messenger/R$string;->ProfileMyStories:I

    const-string v15, "ProfileMyStories"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    sget v15, Lorg/telegram/messenger/R$drawable;->msg_menu_stories:I

    invoke-direct {v6, v7, v14, v15}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    if-eqz v15, :cond_a

    .line 520
    invoke-virtual {v15}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 521
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_a
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 530
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v6, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->WALLET:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 531
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    sget v14, Lcom/iMe/common/IdFabric$ViewTypes;->DRAWER_WALLET:I

    invoke-direct {v7, v14, v8, v6}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(IILcom/iMe/ui/drawer/DrawerSwitchableItem;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_b
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v6, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->CATALOG:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 534
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    sget v8, Lcom/iMe/common/IdFabric$ViewTypes;->DRAWER_CATALOG:I

    invoke-direct {v7, v8, v9, v6}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(IILcom/iMe/ui/drawer/DrawerSwitchableItem;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_c
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v6, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->MUSIC:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 537
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    new-instance v7, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    sget v8, Lcom/iMe/common/IdFabric$ViewTypes;->DRAWER_MUSIC:I

    invoke-direct {v7, v8, v10, v6}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(IILcom/iMe/ui/drawer/DrawerSwitchableItem;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 540
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    sget v7, Lorg/telegram/messenger/R$string;->NewGroup:I

    const-string v8, "NewGroup"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v6, v8, v7, v1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/4 v6, 0x3

    sget v7, Lorg/telegram/messenger/R$string;->NewSecretChat:I

    const-string v8, "NewSecretChat"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7, v12}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/4 v6, 0x4

    sget v7, Lorg/telegram/messenger/R$string;->NewChannel:I

    const-string v8, "NewChannel"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7, v13}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    sget v6, Lcom/iMe/common/IdFabric$ViewTypes;->DRAWER_GROUP_CREATE:I

    sget v7, Lorg/telegram/messenger/R$string;->drawer_create_expandable_section:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7, v11}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v2, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->CONTACTS:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 550
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/4 v5, 0x6

    sget v6, Lorg/telegram/messenger/R$string;->Contacts:I

    const-string v7, "Contacts"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6, v3}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_f
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v2, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->CALLS:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 553
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v3, 0xa

    sget v5, Lorg/telegram/messenger/R$string;->Calls:I

    const-string v6, "Calls"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5, v4}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_10
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v2, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->PEOPLE_NEARBY:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 556
    iget-boolean v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->hasGps:Z

    if-eqz v1, :cond_11

    .line 557
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v3, 0xc

    sget v4, Lorg/telegram/messenger/R$string;->PeopleNearby:I

    const-string v5, "PeopleNearby"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move/from16 v7, v20

    invoke-direct {v2, v3, v4, v7}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_11
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v2, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->CLOUD:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 561
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v3, 0xb

    sget v4, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v5, "SavedMessages"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move/from16 v5, v19

    invoke-direct {v2, v3, v4, v5}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_12
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    sget-object v2, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->ALBUMS:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 564
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    sget v3, Lcom/iMe/common/IdFabric$ViewTypes;->DRAWER_ALBUMS:I

    sget v4, Lorg/telegram/messenger/R$string;->cloud_albums_toolbar_title:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v14, v18

    invoke-direct {v2, v3, v4, v14}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    const/16 v3, 0x8

    sget v4, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v5, "Settings"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move/from16 v6, v17

    invoke-direct {v2, v3, v4, v6}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getFirstAccountPosition()I
    .locals 1

    .line 619
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getId(I)I
    .locals 2

    add-int/lit8 p1, p1, -0x2

    .line 580
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    if-eqz v0, :cond_0

    .line 581
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getAccountRowsCount()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_0
    const/4 v0, -0x1

    if-gez p1, :cond_1

    return v0

    .line 587
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_7

    .line 588
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    .line 589
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 590
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    if-nez p1, :cond_2

    return v0

    .line 594
    :cond_2
    iget p1, p1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    return p1

    .line 596
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    if-nez p1, :cond_4

    .line 598
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->DRAWER_GROUP_CREATE:I

    return p1

    :cond_4
    add-int/2addr p1, v0

    .line 601
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->isCreateGroupExpanded:Z

    if-eqz v1, :cond_6

    .line 602
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_5

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    iget p1, p1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    return p1

    .line 605
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 608
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p1, v1

    :cond_7
    if-ltz p1, :cond_9

    .line 611
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_8

    goto :goto_0

    .line 614
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    if-eqz p1, :cond_9

    .line 615
    iget v0, p1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->id:I

    :cond_9
    :goto_0
    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 143
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getAccountRowsCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->isCreateGroupExpanded:Z

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    add-int/lit8 p1, p1, -0x2

    .line 312
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    .line 313
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    const/4 p1, 0x4

    return p1

    .line 316
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_4

    .line 317
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_3

    return v3

    .line 319
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_5

    return v2

    .line 323
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_5

    return v2

    .line 328
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getAccountRowsCount()I

    move-result v1

    sub-int/2addr p1, v1

    .line 331
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_c

    .line 332
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    .line 333
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_8

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    const/16 p1, 0xc8

    return p1

    .line 339
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    if-nez p1, :cond_9

    const/16 p1, 0xc9

    return p1

    :cond_9
    add-int/lit8 p1, p1, -0x1

    .line 344
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->isCreateGroupExpanded:Z

    if-eqz v1, :cond_b

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_a

    const/16 p1, 0xca

    return p1

    .line 348
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    :cond_b
    add-int/2addr p1, v0

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    :cond_c
    if-ltz p1, :cond_e

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 p1, 0x3

    return p1

    :cond_e
    :goto_0
    return v2
.end method

.method public getLastAccountPosition()I
    .locals 1

    .line 626
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 629
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isAccountsShown()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    return v0
.end method

.method public isCreateGroupItemPosition(I)Z
    .locals 1

    .line 74
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getId(I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 193
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_2

    const/16 v1, 0xc9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xca

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->resetItems()V

    .line 188
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 246
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 247
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/DrawerActionCell;

    add-int/lit8 p2, p2, -0x2

    .line 249
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getAccountRowsCount()I

    move-result v0

    sub-int/2addr p2, v0

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->bind(Lorg/telegram/ui/Cells/DrawerActionCell;)V

    goto/16 :goto_0

    .line 254
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_2

    .line 255
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/iMe/fork/ui/view/DrawerExpandableCell;

    .line 256
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    .line 257
    iget-object v0, p2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->text:Ljava/lang/String;

    iget p2, p2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->icon:I

    invoke-virtual {p1, v0, p2}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->setTextAndIcon(Ljava/lang/String;I)V

    .line 258
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->isCreateGroupExpanded:Z

    invoke-virtual {p1, p2}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->setExpandedState(Z)V

    goto/16 :goto_0

    .line 259
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_4

    .line 260
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/DrawerActionCell;

    add-int/lit8 p2, p2, -0x2

    .line 262
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    if-eqz v0, :cond_3

    .line 263
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getAccountRowsCount()I

    move-result v0

    sub-int/2addr p2, v0

    .line 265
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->bind(Lorg/telegram/ui/Cells/DrawerActionCell;)V

    goto/16 :goto_0

    .line 270
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    goto/16 :goto_0

    .line 297
    :cond_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/DrawerUserCell;

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/DrawerUserCell;->setAccount(I)V

    goto :goto_0

    .line 277
    :cond_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/DrawerActionCell;

    add-int/lit8 p2, p2, -0x2

    .line 279
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    if-eqz v0, :cond_7

    .line 280
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getAccountRowsCount()I

    move-result v0

    sub-int/2addr p2, v0

    .line 283
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_9

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 286
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->isCreateGroupExpanded:Z

    if-eqz v0, :cond_8

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 289
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p2, v0

    .line 292
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$Item;->bind(Lorg/telegram/ui/Cells/DrawerActionCell;)V

    const/4 p2, 0x0

    .line 293
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    .line 272
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/DrawerProfileCell;

    .line 273
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setUser(Lorg/telegram/tgnet/TLRPC$User;Z)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/16 p1, 0xc9

    if-ne p2, p1, :cond_0

    .line 207
    new-instance p1, Lcom/iMe/fork/ui/view/DrawerExpandableCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createButton:Lcom/iMe/fork/ui/view/DrawerExpandableCell;

    goto :goto_1

    :cond_0
    const/16 p1, 0xc8

    if-eq p2, p1, :cond_7

    const/16 p1, 0xca

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_6

    const/4 p1, 0x2

    if-eq p2, p1, :cond_5

    const/4 p1, 0x3

    if-eq p2, p1, :cond_4

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    const/4 p1, 0x5

    if-eq p2, p1, :cond_2

    .line 236
    new-instance p1, Lorg/telegram/ui/Cells/EmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 232
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/DrawerAddCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/DrawerAddCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 229
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/DrawerUserCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/DrawerUserCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 226
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/DrawerActionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/DrawerActionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 223
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/DividerCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 213
    :cond_6
    new-instance p1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mDrawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v0, v1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter$1;-><init>(Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->profileCell:Lorg/telegram/ui/Cells/DrawerProfileCell;

    goto :goto_1

    .line 209
    :cond_7
    :goto_0
    new-instance p1, Lorg/telegram/ui/Cells/DrawerActionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/DrawerActionCell;-><init>(Landroid/content/Context;)V

    .line 239
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setAccountsShown(ZZ)V
    .locals 2

    .line 156
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->itemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->profileCell:Lorg/telegram/ui/Cells/DrawerProfileCell;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Cells/DrawerProfileCell;->setAccountsShown(ZZ)V

    .line 163
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    const-string v1, "accountsShown"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p2, :cond_3

    .line 166
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    const/4 p2, 0x2

    if-eqz p1, :cond_2

    .line 167
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getAccountRowsCount()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getAccountRowsCount()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setOnPremiumDrawableClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->onPremiumDrawableClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public swapElements(II)V
    .locals 6

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 363
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    .line 367
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    .line 368
    iget v4, v2, Lorg/telegram/messenger/UserConfig;->loginTime:I

    .line 369
    iget v5, v3, Lorg/telegram/messenger/UserConfig;->loginTime:I

    iput v5, v2, Lorg/telegram/messenger/UserConfig;->loginTime:I

    .line 370
    iput v4, v3, Lorg/telegram/messenger/UserConfig;->loginTime:I

    const/4 v4, 0x0

    .line 371
    invoke-virtual {v2, v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 372
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 373
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountNumbers:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 374
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toggleCreateButtonExpanded()V
    .locals 3

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->itemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 83
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->accountsShown:Z

    if-eqz v1, :cond_1

    .line 84
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getAccountRowsCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->prefixItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->rectIconItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 89
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->isCreateGroupExpanded:Z

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->isCreateGroupExpanded:Z

    if-eqz v2, :cond_2

    .line 91
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createButton:Lcom/iMe/fork/ui/view/DrawerExpandableCell;

    invoke-virtual {v2, v1}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->setExpandedState(Z)V

    .line 92
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createButton:Lcom/iMe/fork/ui/view/DrawerExpandableCell;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iMe/fork/ui/view/DrawerExpandableCell;->setExpandedState(Z)V

    .line 95
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->createGroupItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :goto_0
    return-void
.end method
