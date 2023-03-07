.class public final Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ExtendedAvatarPreviewerSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtendedAvatarPreviewerSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtendedAvatarPreviewerSettingsActivity.kt\norg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,255:1\n1#2:256\n1000#3,2:257\n*S KotlinDebug\n*F\n+ 1 ExtendedAvatarPreviewerSettingsActivity.kt\norg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity\n*L\n52#1:257,2\n*E\n"
.end annotation


# instance fields
.field private enableRow:I

.field private enableSectionRow:I

.field private final items$delegate:Lkotlin/Lazy;

.field private itemsEndRow:I

.field private itemsHeaderRow:I

.field private itemsStartRow:I

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final newItems$delegate:Lkotlin/Lazy;

.field private openByClickRow:I

.field private openByClickSectionRow:I

.field private final rootView$delegate:Lkotlin/Lazy;

.field private rowCount:I


# direct methods
.method public static synthetic $r8$lambda$B4LpkTi1sT8B37447H7qLFVt_MY(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->initListView$lambda-8$lambda-7(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;Landroid/view/View;IFF)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 30
    new-instance v0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$rootView$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$rootView$2;-><init>(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->rootView$delegate:Lkotlin/Lazy;

    .line 31
    new-instance v0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$listView$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$listView$2;-><init>(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->listView$delegate:Lkotlin/Lazy;

    .line 32
    new-instance v0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$listAdapter$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$listAdapter$2;-><init>(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->listAdapter$delegate:Lkotlin/Lazy;

    .line 33
    sget-object v0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$items$2;->INSTANCE:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$items$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->items$delegate:Lkotlin/Lazy;

    .line 34
    sget-object v0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$newItems$2;->INSTANCE:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$newItems$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->newItems$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getEnableRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getEnableSectionRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableSectionRow:I

    return p0
.end method

.method public static final synthetic access$getItems(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)[Lorg/fork/enums/ExtendedAvatarPreviewerItem;
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getItems()[Lorg/fork/enums/ExtendedAvatarPreviewerItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getItemsHeaderRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->itemsHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getItemsStartRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->itemsStartRow:I

    return p0
.end method

.method public static final synthetic access$getNewItems(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)Ljava/util/List;
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getNewItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOpenByClickRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->openByClickRow:I

    return p0
.end method

.method public static final synthetic access$getOpenByClickSectionRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->openByClickSectionRow:I

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$initListView(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isClickableViewType(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setEnableRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableRow:I

    return-void
.end method

.method public static final synthetic access$setEnableSectionRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableSectionRow:I

    return-void
.end method

.method public static final synthetic access$setItemsEndRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->itemsEndRow:I

    return-void
.end method

.method public static final synthetic access$setItemsHeaderRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->itemsHeaderRow:I

    return-void
.end method

.method public static final synthetic access$setItemsStartRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->itemsStartRow:I

    return-void
.end method

.method public static final synthetic access$setOpenByClickRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->openByClickRow:I

    return-void
.end method

.method public static final synthetic access$setOpenByClickSectionRow$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->openByClickSectionRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->rowCount:I

    return-void
.end method

.method private final getItems()[Lorg/fork/enums/ExtendedAvatarPreviewerItem;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->items$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/ExtendedAvatarPreviewerItem;

    return-object v0
.end method

.method private final getListAdapter()Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getNewItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fork/enums/ExtendedAvatarPreviewerItem;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->newItems$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->rootView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 108
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 110
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 111
    invoke-direct {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 112
    new-instance v1, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda-8$lambda-7(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;Landroid/view/View;IFF)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    instance-of p3, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    .line 115
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckbox()V

    .line 116
    iget p1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableRow:I

    if-ne p2, p1, :cond_1

    .line 117
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    xor-int/2addr p1, p4

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setExtendedAvatarPreviewerEnabled(Z)V

    .line 118
    invoke-direct {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;

    move-result-object p1

    .line 119
    iget p2, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->rowCount:I

    .line 120
    invoke-virtual {p1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->updateRows()V

    .line 121
    iget p3, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->rowCount:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 122
    sget-boolean p3, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    if-eqz p3, :cond_0

    .line 123
    iget p3, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableSectionRow:I

    add-int/2addr p3, p4

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 125
    :cond_0
    iget p3, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableSectionRow:I

    add-int/2addr p3, p4

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 127
    :goto_0
    iget p0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableSectionRow:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    .line 130
    :cond_1
    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerByTapEnabled:Z

    xor-int/2addr p0, p4

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setExtendedAvatarPreviewerByTapEnabled(Z)V

    goto :goto_2

    .line 133
    :cond_2
    instance-of p3, p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    if-eqz p3, :cond_5

    .line 134
    invoke-direct {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getItems()[Lorg/fork/enums/ExtendedAvatarPreviewerItem;

    move-result-object p3

    iget v0, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->itemsStartRow:I

    sub-int/2addr p2, v0

    aget-object p2, p3, p2

    .line 135
    invoke-direct {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getNewItems()Ljava/util/List;

    move-result-object p0

    .line 136
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 137
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, p4, :cond_3

    return-void

    .line 140
    :cond_3
    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    :cond_4
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :goto_1
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->isChecked()Z

    move-result p0

    xor-int/2addr p0, p4

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Cells/TextCheckBoxCell;->setChecked(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 104
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "windowBackgroundGray"

    .line 105
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 151
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final needDivider(I)Z
    .locals 1

    .line 153
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->HEADER:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final setupActionBar()V
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 91
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 93
    sget v1, Lorg/telegram/messenger/R$string;->settings_interface_chat_user_options_by_avatar_click_subtitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v1, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$setupActionBar$1$1;-><init>(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->createView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->setupActionBar()V

    .line 48
    invoke-direct {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 49
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x19

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 58
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundGray"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 59
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefault"

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 60
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "actionBarDefaultIcon"

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 61
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v12, 0x0

    const-string v13, "actionBarDefaultTitle"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 62
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v13, 0x0

    const-string v14, "actionBarDefaultSelector"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    .line 63
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v14, 0x0

    const-string v15, "actionBarDefault"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x5

    aput-object v3, v1, v7

    .line 64
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v15, "listSelectorSDK21"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x6

    aput-object v3, v1, v7

    .line 65
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Landroid/view/View;

    aput-object v7, v11, v2

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    const-string v15, "divider"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x7

    aput-object v3, v1, v7

    .line 66
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v11, v6, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v11, v2

    const-class v6, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v6, v11, v4

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v11, v5

    const/4 v12, 0x0

    const-string v15, "windowBackgroundWhite"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 67
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v13, "windowBackgroundChecked"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v3, v1, v5

    .line 68
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const-string v13, "windowBackgroundUnchecked"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0xa

    aput-object v3, v1, v5

    .line 69
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const-string v14, "windowBackgroundCheckText"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xb

    aput-object v3, v1, v6

    .line 70
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const-string v15, "windowBackgroundWhiteBlackText"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xc

    aput-object v3, v1, v6

    .line 71
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v10, v2

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const-string v15, "switchTrackBlue"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xd

    aput-object v3, v1, v7

    .line 72
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v15, 0x0

    const-string v16, "switchTrackBlueChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xe

    aput-object v3, v1, v7

    .line 73
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueThumb"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xf

    aput-object v3, v1, v7

    .line 74
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueThumbChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x10

    aput-object v3, v1, v7

    .line 75
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueSelector"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x11

    aput-object v3, v1, v7

    .line 76
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueSelectorChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x12

    aput-object v3, v1, v6

    .line 77
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-string v15, "windowBackgroundWhiteBlueHeader"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x13

    aput-object v3, v1, v6

    .line 78
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const-string v15, "windowBackgroundWhiteBlackText"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x14

    aput-object v3, v1, v5

    .line 79
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v5, v9, v2

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v13, "checkboxSquareUnchecked"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x15

    aput-object v3, v1, v5

    .line 80
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v5, v9, v2

    const-string v13, "checkboxSquareDisabled"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x16

    aput-object v3, v1, v5

    .line 81
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v5, v9, v2

    const-string v13, "checkboxSquareBackground"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x17

    aput-object v3, v1, v5

    .line 82
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v4, v9, v2

    const-string v13, "checkboxSquareCheck"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v3, v1, v2

    .line 57
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 52
    invoke-direct {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getNewItems()Ljava/util/List;

    move-result-object v0

    .line 1000
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$onFragmentDestroy$$inlined$sortBy$1;

    invoke-direct {v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$onFragmentDestroy$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 53
    :cond_0
    invoke-direct {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getNewItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedExtendedAvatarPreviewerItems(Ljava/util/List;)V

    .line 54
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method
