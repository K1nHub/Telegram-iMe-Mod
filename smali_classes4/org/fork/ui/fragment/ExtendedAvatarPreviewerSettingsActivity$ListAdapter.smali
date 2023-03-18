.class final Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ExtendedAvatarPreviewerSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 160
    invoke-virtual {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 191
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getEnableRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getOpenByClickRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    goto :goto_4

    .line 192
    :cond_2
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getEnableSectionRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getOpenByClickSectionRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    goto :goto_4

    .line 193
    :cond_5
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getItemsHeaderRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    goto :goto_4

    .line 194
    :cond_6
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX:I

    :goto_4
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$isClickableViewType(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$needDivider(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)Z

    move-result v0

    .line 214
    invoke-virtual {p0, p2}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 215
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_1

    .line 218
    iget-object v1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 219
    invoke-static {v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getEnableRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    .line 220
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 221
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_chat_user_options_by_avatar_click_subtitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 223
    :cond_0
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 224
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_chat_user_options_by_avatar_click_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerByTapEnabled:Z

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 228
    :cond_1
    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne v1, v2, :cond_3

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v2, :cond_3

    .line 229
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 230
    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getEnableSectionRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    if-ne p2, v1, :cond_2

    sget-boolean p2, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    if-nez p2, :cond_2

    .line 231
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_chat_user_options_by_avatar_click_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 235
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 236
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 237
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 241
    :cond_3
    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    if-ne v1, v2, :cond_4

    instance-of v2, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v2, :cond_4

    .line 242
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getItemsHeaderRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 243
    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    sget p2, Lorg/telegram/messenger/R$string;->wallet_transaction_details_section_actions:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    :cond_4
    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX:I

    if-ne v1, v2, :cond_5

    instance-of v1, p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    if-eqz v1, :cond_5

    .line 247
    iget-object v1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getItems(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)[Lorg/fork/enums/ExtendedAvatarPreviewerItem;

    move-result-object v1

    iget-object v2, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getItemsStartRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v2

    sub-int/2addr p2, v2

    aget-object p2, v1, p2

    .line 248
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    invoke-virtual {p2}, Lorg/fork/enums/ExtendedAvatarPreviewerItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getNewItems(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, v1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 157
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 201
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 202
    :cond_1
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    const-string/jumbo v0, "windowBackgroundWhite"

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 205
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckBoxCell;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 209
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 166
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setOpenByClickRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 167
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setOpenByClickSectionRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 168
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setItemsHeaderRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 169
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setItemsStartRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 170
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setItemsEndRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 171
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 172
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setEnableRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 173
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setEnableSectionRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 174
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setOpenByClickRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 176
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setOpenByClickSectionRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 177
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setItemsHeaderRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 178
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setItemsStartRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 179
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getItems(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)[Lorg/fork/enums/ExtendedAvatarPreviewerItem;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    .line 180
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->access$setItemsEndRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V

    :cond_0
    return-void
.end method
