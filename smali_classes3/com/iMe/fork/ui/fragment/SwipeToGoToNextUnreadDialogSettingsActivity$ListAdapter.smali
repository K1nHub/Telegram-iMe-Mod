.class final Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SwipeToGoToNextUnreadDialogSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 147
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getConsiderArchiveSectionRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    goto :goto_1

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getDialogTypesHeaderRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    goto :goto_1

    .line 181
    :cond_3
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    :goto_1
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$isClickableViewType(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$needDivider(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)Z

    move-result v0

    .line 198
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 199
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_2

    .line 202
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 203
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    .line 204
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 205
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_swipe_to_next_unread_dialog:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_0

    .line 207
    :cond_0
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 208
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getConsiderArchiveRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 209
    sget p2, Lorg/telegram/messenger/R$string;->swipe_to_next_unread_dialog_consider_archive:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_0

    .line 211
    :cond_1
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getDialogTypes(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)[Lcom/iMe/fork/enums/DialogType;

    move-result-object v2

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v3

    sub-int/2addr p2, v3

    aget-object p2, v2, p2

    .line 212
    invoke-virtual {p2}, Lcom/iMe/fork/enums/DialogType;->getNameResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ToolsController;->getSelectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, v2, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    .line 217
    :cond_2
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne v1, v0, :cond_4

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 219
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    .line 220
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 221
    sget p2, Lorg/telegram/messenger/R$string;->swipe_to_next_unread_dialog_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 225
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 226
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 230
    :cond_4
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

    if-ne v1, v0, :cond_5

    instance-of v0, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v0, :cond_5

    .line 231
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getDialogTypesHeaderRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 232
    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    sget p2, Lorg/telegram/messenger/R$string;->swipe_to_next_unread_dialog_types:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 188
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 189
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 190
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 193
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 154
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 155
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 156
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setConsiderArchiveRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 158
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setConsiderArchiveSectionRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 159
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setDialogTypesHeaderRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 160
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 161
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getDialogTypes(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)[Lcom/iMe/fork/enums/DialogType;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 162
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setDialogTypesEndRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setConsiderArchiveRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 165
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setConsiderArchiveSectionRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 166
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setDialogTypesHeaderRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 167
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 168
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setDialogTypesEndRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    :goto_0
    return-void
.end method
