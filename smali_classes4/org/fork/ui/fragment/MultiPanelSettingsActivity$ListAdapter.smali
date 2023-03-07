.class final Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "MultiPanelSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/MultiPanelSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiPanelSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiPanelSettingsActivity.kt\norg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,404:1\n1#2:405\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iput-object p1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 229
    invoke-virtual {p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 276
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getDialogTypeTopicsBarRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    goto :goto_8

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getHideOnScrollRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getAllButtonsRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    goto :goto_8

    .line 278
    :cond_5
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableSectionRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    :goto_4
    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getHideOnScrollSectionRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_8

    :goto_6
    const/4 v1, 0x1

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getSectionInfoRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    goto :goto_6

    :cond_9
    :goto_7
    if-eqz v1, :cond_a

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    goto :goto_8

    .line 279
    :cond_a
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->MOVING_CHECK:I

    :goto_8
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$isClickableViewType(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$needDivider(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)Z

    move-result v0

    .line 303
    invoke-virtual {p0, p2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 304
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_2

    .line 307
    iget-object v1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 308
    invoke-static {v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 309
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 310
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_settings_enable_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getNewIsEnabled$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 312
    :cond_0
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 313
    invoke-static {v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getHideOnScrollRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 314
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_hide_on_scroll:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getNewIsHideOnScrollEnabled$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 315
    :cond_1
    invoke-static {v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getAllButtonsRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_a

    .line 316
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_enable_all_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$isAllButtonsEnabled(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 321
    :cond_2
    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne v1, v2, :cond_6

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v2, :cond_6

    .line 322
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 323
    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableSectionRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    const/4 v2, 0x0

    const-string v5, "windowBackgroundGrayShadow"

    if-ne p2, v1, :cond_3

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getNewIsEnabled$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 324
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0xc

    .line 325
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 326
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 328
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    sget v6, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v1, v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 329
    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getHideOnScrollSectionRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_4

    .line 330
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 331
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 333
    :cond_4
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 334
    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getEnableSectionRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 335
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_settings_enable_item_subtitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 336
    :cond_5
    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getSectionInfoRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_a

    .line 337
    sget p2, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 343
    :cond_6
    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->MOVING_CHECK:I

    if-ne v1, v2, :cond_a

    instance-of v1, p1, Lorg/fork/ui/view/MovingCheckCell;

    if-eqz v1, :cond_a

    .line 344
    iget-object v1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    check-cast p1, Lorg/fork/ui/view/MovingCheckCell;

    .line 345
    invoke-static {v1, p2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getButton(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)Lorg/fork/models/MultiPanelButtonState;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    .line 346
    :cond_7
    invoke-virtual {p2}, Lorg/fork/models/MultiPanelButtonState;->getType()Lorg/fork/enums/MultiPanelButton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/enums/MultiPanelButton;->getTitleId()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-virtual {p2}, Lorg/fork/models/MultiPanelButtonState;->getType()Lorg/fork/enums/MultiPanelButton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/enums/MultiPanelButton;->getIconId()I

    move-result v2

    invoke-virtual {p2}, Lorg/fork/models/MultiPanelButtonState;->getType()Lorg/fork/enums/MultiPanelButton;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fork/enums/MultiPanelButton;->getPorterDuffMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    const-string v4, "chats_actionBackground"

    invoke-virtual {p1, v2, v4, v3}, Lorg/fork/ui/view/MovingCheckCell;->setIcon(ILjava/lang/String;Landroid/graphics/PorterDuff$Mode;)V

    .line 348
    invoke-virtual {p2}, Lorg/fork/models/MultiPanelButtonState;->getType()Lorg/fork/enums/MultiPanelButton;

    move-result-object v2

    sget-object v3, Lorg/fork/enums/MultiPanelButton;->SUBSCRIBERS:Lorg/fork/enums/MultiPanelButton;

    const-string v4, "text"

    if-eq v2, v3, :cond_9

    invoke-virtual {p2}, Lorg/fork/models/MultiPanelButtonState;->getType()Lorg/fork/enums/MultiPanelButton;

    move-result-object v2

    sget-object v3, Lorg/fork/enums/MultiPanelButton;->RECENT_ACTIONS:Lorg/fork/enums/MultiPanelButton;

    if-ne v2, v3, :cond_8

    goto :goto_0

    .line 351
    :cond_8
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, v1, p2, v0}, Lorg/fork/ui/view/MovingCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 349
    :cond_9
    :goto_0
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/messenger/R$string;->multi_panel_settings_only_for_admin_button_item_subtitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInternalString(R.stri\u2026min_button_item_subtitle)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/fork/models/MultiPanelButtonState;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, v1, v2, p2, v0}, Lorg/fork/ui/view/MovingCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_a
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 226
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    const-string v0, "parentActivity"

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/fork/ui/view/DialogTypeTopicsBar;

    iget-object p2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lorg/fork/enums/DialogType;->values()[Lorg/fork/enums/DialogType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getCurrentDialogType()Lorg/fork/enums/DialogType;

    move-result-object v1

    .line 289
    new-instance v2, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1;

    iget-object v3, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-direct {v2, v3, p0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter$onCreateViewHolder$1;-><init>(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;)V

    .line 285
    invoke-direct {p1, p2, v0, v1, v2}, Lorg/fork/ui/view/DialogTypeTopicsBar;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/fork/enums/DialogType;Lkotlin/jvm/functions/Function1;)V

    .line 289
    iget-object p2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {p2, p1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setTopicsBar$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;Lorg/fork/ui/view/DialogTypeTopicsBar;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 290
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 291
    :cond_1
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    .line 292
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 293
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 294
    :cond_2
    new-instance p1, Lorg/fork/ui/view/MovingCheckCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/fork/ui/view/MovingCheckCell;-><init>(Landroid/content/Context;)V

    const-string p2, "windowBackgroundWhite"

    .line 295
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 296
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 298
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 284
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final swapElements(II)V
    .locals 5

    .line 257
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getButtons(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Ljava/util/List;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getButtonsStartRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    sub-int v1, p1, v1

    .line 259
    iget-object v2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getButtonsStartRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v2

    sub-int v2, p2, v2

    .line 260
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fork/models/MultiPanelButtonState;

    .line 261
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/fork/models/MultiPanelButtonState;

    .line 262
    invoke-virtual {v3, v2}, Lorg/fork/models/MultiPanelButtonState;->setPosition(I)V

    .line 263
    invoke-virtual {v4, v1}, Lorg/fork/models/MultiPanelButtonState;->setPosition(I)V

    .line 264
    invoke-interface {v0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public final updateRows()V
    .locals 3

    .line 235
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 236
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setEnableRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 237
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setEnableSectionRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 238
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getNewIsEnabled$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setHideOnScrollRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 240
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setHideOnScrollSectionRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 241
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setDialogTypeTopicsBarRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 242
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setAllButtonsRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 243
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setButtonsStartRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 244
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-virtual {v2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->getCurrentDialogType()Lorg/fork/enums/DialogType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/fork/enums/DialogType;->getMultiPanelButtons()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 245
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setButtonsEndRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 246
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setSectionInfoRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setDialogTypeTopicsBarRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 249
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setAllButtonsRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 250
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setButtonsStartRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 251
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setButtonsEndRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    .line 252
    iget-object v0, p0, Lorg/fork/ui/fragment/MultiPanelSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/MultiPanelSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/MultiPanelSettingsActivity;->access$setSectionInfoRow$p(Lorg/fork/ui/fragment/MultiPanelSettingsActivity;I)V

    :goto_0
    return-void
.end method
