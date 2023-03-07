.class final Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SwipeToGoToNextUnreadDialogSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 142
    invoke-virtual {p0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 174
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getEnableSectionRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getConsiderArchiveSectionRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    goto :goto_1

    .line 175
    :cond_2
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getDialogTypesHeaderRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    goto :goto_1

    .line 176
    :cond_3
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    :goto_1
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$isClickableViewType(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$needDivider(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)Z

    move-result v0

    .line 193
    invoke-virtual {p0, p2}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 194
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_2

    .line 197
    iget-object v1, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 198
    invoke-static {v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getEnableRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    .line 199
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 200
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_swipe_to_next_unread_dialog:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 202
    :cond_0
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 203
    invoke-static {v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getConsiderArchiveRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_1

    .line 204
    sget p2, Lorg/telegram/messenger/R$string;->swipe_to_next_unread_dialog_consider_archive:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 206
    :cond_1
    invoke-static {v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getDialogTypes(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)[Lorg/fork/enums/DialogType;

    move-result-object v2

    invoke-static {v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getDialogTypesStartRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v3

    sub-int/2addr p2, v3

    aget-object p2, v2, p2

    .line 207
    invoke-virtual {p2}, Lorg/fork/enums/DialogType;->getNameResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/ToolsController;->getSelectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, v2, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 212
    :cond_2
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne v1, v0, :cond_4

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 214
    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getEnableSectionRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    const-string v2, "windowBackgroundGrayShadow"

    if-ne p2, v1, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    .line 215
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    sget p2, Lorg/telegram/messenger/R$string;->swipe_to_next_unread_dialog_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 220
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 221
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 225
    :cond_4
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    if-ne v1, v0, :cond_5

    instance-of v0, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getDialogTypesHeaderRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 227
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

    .line 139
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 183
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 184
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    const-string p2, "windowBackgroundWhite"

    .line 185
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 186
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 188
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 181
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 148
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 149
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setEnableRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 150
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setEnableSectionRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 151
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lorg/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setConsiderArchiveRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 153
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setConsiderArchiveSectionRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 154
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setDialogTypesHeaderRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 155
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setDialogTypesStartRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 156
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getDialogTypes(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)[Lorg/fork/enums/DialogType;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 157
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setDialogTypesEndRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setConsiderArchiveRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 160
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setConsiderArchiveSectionRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 161
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setDialogTypesHeaderRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 162
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setDialogTypesStartRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    .line 163
    iget-object v0, p0, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->access$setDialogTypesEndRow$p(Lorg/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V

    :goto_0
    return-void
.end method
