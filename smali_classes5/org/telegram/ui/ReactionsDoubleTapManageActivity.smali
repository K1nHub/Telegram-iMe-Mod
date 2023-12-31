.class public Lorg/telegram/ui/ReactionsDoubleTapManageActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ReactionsDoubleTapManageActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;
    }
.end annotation


# instance fields
.field private contentView:Landroid/widget/LinearLayout;

.field private enableRow:I

.field private enableSectionRow:I

.field infoRow:I

.field private initInfoText:Ljava/lang/String;

.field private listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field premiumReactionRow:I

.field previewRow:I

.field reactionsStartRow:I

.field rowCount:I

.field private selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;


# direct methods
.method public static synthetic $r8$lambda$dkHVmcUyxd518lQqKQVUedW7SuI(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->updateColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$ve52U5tj2Gc43jCmF-FSIvEdX-E(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->lambda$createView$0(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->reactionsStartRow:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->initInfoText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->initInfoText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->enableSectionRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)Ljava/util/List;
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->getAvailableReactions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->enableRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method private getAvailableReactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_availableReaction;",
            ">;"
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;I)V
    .locals 3

    .line 221
    instance-of p2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 222
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 223
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 224
    iget-object p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    .line 225
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled()Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/iMe/fork/controller/ForkCommonController;->setQuickReactionEnabled(Z)V

    .line 226
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ForkCommonController;->saveConfig()V

    .line 227
    invoke-direct {p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->updateRows()V

    .line 228
    iget-object v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 229
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->enableSectionRow:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->enableSectionRow:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 234
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget p2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->enableSectionRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 236
    :cond_1
    instance-of p2, p1, Lorg/telegram/ui/Cells/AvailableReactionCell;

    if-eqz p2, :cond_3

    .line 237
    check-cast p1, Lorg/telegram/ui/Cells/AvailableReactionCell;

    .line 238
    iget-boolean p2, p1, Lorg/telegram/ui/Cells/AvailableReactionCell;->locked:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_2

    .line 239
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 242
    :cond_2
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/ui/Cells/AvailableReactionCell;->react:Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MediaDataController;->setDoubleTapReaction(Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_1

    .line 244
    :cond_3
    instance-of p2, p1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;

    if-eqz p2, :cond_4

    .line 245
    check-cast p1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->showSelectStatusDialog(Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateColors()V
    .locals 2

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->contentView:Landroid/widget/LinearLayout;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateRows()V
    .locals 3

    const/4 v0, 0x0

    .line 406
    iput v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 408
    iput v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->enableRow:I

    add-int/lit8 v0, v1, 0x1

    .line 409
    iput v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->enableSectionRow:I

    .line 410
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 411
    iput v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->premiumReactionRow:I

    iput v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->reactionsStartRow:I

    iput v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->infoRow:I

    iput v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->previewRow:I

    return-void

    .line 415
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->previewRow:I

    add-int/lit8 v0, v2, 0x1

    .line 416
    iput v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->infoRow:I

    .line 417
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iput v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->reactionsStartRow:I

    .line 419
    iget v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->premiumReactionRow:I

    goto :goto_0

    .line 421
    :cond_1
    iput v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->premiumReactionRow:I

    .line 422
    iget v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->reactionsStartRow:I

    :goto_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->Reactions:I

    const-string v2, "Reactions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->DoubleTapSetting:I

    const-string v2, "DoubleTapSetting"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$1;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 96
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 100
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 101
    iget-object v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$2;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 248
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iput-object v0, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->contentView:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 251
    invoke-direct {p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->updateColors()V

    .line 252
    invoke-direct {p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->updateRows()V

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->contentView:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 465
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    if-eq p2, p3, :cond_0

    return-void

    .line 466
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->reactionsDidLoad:I

    if-ne p1, p2, :cond_1

    .line 467
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 468
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    if-ne p1, p2, :cond_2

    .line 469
    invoke-direct {p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->updateRows()V

    .line 470
    iget-object p1, p0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 439
    new-instance v0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;)V

    const/16 v1, 0xd

    new-array v1, v1, [I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/4 v3, 0x2

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/4 v3, 0x3

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v3, 0x4

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v3, 0x5

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    const/4 v3, 0x6

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    const/4 v3, 0x7

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    const/16 v3, 0x8

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    const/16 v3, 0x9

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    const/16 v3, 0xa

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    const/16 v3, 0xb

    aput v2, v1, v3

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    const/16 v3, 0xc

    aput v2, v1, v3

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SimpleThemeDescription;->createThemeDescriptions(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;[I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reactionsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 76
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 77
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 428
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 429
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reactionsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 430
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->currentUserPremiumStatusChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public showSelectStatusDialog(Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 330
    iget-object v0, v10, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v12, v0, [Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/4 v0, 0x0

    if-eqz v11, :cond_2

    .line 338
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;->access$1000(Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    .line 340
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;->access$1000(Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 341
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;->access$1000(Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    .line 342
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;->updateImageBounds()V

    .line 343
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;->access$1000(Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x144

    .line 345
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    const v5, 0x3f733333    # 0.95f

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v3, v3

    .line 346
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v3

    sub-int/2addr v1, v4

    move-object v14, v0

    move v9, v2

    move-object v15, v11

    goto :goto_1

    :cond_1
    move-object v14, v0

    move-object v15, v11

    goto :goto_0

    :cond_2
    move-object v14, v0

    move-object v15, v14

    :goto_0
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 349
    :goto_1
    new-instance v8, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$3;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object v13, v8

    move-object/from16 v8, p1

    move v11, v9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$3;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ReactionsDoubleTapManageActivity$SetDefaultReactionCell;[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getDoubleTapReaction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "animated_"

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    .line 380
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelected(Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :catch_0
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->getAvailableReactions()Ljava/util/List;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 385
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 386
    new-instance v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-direct {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;-><init>()V

    .line 387
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 388
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    .line 389
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 391
    :cond_4
    invoke-virtual {v13, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setRecentReactions(Ljava/util/List;)V

    const/4 v0, 0x3

    .line 392
    invoke-virtual {v13, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSaveState(I)V

    .line 393
    invoke-virtual {v13, v14, v15}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setScrimDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Landroid/view/View;)V

    .line 394
    new-instance v0, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$4;

    const/4 v1, -0x2

    invoke-direct {v0, v10, v13, v1, v1}, Lorg/telegram/ui/ReactionsDoubleTapManageActivity$4;-><init>(Lorg/telegram/ui/ReactionsDoubleTapManageActivity;Landroid/view/View;II)V

    iput-object v0, v10, Lorg/telegram/ui/ReactionsDoubleTapManageActivity;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/4 v1, 0x0

    aput-object v0, v12, v1

    .line 401
    aget-object v0, v12, v1

    const/16 v2, 0x35

    move-object/from16 v3, p1

    move v13, v11

    invoke-virtual {v0, v3, v1, v13, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 402
    aget-object v0, v12, v1

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dimBehind()V

    return-void
.end method
