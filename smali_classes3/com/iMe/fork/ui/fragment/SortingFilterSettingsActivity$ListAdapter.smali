.class final Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SortingFilterSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSortingFilterSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SortingFilterSettingsActivity.kt\ncom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,325:1\n1#2:326\n*E\n"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;


# direct methods
.method public static synthetic $r8$lambda$fKiRPsISlHwTDQSKrQVlRDaFpKk(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;Lcom/iMe/fork/models/SortingTabState;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->onBindViewHolder$lambda$8$lambda$7(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;Lcom/iMe/fork/models/SortingTabState;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jdu1TKf7sO-MW1TdbxcPXeIDsIU(Lcom/iMe/fork/models/SortingTabState;Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;ILjava/util/Set;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->onBindViewHolder$lambda$8$lambda$7$lambda$6(Lcom/iMe/fork/models/SortingTabState;Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;ILjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method private static final onBindViewHolder$lambda$8$lambda$7(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;Lcom/iMe/fork/models/SortingTabState;I)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iMe/fork/models/SortingTabState;->getFabs()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, p0, p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/models/SortingTabState;Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;-><init>(Landroid/content/Context;Ljava/util/Set;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private static final onBindViewHolder$lambda$8$lambda$7$lambda$6(Lcom/iMe/fork/models/SortingTabState;Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;ILjava/util/Set;)V
    .locals 1

    const-string v0, "$state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fabs"

    .line 274
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/iMe/fork/models/SortingTabState;->setFabs(Ljava/util/Set;)V

    .line 275
    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getListAdapter(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 276
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getArchiveSwitchTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    goto :goto_1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    goto :goto_1

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getDragAndDropInfoRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    goto :goto_1

    .line 212
    :cond_4
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SORTING_FILTER:I

    :goto_1
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$isClickableViewType(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$needDivider(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)Z

    move-result v0

    .line 238
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 239
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_1

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne v1, v2, :cond_1

    .line 242
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 243
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_5

    .line 245
    invoke-virtual {v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_archive_sorting:I

    goto :goto_0

    .line 246
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->sorting_settings_enable_item_title:I

    .line 244
    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 247
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v1

    .line 244
    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 251
    :cond_1
    instance-of v2, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v2, :cond_4

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne v1, v2, :cond_4

    .line 252
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 253
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    const-string v2, "windowBackgroundGrayShadow"

    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/iMe/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 255
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 256
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_2

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    sget p2, Lorg/telegram/messenger/R$string;->sorting_settings_enable_item_hint:I

    goto :goto_1

    .line 261
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->sorting_settings_drag_and_drop_hint:I

    .line 259
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 263
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_2

    .line 267
    :cond_4
    instance-of v2, p1, Lcom/iMe/fork/ui/view/SortingFilterCell;

    if-eqz v2, :cond_5

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->SORTING_FILTER:I

    if-ne v1, v2, :cond_5

    .line 268
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    check-cast p1, Lcom/iMe/fork/ui/view/SortingFilterCell;

    .line 269
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iMe/fork/controller/FiltersController;->getSortingTabs(Z)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getSortingIndexByPosition(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/fork/models/SortingTabState;

    .line 270
    invoke-virtual {p1, v2, v0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->setState(Lcom/iMe/fork/models/SortingTabState;Z)V

    .line 271
    invoke-virtual {v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->setFabsVisible(Z)V

    .line 272
    new-instance v0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, v2, p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;Lcom/iMe/fork/models/SortingTabState;I)V

    invoke-virtual {p1, v0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->setOnFabsClick(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    if-ne p2, p1, :cond_0

    new-instance p1, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "parentActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result v0

    .line 224
    new-instance v1, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$onCreateViewHolder$1;

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-direct {v1, v2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$onCreateViewHolder$1;-><init>(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)V

    .line 218
    invoke-direct {p1, p2, v0, v1}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;-><init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V

    .line 224
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {p2, p1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setTopicsBar$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;)V

    goto :goto_0

    .line 225
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne p2, p1, :cond_1

    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 226
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    goto :goto_0

    .line 228
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-ne p2, p1, :cond_2

    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 229
    :cond_2
    new-instance p1, Lcom/iMe/fork/ui/view/SortingFilterCell;

    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/iMe/fork/ui/view/SortingFilterCell;-><init>(Landroid/content/Context;)V

    const-string p2, "windowBackgroundWhite"

    .line 230
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 233
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final swapElements(II)V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result v1

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v2, p1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getSortingIndexByPosition(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)I

    move-result v2

    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v3, p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getSortingIndexByPosition(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/iMe/fork/controller/FiltersController;->swapSortingFilters(ZII)V

    .line 198
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 199
    iget-object p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public final updateRows()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setTabsRowStart$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 181
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setTabsRowEnd$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 182
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setDragAndDropInfoRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 184
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 185
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setArchiveSwitchTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 186
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 187
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 188
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setTabsRowStart$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 190
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    sget-object v2, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {v3}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 191
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setTabsRowEnd$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 192
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setDragAndDropInfoRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    :cond_0
    return-void
.end method