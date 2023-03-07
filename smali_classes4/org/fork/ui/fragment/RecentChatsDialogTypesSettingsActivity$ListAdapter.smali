.class final Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "RecentChatsDialogTypesSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iput-object p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 145
    invoke-virtual {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getEnableSectionRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getDialogTypesHeaderRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    goto :goto_0

    .line 175
    :cond_1
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$isClickableViewType(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$needDivider(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)Z

    move-result v0

    .line 192
    invoke-virtual {p0, p2}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 193
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    sget v2, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_1

    .line 196
    iget-object v1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 197
    invoke-static {v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getEnableRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    .line 198
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 199
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_recent_chats:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 202
    invoke-static {v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getDialogTypes(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)[Lorg/fork/enums/DialogType;

    move-result-object v2

    invoke-static {v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getDialogTypesStartRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)I

    move-result v3

    sub-int/2addr p2, v3

    aget-object p2, v2, p2

    .line 203
    invoke-virtual {p2}, Lorg/fork/enums/DialogType;->getNameResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/RecentChatsController;->getSelectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, v2, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 208
    :cond_1
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne v1, v0, :cond_3

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 210
    invoke-static {v0}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getEnableSectionRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)I

    move-result v1

    const-string v2, "windowBackgroundGrayShadow"

    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    .line 211
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    sget p2, Lorg/telegram/messenger/R$string;->swipe_to_next_unread_dialog_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 216
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 217
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 221
    :cond_3
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    if-ne v1, v0, :cond_4

    instance-of v0, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getDialogTypesHeaderRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 223
    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    sget p2, Lorg/telegram/messenger/R$string;->swipe_to_next_unread_dialog_types:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 142
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 182
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 183
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    const-string p2, "windowBackgroundWhite"

    .line 184
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 185
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 187
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 180
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 151
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)V

    .line 152
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$setEnableRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)V

    .line 153
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$setEnableSectionRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)V

    .line 154
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)V

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$setDialogTypesHeaderRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)V

    .line 156
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$setDialogTypesStartRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)V

    .line 157
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-static {v2}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getDialogTypes(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)[Lorg/fork/enums/DialogType;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$setRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)V

    .line 158
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$getRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$setDialogTypesEndRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$setDialogTypesHeaderRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)V

    .line 161
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$setDialogTypesStartRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)V

    .line 162
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;

    invoke-static {v0, v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;->access$setDialogTypesEndRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypesSettingsActivity;I)V

    :goto_0
    return-void
.end method
