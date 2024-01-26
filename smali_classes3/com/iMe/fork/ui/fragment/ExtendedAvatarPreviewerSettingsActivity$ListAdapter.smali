.class final Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ExtendedAvatarPreviewerSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 382
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getOpenByClickRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    goto :goto_4

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getOpenByClickSectionRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    goto :goto_4

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getItemsHeaderRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    goto :goto_4

    .line 416
    :cond_6
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX_CELL:I

    :goto_4
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$isClickableViewType(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$needDivider(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)Z

    move-result v0

    .line 442
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 443
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_1

    .line 446
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 447
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    .line 448
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 450
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_chat_user_options_by_avatar_click_subtitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 451
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    .line 449
    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_0

    .line 455
    :cond_0
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 457
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_chat_user_options_by_avatar_click_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 458
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerByTapEnabled:Z

    .line 456
    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_0

    .line 465
    :cond_1
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne v1, v2, :cond_3

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v2, :cond_3

    .line 466
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 467
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    if-nez p2, :cond_2

    .line 469
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    .line 470
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    .line 471
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    .line 468
    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 473
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_chat_user_options_by_avatar_click_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 474
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    .line 478
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    .line 479
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    .line 476
    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 481
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 482
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 487
    :cond_3
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne v1, v2, :cond_4

    instance-of v2, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v2, :cond_4

    .line 488
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getItemsHeaderRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 489
    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    sget p2, Lorg/telegram/messenger/R$string;->wallet_transaction_details_section_actions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 493
    :cond_4
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX_CELL:I

    if-ne v1, v2, :cond_5

    instance-of v1, p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    if-eqz v1, :cond_5

    .line 494
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getItems(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)[Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getItemsStartRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v2

    sub-int/2addr p2, v2

    aget-object p2, v1, p2

    .line 495
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    .line 496
    invoke-virtual {p2}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 497
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getNewItems(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 495
    invoke-virtual {p1, v1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 379
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 425
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 426
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 427
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 430
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckBoxCell;-><init>(Landroid/content/Context;)V

    .line 431
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 434
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setOpenByClickRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 389
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setOpenByClickSectionRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 390
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setItemsHeaderRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 391
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setItemsStartRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 392
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setItemsEndRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 393
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 394
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 395
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 396
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setOpenByClickRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 398
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setOpenByClickSectionRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 399
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setItemsHeaderRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 400
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setItemsStartRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 401
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getItems(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)[Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 402
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setItemsEndRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    :cond_0
    return-void
.end method
