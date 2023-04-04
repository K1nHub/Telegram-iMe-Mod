.class final Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "RecentChatsDialogTypeSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;


# direct methods
.method public static synthetic $r8$lambda$JnU4vc_R0z8qw-Iu8sJUFWnZOR0(Lorg/telegram/ui/Cells/TextCheckCell2;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->onBindViewHolder$lambda$5$lambda$4(Lorg/telegram/ui/Cells/TextCheckCell2;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_MMXRRlByOm-beQyDUJm3c0u1MU(Lorg/telegram/ui/Cells/TextCheckCell2;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->onBindViewHolder$lambda$5$lambda$3(Lorg/telegram/ui/Cells/TextCheckCell2;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 183
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method private static final onBindViewHolder$lambda$5$lambda$3(Lorg/telegram/ui/Cells/TextCheckCell2;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;)V
    .locals 4

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 277
    invoke-static {p1, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDialogTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Z)V

    .line 278
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    sget-object v2, Lcom/iMe/fork/enums/RecentChatsDialogType;->Companion:Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/fork/controller/RecentChatsController;->setSelectedRecentChatsDialogTypes(Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 280
    invoke-static {p1, v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDialogTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Z)V

    .line 281
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/RecentChatsController;->getSelectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 283
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/RecentChatsController;->saveConfig()V

    .line 284
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 285
    invoke-virtual {p2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->updateRows()V

    .line 286
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final onBindViewHolder$lambda$5$lambda$4(Lorg/telegram/ui/Cells/TextCheckCell2;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;)V
    .locals 4

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 295
    invoke-static {p1, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDrawStatusTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Z)V

    .line 296
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    sget-object v2, Lcom/iMe/fork/enums/DrawStatusType;->Companion:Lcom/iMe/fork/enums/DrawStatusType$Companion;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedDrawStatusTypes()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/DrawStatusType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/fork/controller/RecentChatsController;->setSelectedDrawStatusTypes(Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 298
    invoke-static {p1, v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDrawStatusTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Z)V

    .line 299
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/RecentChatsController;->getSelectedDrawStatusTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 301
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/RecentChatsController;->saveConfig()V

    .line 302
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 303
    invoke-virtual {p2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->updateRows()V

    .line 304
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDialogsTypesSectionRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    goto :goto_6

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDrawStatusTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDialogTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->VIEW_TYPE_EXPANDABLE_SWITCH:I

    goto :goto_6

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    :goto_4
    move v1, v2

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getEnableArchiveRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    goto :goto_6

    .line 231
    :cond_8
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->VIEW_TYPE_INNER_CHECK:I

    :goto_6
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$isClickableViewType(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$needDivider(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)Z

    move-result v0

    .line 254
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 255
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->VIEW_TYPE_INNER_CHECK:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    instance-of v2, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz v2, :cond_2

    .line 258
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

    .line 259
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDialogsTypesSectionRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v0

    if-le p2, v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDrawStatusTypes(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)[Lcom/iMe/fork/enums/DrawStatusType;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDrawStatusTypesExpandableListStartRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    aget-object p2, v0, p2

    .line 262
    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/DrawStatusType;->getNameResId()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/RecentChatsController;->isDrawStatusType(Lcom/iMe/fork/enums/DrawStatusType;)Z

    move-result v8

    const/4 v9, 0x1

    const-string v7, ""

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto/16 :goto_3

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDialogTypes(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)[Lcom/iMe/fork/enums/RecentChatsDialogType;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    aget-object p2, v0, p2

    .line 265
    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p2}, Lcom/iMe/fork/enums/RecentChatsDialogType;->getTitle()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/RecentChatsController;->getSelectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    const-string v7, ""

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto/16 :goto_3

    .line 268
    :cond_2
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->VIEW_TYPE_EXPANDABLE_SWITCH:I

    if-ne v1, v2, :cond_6

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz v2, :cond_6

    .line 269
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 271
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDialogTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v2

    const-string v5, "format(locale, format, *args)"

    const-string v6, "%d/5"

    if-ne p2, v2, :cond_4

    .line 272
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/RecentChatsController;->getSelectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    .line 273
    sget v2, Lorg/telegram/messenger/R$string;->swipe_to_next_unread_dialog_types:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    if-lez p2, :cond_3

    move v7, v4

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    invoke-virtual {p1, v2, v7, v0, v4}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZZ)V

    .line 274
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, v6, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDialogTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)Z

    move-result v0

    xor-int/2addr v0, v4

    new-instance v2, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v1, p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/TextCheckCell2;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;)V

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setCollapseArrow(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_3

    .line 289
    :cond_4
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDrawStatusTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_a

    .line 290
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/RecentChatsController;->getSelectedDrawStatusTypes()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    .line 291
    sget v2, Lorg/telegram/messenger/R$string;->recent_chats_counters_and_reactions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    if-lez p2, :cond_5

    move v7, v4

    goto :goto_2

    :cond_5
    move v7, v3

    :goto_2
    invoke-virtual {p1, v2, v7, v0, v4}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZZ)V

    .line 292
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, v6, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDrawStatusTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)Z

    move-result v0

    xor-int/2addr v0, v4

    new-instance v2, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1, p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/TextCheckCell2;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;)V

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setCollapseArrow(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_3

    .line 310
    :cond_6
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne v1, v2, :cond_8

    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_8

    .line 311
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 312
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_7

    .line 313
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 314
    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_recent_chats:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 315
    :cond_7
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getEnableArchiveRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_a

    .line 316
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    .line 317
    sget p2, Lorg/telegram/messenger/R$string;->swipe_to_next_unread_dialog_consider_archive:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 321
    :cond_8
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne v1, v0, :cond_a

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v0, :cond_a

    .line 322
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 323
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    const-string v2, "windowBackgroundGrayShadow"

    if-ne p2, v1, :cond_9

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result p2

    if-nez p2, :cond_9

    .line 324
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 325
    sget p2, Lorg/telegram/messenger/R$string;->recent_chats_hint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_3

    .line 328
    :cond_9
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 329
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 330
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->VIEW_TYPE_INNER_CHECK:I

    const-string v0, "windowBackgroundWhite"

    if-ne p2, p1, :cond_0

    new-instance p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v1, 0x4

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p1, p2, v1, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 238
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p2

    const/16 v1, 0xe

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 239
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p2

    const-string v1, "switch2TrackChecked"

    const-string v2, "radioBackground"

    const-string v3, "checkboxCheck"

    invoke-virtual {p2, v1, v2, v3}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 240
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setEnabled(Z)V

    .line 241
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 243
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 244
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 245
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell2;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 249
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final updateRows()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 190
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 191
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 193
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDrawStatusTypesExpandableListStartRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 194
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDrawStatusTypesExpandableListEndRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 195
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 196
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDialogTypesEndRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 198
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setEnableArchiveRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 200
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDialogTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 201
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDialogTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 203
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDialogTypes(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)[Lcom/iMe/fork/enums/RecentChatsDialogType;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 204
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDialogTypesEndRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDialogsTypesSectionRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 207
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDrawStatusTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 208
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDrawStatusTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDrawStatusTypesExpandableListStartRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 210
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v2}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getDrawStatusTypes(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)[Lcom/iMe/fork/enums/DrawStatusType;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 211
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDrawStatusTypesExpandableListEndRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setEnableArchiveRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 215
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDrawStatusTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 216
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDialogsTypesSectionRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    .line 217
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->access$setDialogTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V

    :cond_2
    :goto_0
    return-void
.end method
