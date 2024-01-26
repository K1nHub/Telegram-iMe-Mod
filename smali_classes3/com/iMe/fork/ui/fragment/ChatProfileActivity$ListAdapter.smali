.class final Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatProfileActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/ChatProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;


# direct methods
.method public static synthetic $r8$lambda$Gmea3KM7Caau7ITJHZlfnorq1mo(Lorg/telegram/ui/Cells/TextCheckCell2;Lcom/iMe/fork/ui/fragment/ChatProfileActivity;Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->onBindViewHolder$lambda$5$lambda$4(Lorg/telegram/ui/Cells/TextCheckCell2;Lcom/iMe/fork/ui/fragment/ChatProfileActivity;Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 428
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 431
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method private static final onBindViewHolder$lambda$5$lambda$4(Lorg/telegram/ui/Cells/TextCheckCell2;Lcom/iMe/fork/ui/fragment/ChatProfileActivity;Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;)V
    .locals 3

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 548
    invoke-static {p1, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setDialogTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;Z)V

    .line 549
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object v0

    .line 550
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedChatProfileDialogTypes()Ljava/util/Set;

    move-result-object v2

    .line 551
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 549
    invoke-virtual {v0, v2}, Lcom/iMe/fork/controller/ChatProfileController;->setSelectedChatProfileDialogTypes(Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 553
    invoke-static {p1, v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setDialogTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;Z)V

    .line 554
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ChatProfileController;->getSelectedChatProfileDialogTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 556
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ChatProfileController;->saveConfig()V

    .line 557
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 558
    invoke-virtual {p2}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->updateRows()V

    .line 559
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    goto :goto_1

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getDialogsTypesSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    goto :goto_1

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getDialogTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL_2:I

    goto :goto_1

    .line 471
    :cond_4
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    goto :goto_1

    .line 472
    :cond_5
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CHECK_BOX_CELL:I

    :goto_1
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$isClickableViewType(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$needDivider(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)Z

    move-result v0

    .line 514
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 515
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->CHECK_BOX_CELL:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    instance-of v2, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v2, :cond_1

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    move v10, v4

    goto :goto_0

    :cond_0
    move v10, v3

    .line 519
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 520
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getDialogTypes(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)[Lcom/iMe/fork/enums/ChatProfileDialogType;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    aget-object p2, v0, p2

    .line 521
    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 522
    invoke-virtual {p2}, Lcom/iMe/fork/enums/ChatProfileDialogType;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 524
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ChatProfileController;->getSelectedChatProfileDialogTypes()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    const-string v7, ""

    .line 521
    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto/16 :goto_2

    .line 530
    :cond_1
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL_2:I

    if-ne v1, v2, :cond_3

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz v2, :cond_3

    .line 531
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 533
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getDialogTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v2

    if-ne p2, v2, :cond_7

    .line 535
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ChatProfileController;->getSelectedChatProfileDialogTypes()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    .line 537
    sget v2, Lorg/telegram/messenger/R$string;->swipe_to_next_unread_dialog_types:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    if-lez p2, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    .line 536
    :goto_1
    invoke-virtual {p1, v2, v5, v0, v4}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZZ)V

    .line 543
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v2, "%d/4"

    invoke-static {v0, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "format(locale, format, *args)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getDialogTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)Z

    move-result v0

    xor-int/2addr v0, v4

    .line 542
    new-instance v2, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1, p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/TextCheckCell2;Lcom/iMe/fork/ui/fragment/ChatProfileActivity;Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;)V

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setCollapseArrow(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 566
    :cond_3
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne v1, v2, :cond_4

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_4

    .line 567
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 568
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 570
    sget v1, Lorg/telegram/messenger/R$string;->settings_tools_chat_profile_id_telegram_enable_panel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled()Z

    move-result p2

    .line 569
    invoke-virtual {p1, v1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 577
    :cond_4
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    if-ne v1, v2, :cond_5

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz v2, :cond_5

    .line 578
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v1

    if-ne p2, v1, :cond_7

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 580
    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_chat_profile_id_telegram:I

    .line 579
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 582
    sget-object v1, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->Companion:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ChatProfileController;->getSelectedChatProfileTelegramIdMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    move-result-object v1

    .line 583
    invoke-virtual {v1}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 588
    :cond_5
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne v1, v0, :cond_7

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_7

    .line 589
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 590
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v1

    if-ne p2, v1, :cond_6

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled()Z

    move-result p2

    if-nez p2, :cond_6

    .line 592
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    .line 593
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    .line 594
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    .line 591
    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 596
    sget p2, Lorg/telegram/messenger/R$string;->settings_tools_chat_profile_id_telegram_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 597
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_2

    .line 600
    :cond_6
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    .line 601
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    .line 602
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    .line 599
    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 604
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 605
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CHECK_BOX_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 481
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x4

    const/16 v1, 0x14

    .line 483
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 484
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getResourceProvider$p$s-617809600(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    .line 480
    invoke-direct {p1, p2, v0, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 486
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p2

    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 487
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p2

    .line 488
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    .line 489
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    .line 490
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    .line 487
    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    const/4 p2, 0x1

    .line 492
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setEnabled(Z)V

    .line 493
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 496
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_SETTINGS_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 497
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 500
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 501
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne p2, p1, :cond_3

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 502
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell2;-><init>(Landroid/content/Context;)V

    .line 503
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 506
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    .line 438
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    .line 439
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    .line 441
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    .line 442
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setDialogTypesEndRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    .line 444
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    .line 446
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setDialogsTypesSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    .line 447
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setDialogTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    .line 448
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getDialogTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    .line 450
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getDialogTypes(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)[Lcom/iMe/fork/enums/ChatProfileDialogType;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    .line 451
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setDialogTypesEndRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setDialogsTypesSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    .line 456
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setDialogTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    .line 457
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->access$setChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V

    :cond_1
    :goto_0
    return-void
.end method
