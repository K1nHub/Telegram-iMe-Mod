.class Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoriesSettingsAdapter"
.end annotation


# instance fields
.field private avatarsChannelsRow:I

.field private avatarsContactsRow:I

.field private avatarsHeaderRow:I

.field private avatarsProfileRow:I

.field private final context:Landroid/content/Context;

.field private enableRow:I

.field private enableSectionRow:I

.field private final notificationCenter:Lorg/telegram/messenger/NotificationCenter;

.field private rowCount:I

.field private storiesBarRow:I

.field private storiesBarSectionRow:I

.field private final storiesController:Lorg/telegram/ui/Stories/StoriesController;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public static synthetic $r8$lambda$ipH0m8RO16bAVk1o53WGDbDyiqI(Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;Lorg/telegram/ui/Cells/TextCheckCell;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->lambda$onItemClick$1(Lorg/telegram/ui/Cells/TextCheckCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s7YXnATpaRunTTuSDgACmOtWDtU(Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->lambda$onItemClick$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 277
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->context:Landroid/content/Context;

    .line 278
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    .line 279
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    .line 280
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->updateRows()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0()V
    .locals 1

    .line 306
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->enableSectionRow:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Lorg/telegram/ui/Cells/TextCheckCell;)V
    .locals 2

    .line 298
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->rowCount:I

    .line 299
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->updateRows()V

    .line 300
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->rowCount:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 301
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 302
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 304
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 306
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getCurrentListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateRows()V
    .locals 2

    const/4 v0, -0x1

    .line 407
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsProfileRow:I

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsChannelsRow:I

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsContactsRow:I

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesBarSectionRow:I

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesBarRow:I

    const/4 v0, 0x0

    .line 411
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 412
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->enableRow:I

    add-int/lit8 v0, v1, 0x1

    .line 413
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->enableSectionRow:I

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesBarRow:I

    add-int/lit8 v0, v1, 0x1

    .line 416
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesBarSectionRow:I

    add-int/lit8 v1, v0, 0x1

    .line 417
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsHeaderRow:I

    add-int/lit8 v0, v1, 0x1

    .line 418
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsContactsRow:I

    add-int/lit8 v1, v0, 0x1

    .line 419
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsChannelsRow:I

    add-int/lit8 v0, v1, 0x1

    .line 420
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsProfileRow:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 327
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->rowCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 337
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->enableSectionRow:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesBarSectionRow:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsHeaderRow:I

    if-ne p1, v0, :cond_1

    .line 341
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    return p1

    .line 343
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    return p1

    .line 338
    :cond_2
    :goto_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 365
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->isNeedDivider(I)Z

    move-result v0

    .line 366
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 367
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 368
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->enableSectionRow:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesBarSectionRow:I

    if-ne p2, v0, :cond_2

    .line 369
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->context:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0xc

    .line 370
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    const/4 p2, 0x0

    .line 371
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 373
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->context:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 374
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 375
    sget p2, Lorg/telegram/messenger/R$string;->settings_stories_enable_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 377
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne v1, v2, :cond_4

    .line 378
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 379
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsHeaderRow:I

    if-ne p2, v0, :cond_9

    .line 380
    sget p2, Lorg/telegram/messenger/R$string;->settings_stories_avatars:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 382
    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne v1, v2, :cond_9

    .line 383
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 384
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->enableRow:I

    if-ne p2, v1, :cond_5

    const/4 p2, 0x1

    .line 385
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 386
    sget p2, Lorg/telegram/messenger/R$string;->settings_stories_enable:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    .line 388
    :cond_5
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 389
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesBarRow:I

    if-ne p2, v1, :cond_6

    .line 390
    sget p2, Lorg/telegram/messenger/R$string;->settings_stories_bar:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->isBarEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    .line 391
    :cond_6
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsContactsRow:I

    if-ne p2, v1, :cond_7

    .line 392
    sget p2, Lorg/telegram/messenger/R$string;->FilterContacts:I

    const-string v1, "FilterContacts"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->isContactsAvatarsEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    .line 393
    :cond_7
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsChannelsRow:I

    if-ne p2, v1, :cond_8

    .line 394
    sget p2, Lorg/telegram/messenger/R$string;->FilterChannels:I

    const-string v1, "FilterChannels"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->isChannelsAvatarsEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    .line 395
    :cond_8
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsProfileRow:I

    if-ne p2, v1, :cond_9

    .line 396
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyProfilePhoto:I

    const-string v1, "PrivacyProfilePhoto"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoriesController;->isProfileAvatarEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 350
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne p2, p1, :cond_0

    .line 351
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 352
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne p2, p1, :cond_1

    .line 353
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 354
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 356
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 357
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 359
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 2

    .line 286
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_6

    .line 287
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 288
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 289
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->enableRow:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 290
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/StoriesController;->setEnabled(Z)V

    .line 291
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 292
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/StoriesController;->setBarEnabled(Z)V

    .line 293
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/StoriesController;->setContactsAvatarsEnabled(Z)V

    .line 294
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/StoriesController;->setChannelsAvatarsEnabled(Z)V

    .line 295
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/StoriesController;->setProfileAvatarEnabled(Z)V

    .line 297
    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 308
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesBarRow:I

    if-ne p2, p1, :cond_2

    .line 309
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->isBarEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->setBarEnabled(Z)V

    goto :goto_0

    .line 310
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsContactsRow:I

    if-ne p2, p1, :cond_3

    .line 311
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->isContactsAvatarsEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->setContactsAvatarsEnabled(Z)V

    goto :goto_0

    .line 312
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsChannelsRow:I

    if-ne p2, p1, :cond_4

    .line 313
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->isChannelsAvatarsEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->setChannelsAvatarsEnabled(Z)V

    goto :goto_0

    .line 314
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->avatarsProfileRow:I

    if-ne p2, p1, :cond_5

    .line 315
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->isProfileAvatarEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/StoriesController;->setProfileAvatarEnabled(Z)V

    .line 317
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesSettingsAdapter;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
