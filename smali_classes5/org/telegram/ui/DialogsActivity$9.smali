.class Lorg/telegram/ui/DialogsActivity$9;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isSpeedItemCreated:Z

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;


# direct methods
.method public static synthetic $r8$lambda$fBZy6Pk2_g2DUxv9ysjHQuuSC6Y(Lorg/telegram/ui/DialogsActivity$9;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$9;->lambda$onPreToggleSearch$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;)V
    .locals 0

    .line 4290
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$9;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$9;->val$menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    const/4 p1, 0x0

    .line 4291
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$9;->isSpeedItemCreated:Z

    return-void
.end method

.method private synthetic lambda$onPreToggleSearch$0(Landroid/view/View;)V
    .locals 4

    .line 4303
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public canCollapseSearch()Z
    .locals 3

    .line 4364
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$22100(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4365
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$22200(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4366
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4367
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4370
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4371
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4373
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4374
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4376
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22800(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4377
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    return v2

    :cond_3
    return v1
.end method

.method public canToggleSearch()Z
    .locals 1

    .line 4448
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$24700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->databaseMigrationHint:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPreToggleSearch()V
    .locals 9

    .line 4295
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$9;->isSpeedItemCreated:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 4296
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$9;->isSpeedItemCreated:Z

    .line 4297
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchClearButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 4298
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$9;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$9;->val$menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const-string v6, "actionBarActionModeDefaultSelector"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    const-string v7, "actionBarActionModeDefaultIcon"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v3, v4, v5, v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$22002(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 4299
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->avd_speed:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 4300
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4301
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/16 v3, 0x20

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    .line 4302
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4303
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/DialogsActivity$9$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DialogsActivity$9$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$9;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4304
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4305
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setFixBackground(Z)V

    .line 4306
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x2a

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x26

    .line 4307
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v4, 0x5

    .line 4308
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4309
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4310
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$22000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchAdditionalButton(Landroid/view/View;)V

    .line 4312
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/DialogsActivity;->updateSpeedItem(Z)V

    :cond_1
    return-void
.end method

.method public onSearchCollapse()V
    .locals 5

    .line 4385
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$13202(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 4386
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$23402(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 4388
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$22100(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4389
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$22200(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4390
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 4391
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4394
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    .line 4395
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$6500(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 4396
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4398
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4399
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fork/controller/RecentChatsController;->getRecentChatsList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4402
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4403
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$23502(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 4404
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v3, 0x64

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Lorg/telegram/ui/DialogsActivity;->access$23602(Lorg/telegram/ui/DialogsActivity;F)F

    .line 4405
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Lorg/telegram/ui/DialogsActivity;->access$23702(Lorg/telegram/ui/DialogsActivity;F)F

    .line 4406
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$23800(Lorg/telegram/ui/DialogsActivity;)V

    .line 4408
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1, v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$23900(Lorg/telegram/ui/DialogsActivity;ZZZ)V

    .line 4410
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1, v1}, Lorg/telegram/ui/DialogsActivity;->access$23100(Lorg/telegram/ui/DialogsActivity;ZZ)V

    .line 4411
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$23000(Lorg/telegram/ui/DialogsActivity;)V

    .line 4412
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4413
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$24100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v3

    if-eq v0, v3, :cond_7

    .line 4414
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$24200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4415
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/MenuDrawable;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 4417
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$24300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrOpenMenu:I

    const-string v4, "AccDescrOpenMenu"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonContentDescription(Ljava/lang/CharSequence;)V

    .line 4419
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4420
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$24400(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    return-void
.end method

.method public onSearchExpand()V
    .locals 4

    .line 4318
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$13202(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 4325
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$22100(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4326
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$22200(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 4327
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4328
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4331
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4332
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4334
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4335
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4337
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 4338
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22800(Lorg/telegram/ui/DialogsActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4339
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->hide()V

    .line 4340
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4341
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->show()V

    .line 4344
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$22900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4345
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4348
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$2400(Lorg/telegram/ui/DialogsActivity;F)V

    .line 4349
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$23000(Lorg/telegram/ui/DialogsActivity;)V

    .line 4350
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1, v1}, Lorg/telegram/ui/DialogsActivity;->access$23100(Lorg/telegram/ui/DialogsActivity;ZZ)V

    .line 4351
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$23200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrGoBack:I

    const-string v3, "AccDescrGoBack"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonContentDescription(Ljava/lang/CharSequence;)V

    .line 4352
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4353
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$23300(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    return-void
.end method

.method public onSearchFilterCleared(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 7

    .line 4437
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4440
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SearchViewPager;->removeSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    .line 4441
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$21900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SearchViewPager;->onTextChanged(Ljava/lang/String;)V

    .line 4443
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/DialogsActivity;->access$24600(Lorg/telegram/ui/DialogsActivity;ZLjava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 3

    .line 4425
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/SearchViewPager;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasRecentSearch()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$24500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4427
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$23402(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 4428
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4429
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v1}, Lorg/telegram/ui/DialogsActivity;->access$23900(Lorg/telegram/ui/DialogsActivity;ZZZ)V

    .line 4432
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$9;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SearchViewPager;->onTextChanged(Ljava/lang/String;)V

    return-void
.end method
