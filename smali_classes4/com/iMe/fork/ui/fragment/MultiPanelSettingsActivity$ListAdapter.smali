.class final Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "MultiPanelSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiPanelSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiPanelSettingsActivity.kt\ncom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,689:1\n1#2:690\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 473
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 476
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    goto :goto_4

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getHideOnScrollRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    goto :goto_4

    .line 523
    :cond_3
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getSectionInfoRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    goto :goto_4

    .line 524
    :cond_6
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->MOVING_CHECK_CELL:I

    :goto_4
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$isClickableViewType(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$needDivider(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)Z

    move-result v0

    .line 566
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 567
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_1

    .line 570
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 571
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    .line 572
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 574
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_settings_enable_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 575
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getNewIsEnabled$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v1

    .line 573
    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_1

    .line 579
    :cond_0
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 580
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getHideOnScrollRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_8

    .line 582
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_hide_on_scroll:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 583
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getNewIsHideOnScrollEnabled$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v1

    .line 581
    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_1

    .line 591
    :cond_1
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne v1, v2, :cond_4

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v2, :cond_4

    .line 592
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 593
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getNewIsEnabled$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 595
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    .line 596
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    .line 597
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    .line 594
    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0xc

    .line 599
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    const/4 p2, 0x0

    .line 600
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 603
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 604
    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    .line 605
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    .line 602
    invoke-static {v1, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 607
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 608
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 609
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_settings_enable_item_subtitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 610
    :cond_3
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getSectionInfoRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 611
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 617
    :cond_4
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->MOVING_CHECK_CELL:I

    if-ne v1, v2, :cond_8

    instance-of v1, p1, Lcom/iMe/fork/ui/view/MovingCheckCell;

    if-eqz v1, :cond_8

    .line 618
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    check-cast p1, Lcom/iMe/fork/ui/view/MovingCheckCell;

    .line 619
    invoke-static {v1, p2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getButton(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)Lcom/iMe/fork/models/MultiPanelButtonState;

    move-result-object p2

    if-nez p2, :cond_5

    return-void

    .line 620
    :cond_5
    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/enums/MultiPanelButton;->getTitleId()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/enums/MultiPanelButton;->getIconId()I

    move-result v2

    .line 623
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    .line 624
    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/fork/enums/MultiPanelButton;->getPorterDuffMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    .line 621
    invoke-virtual {p1, v2, v3, v4}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setIcon(IILandroid/graphics/PorterDuff$Mode;)V

    .line 626
    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v2

    sget-object v3, Lcom/iMe/fork/enums/MultiPanelButton;->SUBSCRIBERS:Lcom/iMe/fork/enums/MultiPanelButton;

    const-string v4, "text"

    if-eq v2, v3, :cond_7

    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v2

    sget-object v3, Lcom/iMe/fork/enums/MultiPanelButton;->RECENT_ACTIONS:Lcom/iMe/fork/enums/MultiPanelButton;

    if-ne v2, v3, :cond_6

    goto :goto_0

    .line 634
    :cond_6
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, v1, p2, v0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 628
    :cond_7
    :goto_0
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    sget v2, Lorg/telegram/messenger/R$string;->multi_panel_settings_only_for_admin_button_item_subtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInternalString(R.stri\u2026min_button_item_subtitle)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result p2

    .line 627
    invoke-virtual {p1, v1, v2, p2, v0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_8
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    const-string v0, "parentActivity"

    if-ne p2, p1, :cond_0

    new-instance v1, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;

    .line 533
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    invoke-static {}, Lcom/iMe/fork/enums/DialogType;->values()[Lcom/iMe/fork/enums/DialogType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 535
    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v3}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getCurrentDialogType()Lcom/iMe/fork/enums/DialogType;

    move-result-object v3

    .line 540
    new-instance v4, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1;

    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-direct {v4, v5, p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;)V

    .line 532
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/iMe/fork/enums/DialogType;Lkotlin/jvm/functions/Function1;)V

    .line 540
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setTopicsBar$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;)V

    goto :goto_0

    .line 542
    :cond_0
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, v1, :cond_1

    new-instance v1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 543
    :cond_1
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne p2, v1, :cond_2

    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    .line 545
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 546
    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    .line 547
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    .line 544
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 551
    :cond_2
    new-instance v1, Lcom/iMe/fork/ui/view/MovingCheckCell;

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/iMe/fork/ui/view/MovingCheckCell;-><init>(Landroid/content/Context;)V

    .line 552
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 555
    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    if-ne p2, p1, :cond_3

    const/16 p1, 0x24

    .line 557
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, -0x2

    .line 555
    :goto_1
    invoke-direct {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final swapElements(II)V
    .locals 5

    .line 502
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getButtons(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Ljava/util/List;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    sub-int v1, p1, v1

    .line 504
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v2

    sub-int v2, p2, v2

    .line 505
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/fork/models/MultiPanelButtonState;

    .line 506
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/fork/models/MultiPanelButtonState;

    .line 507
    invoke-virtual {v3, v2}, Lcom/iMe/fork/models/MultiPanelButtonState;->setPosition(I)V

    .line 508
    invoke-virtual {v4, v1}, Lcom/iMe/fork/models/MultiPanelButtonState;->setPosition(I)V

    .line 509
    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public final updateRows()V
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 483
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 484
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 485
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getNewIsEnabled$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setHideOnScrollRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 487
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 488
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 489
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getCurrentDialogType()Lcom/iMe/fork/enums/DialogType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 490
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 491
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setSectionInfoRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setHideOnScrollRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 494
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 495
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 496
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 497
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setSectionInfoRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    :goto_0
    return-void
.end method
