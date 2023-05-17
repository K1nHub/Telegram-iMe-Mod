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
    value = "SMAP\nMultiPanelSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiPanelSettingsActivity.kt\ncom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,396:1\n1#2:397\n*E\n"
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

    .line 225
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 228
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    goto :goto_6

    .line 276
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

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getAllButtonsRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    goto :goto_6

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    :goto_4
    move v1, v2

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getSectionInfoRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    goto :goto_6

    .line 278
    :cond_8
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->MOVING_CHECK_CELL:I

    :goto_6
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
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

    .line 304
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$needDivider(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)Z

    move-result v0

    .line 305
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 306
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_2

    .line 309
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 310
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    .line 311
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 312
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_settings_enable_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getNewIsEnabled$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 314
    :cond_0
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 315
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getHideOnScrollRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 316
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_hide_on_scroll:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getNewIsHideOnScrollEnabled$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 317
    :cond_1
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getAllButtonsRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_9

    .line 318
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_enable_all_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$isAllButtonsEnabled(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 323
    :cond_2
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne v1, v2, :cond_5

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v2, :cond_5

    .line 324
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 325
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_3

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getNewIsEnabled$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0xc

    .line 327
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    const/4 p2, 0x0

    .line 328
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 330
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 332
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_4

    .line 333
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_settings_enable_item_subtitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 334
    :cond_4
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getSectionInfoRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 335
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 340
    :cond_5
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->MOVING_CHECK_CELL:I

    if-ne v1, v2, :cond_9

    instance-of v1, p1, Lcom/iMe/fork/ui/view/MovingCheckCell;

    if-eqz v1, :cond_9

    .line 341
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    check-cast p1, Lcom/iMe/fork/ui/view/MovingCheckCell;

    .line 342
    invoke-static {v1, p2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getButton(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)Lcom/iMe/fork/models/MultiPanelButtonState;

    move-result-object p2

    if-nez p2, :cond_6

    return-void

    .line 343
    :cond_6
    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/enums/MultiPanelButton;->getTitleId()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/enums/MultiPanelButton;->getIconId()I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/fork/enums/MultiPanelButton;->getPorterDuffMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setIcon(IILandroid/graphics/PorterDuff$Mode;)V

    .line 345
    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v2

    sget-object v3, Lcom/iMe/fork/enums/MultiPanelButton;->SUBSCRIBERS:Lcom/iMe/fork/enums/MultiPanelButton;

    const-string v4, "text"

    if-eq v2, v3, :cond_8

    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->getType()Lcom/iMe/fork/enums/MultiPanelButton;

    move-result-object v2

    sget-object v3, Lcom/iMe/fork/enums/MultiPanelButton;->RECENT_ACTIONS:Lcom/iMe/fork/enums/MultiPanelButton;

    if-ne v2, v3, :cond_7

    goto :goto_0

    .line 348
    :cond_7
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, v1, p2, v0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 346
    :cond_8
    :goto_0
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/messenger/R$string;->multi_panel_settings_only_for_admin_button_item_subtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInternalString(R.stri\u2026min_button_item_subtitle)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/iMe/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, v1, v2, p2, v0}, Lcom/iMe/fork/ui/view/MovingCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_9
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    const-string v0, "parentActivity"

    if-ne p2, p1, :cond_0

    new-instance v1, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/iMe/fork/enums/DialogType;->values()[Lcom/iMe/fork/enums/DialogType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v3}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->getCurrentDialogType()Lcom/iMe/fork/enums/DialogType;

    move-result-object v3

    .line 288
    new-instance v4, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1;

    iget-object v5, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-direct {v4, v5, p0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1;-><init>(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;)V

    .line 284
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/iMe/fork/enums/DialogType;Lkotlin/jvm/functions/Function1;)V

    .line 288
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setTopicsBar$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;Lcom/iMe/fork/ui/view/DialogTypeTopicsBar;)V

    goto :goto_0

    .line 289
    :cond_0
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, v1, :cond_1

    new-instance v1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 290
    :cond_1
    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne p2, v1, :cond_2

    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    .line 291
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 293
    :cond_2
    new-instance v1, Lcom/iMe/fork/ui/view/MovingCheckCell;

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/iMe/fork/ui/view/MovingCheckCell;-><init>(Landroid/content/Context;)V

    .line 294
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 297
    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    if-ne p2, p1, :cond_3

    const/16 p1, 0x24

    .line 298
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, -0x2

    .line 297
    :goto_1
    invoke-direct {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final swapElements(II)V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getButtons(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Ljava/util/List;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    sub-int v1, p1, v1

    .line 258
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v2

    sub-int v2, p2, v2

    .line 259
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/fork/models/MultiPanelButtonState;

    .line 260
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/fork/models/MultiPanelButtonState;

    .line 261
    invoke-virtual {v3, v2}, Lcom/iMe/fork/models/MultiPanelButtonState;->setPosition(I)V

    .line 262
    invoke-virtual {v4, v1}, Lcom/iMe/fork/models/MultiPanelButtonState;->setPosition(I)V

    .line 263
    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public final updateRows()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 235
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 236
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 237
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getNewIsEnabled$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setHideOnScrollRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 239
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 240
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setAllButtonsRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 241
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 242
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

    .line 243
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 244
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setSectionInfoRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setHideOnScrollRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 247
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setDialogTypeTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 248
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setAllButtonsRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 249
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setButtonsStartRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 250
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setButtonsEndRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 251
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;->access$setSectionInfoRow$p(Lcom/iMe/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    :goto_0
    return-void
.end method
