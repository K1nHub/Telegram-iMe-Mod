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
    value = "SMAP\nSortingFilterSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SortingFilterSettingsActivity.kt\ncom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,534:1\n1#2:535\n*E\n"
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

    .line 332
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 335
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->updateRows()V

    return-void
.end method

.method private static final onBindViewHolder$lambda$8$lambda$7(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;Lcom/iMe/fork/models/SortingTabState;I)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;

    .line 473
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1}, Lcom/iMe/fork/models/SortingTabState;->getFabs()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 471
    new-instance v3, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, p0, p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/models/SortingTabState;Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 472
    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;-><init>(Landroid/content/Context;Ljava/util/Set;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 471
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

    .line 476
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/iMe/fork/models/SortingTabState;->setFabs(Ljava/util/Set;)V

    .line 477
    invoke-static {p1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getListAdapter(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 478
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

    .line 371
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getArchiveSwitchTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    goto :goto_1

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    goto :goto_1

    .line 376
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

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    goto :goto_1

    .line 377
    :cond_4
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SORTING_FILTER:I

    :goto_1
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
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

    .line 415
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$needDivider(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)Z

    move-result v0

    .line 416
    invoke-virtual {p0, p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 417
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    instance-of v2, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v2, :cond_1

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne v1, v2, :cond_1

    .line 420
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 421
    invoke-static {v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_5

    .line 424
    invoke-virtual {v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->settings_interface_archive_sorting:I

    goto :goto_0

    .line 425
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->sorting_settings_enable_item_title:I

    .line 423
    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 426
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v1

    .line 422
    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2

    .line 432
    :cond_1
    instance-of v2, p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    if-eqz v2, :cond_4

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne v1, v2, :cond_4

    .line 433
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 434
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v1

    .line 435
    invoke-virtual {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result v2

    .line 434
    invoke-virtual {v1, v2}, Lcom/iMe/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    iget-object p2, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 440
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    .line 441
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    .line 438
    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 443
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xc

    .line 444
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_2

    .line 447
    :cond_2
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 448
    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    .line 449
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    .line 446
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 453
    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    sget p2, Lorg/telegram/messenger/R$string;->sorting_settings_enable_item_hint:I

    goto :goto_1

    .line 454
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->sorting_settings_drag_and_drop_hint:I

    .line 452
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 451
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 457
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_2

    .line 462
    :cond_4
    instance-of v2, p1, Lcom/iMe/fork/ui/view/SortingFilterCell;

    if-eqz v2, :cond_5

    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->SORTING_FILTER:I

    if-ne v1, v2, :cond_5

    .line 463
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    check-cast p1, Lcom/iMe/fork/ui/view/SortingFilterCell;

    .line 465
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

    .line 468
    invoke-virtual {p1, v2, v0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->setState(Lcom/iMe/fork/models/SortingTabState;Z)V

    .line 469
    invoke-virtual {v2}, Lcom/iMe/fork/models/SortingTabState;->getType()Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/enums/SortingFilter;->isFabEditable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->setFabsVisible(Z)V

    .line 470
    new-instance v0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, v2, p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;Lcom/iMe/fork/models/SortingTabState;I)V

    invoke-virtual {p1, v0}, Lcom/iMe/fork/ui/view/SortingFilterCell;->setOnFabsClick(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

    if-ne p2, p1, :cond_0

    new-instance v0, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;

    .line 386
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {v2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result v2

    .line 394
    new-instance v3, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$onCreateViewHolder$1;

    iget-object v4, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-direct {v3, v4}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$onCreateViewHolder$1;-><init>(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)V

    .line 385
    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;-><init>(Landroid/content/Context;ZLkotlin/jvm/functions/Function1;)V

    .line 394
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v1, v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setTopicsBar$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;)V

    goto :goto_0

    .line 396
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-ne p2, v0, :cond_1

    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 397
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setType(I)V

    goto :goto_0

    .line 400
    :cond_1
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-ne p2, v0, :cond_2

    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 401
    :cond_2
    new-instance v0, Lcom/iMe/fork/ui/view/SortingFilterCell;

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/view/SortingFilterCell;-><init>(Landroid/content/Context;)V

    .line 402
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 405
    :goto_0
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    if-ne p2, p1, :cond_3

    const/16 p1, 0x24

    .line 407
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, -0x2

    .line 405
    :goto_1
    invoke-direct {v1, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final swapElements(II)V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result v1

    .line 360
    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v2, p1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getSortingIndexByPosition(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)I

    move-result v2

    .line 361
    iget-object v3, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v3, p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getSortingIndexByPosition(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)I

    move-result v3

    .line 358
    invoke-virtual {v0, v1, v2, v3}, Lcom/iMe/fork/controller/FiltersController;->swapSortingFilters(ZII)V

    .line 363
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 364
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

    .line 341
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setTabsRowStart$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 342
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setTabsRowEnd$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 343
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setDragAndDropInfoRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 345
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 346
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setArchiveSwitchTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 347
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 348
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 349
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-virtual {v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getCurrentArchive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/FiltersController;->isSortingEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setTabsRowStart$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 351
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

    .line 352
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setTabsRowEnd$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    .line 353
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->this$0:Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    invoke-static {v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->access$setDragAndDropInfoRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V

    :cond_0
    return-void
.end method
