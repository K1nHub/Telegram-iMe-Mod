.class final Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "AllChatsTabSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 179
    invoke-static {p1}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$updateRows(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 189
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$getEnableRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$getIconInsteadTitleRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    goto :goto_4

    .line 190
    :cond_2
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$getEnableSectionRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$getFabsSectionRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    goto :goto_4

    .line 191
    :cond_5
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$getIconInsteadTitleHeaderRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    goto :goto_4

    .line 192
    :cond_6
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$getFabsRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->FABS:I

    goto :goto_4

    .line 193
    :cond_7
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    :goto_4
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$isClickableViewType(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$needDivider(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;I)Z

    move-result v0

    .line 212
    invoke-virtual {p0, p2}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 213
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne v1, v2, :cond_1

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_1

    .line 216
    iget-object v1, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 217
    invoke-static {v1}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$getEnableRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    .line 218
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 219
    sget p2, Lorg/telegram/messenger/R$string;->all_chats_tab_settings_enable_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 220
    :cond_0
    invoke-static {v1}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$getIconInsteadTitleRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_6

    const/4 p2, 0x0

    .line 221
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 222
    sget p2, Lorg/telegram/messenger/R$string;->all_chats_tab_settings_icon_instead_text_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 226
    :cond_1
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne v1, v0, :cond_4

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_4

    .line 227
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 228
    invoke-static {v0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$getEnableSectionRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I

    move-result v1

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    if-ne p2, v1, :cond_3

    .line 229
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 230
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 231
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 232
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 235
    sget p2, Lorg/telegram/messenger/R$string;->all_chats_tab_settings_enable_item_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    :cond_3
    invoke-static {v0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$getFabsSectionRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_6

    .line 238
    sget p2, Lorg/telegram/messenger/R$string;->create_folder_change_fab_section_description:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 243
    :cond_4
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    if-ne v1, v0, :cond_5

    instance-of v0, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v0, :cond_5

    .line 244
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 245
    invoke-static {v0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$getIconInsteadTitleHeaderRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 246
    sget p2, Lorg/telegram/messenger/R$string;->all_chats_tab_settings_icon_instead_text_header:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 250
    :cond_5
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->FABS:I

    if-ne v1, v0, :cond_6

    instance-of v0, p1, Lorg/fork/ui/view/FabsCell;

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    check-cast p1, Lorg/fork/ui/view/FabsCell;

    .line 252
    invoke-static {v0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->access$getFabsRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_6

    .line 253
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/FiltersController;->getSelectedAllChatsTabFabs()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/fork/ui/view/FabsCell;->setFabs(Ljava/util/Set;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 176
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 198
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 199
    :cond_1
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    const-string/jumbo v0, "windowBackgroundWhite"

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 200
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 202
    :cond_2
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->FABS:I

    if-ne p2, p1, :cond_3

    new-instance p1, Lorg/fork/ui/view/FabsCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v1, "parentActivity"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/fork/ui/view/FabsCell;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 205
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 207
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
