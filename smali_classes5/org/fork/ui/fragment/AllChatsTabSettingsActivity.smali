.class public final Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "AllChatsTabSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAllChatsTabSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AllChatsTabSettingsActivity.kt\norg/fork/ui/fragment/AllChatsTabSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,262:1\n1#2:263\n54#3,4:264\n*S KotlinDebug\n*F\n+ 1 AllChatsTabSettingsActivity.kt\norg/fork/ui/fragment/AllChatsTabSettingsActivity\n*L\n59#1:264,4\n*E\n"
.end annotation


# instance fields
.field private enableRow:I

.field private enableSectionRow:I

.field private fabsRow:I

.field private fabsSectionRow:I

.field private iconInsteadTitleHeaderRow:I

.field private iconInsteadTitleRow:I

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final rootView$delegate:Lkotlin/Lazy;

.field private rowCount:I


# direct methods
.method public static synthetic $r8$lambda$B_H8r3icdpo32xwl91kt0jhxvzM(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getThemeDescriptions$lambda-3(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$URuhSP3fwerpPAJ6AQQ3cgjjGec(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;Ljava/util/Set;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->initListView$lambda-10$lambda-9$lambda-8(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oPHNKQwDSiLvK36f_8x1YnIaNnw(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->initListView$lambda-10$lambda-9(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 33
    new-instance v0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$rootView$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$rootView$2;-><init>(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rootView$delegate:Lkotlin/Lazy;

    .line 34
    new-instance v0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$listView$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$listView$2;-><init>(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->listView$delegate:Lkotlin/Lazy;

    .line 35
    new-instance v0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$listAdapter$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$listAdapter$2;-><init>(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->listAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getEnableRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getEnableSectionRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->enableSectionRow:I

    return p0
.end method

.method public static final synthetic access$getFabsRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsRow:I

    return p0
.end method

.method public static final synthetic access$getFabsSectionRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsSectionRow:I

    return p0
.end method

.method public static final synthetic access$getIconInsteadTitleHeaderRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getIconInsteadTitleRow$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleRow:I

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$initListView(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isClickableViewType(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;I)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;I)Z
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$updateRows(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->updateRows()V

    return-void
.end method

.method private final getListAdapter()Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rootView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda-3(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)V
    .locals 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 55
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "getChildAt(index)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    instance-of v3, v1, Lorg/fork/ui/view/FabsCell;

    if-eqz v3, :cond_0

    check-cast v1, Lorg/fork/ui/view/FabsCell;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lorg/fork/ui/view/FabsCell;->updateColors()V

    :goto_2
    if-lt v2, v0, :cond_2

    goto :goto_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 5

    .line 108
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 110
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 111
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 112
    new-instance v1, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-object v0
.end method

.method private static final initListView$lambda-10$lambda-9(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;Landroid/view/View;I)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_2

    .line 115
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckbox()V

    .line 116
    iget v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->enableRow:I

    if-ne p2, v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/fork/controller/FiltersController;->setAllChatsTabEnabled(Z)V

    .line 118
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;

    move-result-object p2

    .line 119
    iget v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    .line 120
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->updateRows()V

    .line 121
    iget v1, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 122
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget p1, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 125
    :cond_0
    iget p1, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 127
    :goto_0
    iget p1, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->enableSectionRow:I

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 129
    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator;->showArchiveAccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 130
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->notifySettingsChanged()V

    goto :goto_1

    .line 131
    :cond_1
    iget p1, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleRow:I

    if-ne p2, p1, :cond_3

    .line 132
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/fork/controller/FiltersController;->setIconInsteadAllChatsTabTitleEnabled(Z)V

    .line 133
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->notifySettingsChanged()V

    goto :goto_1

    .line 136
    :cond_2
    instance-of p1, p1, Lorg/fork/ui/view/FabsCell;

    if-eqz p1, :cond_3

    .line 137
    new-instance p1, Lorg/fork/ui/dialog/SelectFabsBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "parentActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/FiltersController;->getSelectedAllChatsTabFabs()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    invoke-direct {p1, p2, v0, v1}, Lorg/fork/ui/dialog/SelectFabsBottomSheet;-><init>(Landroid/content/Context;Ljava/util/Set;Lorg/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_3
    :goto_1
    return-void
.end method

.method private static final initListView$lambda-10$lambda-9$lambda-8(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;Ljava/util/Set;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    const-string v1, "fabs"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/fork/controller/FiltersController;->setSelectedAllChatsTabFabs(Ljava/util/Set;)V

    .line 139
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;

    move-result-object p1

    iget v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 140
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->notifySettingsChanged()V

    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 104
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "windowBackgroundGray"

    .line 105
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 170
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->FABS:I

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

    .line 172
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final notifySettingsChanged()V
    .locals 3

    .line 167
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
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
    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_all_chats_tab_settings_item_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v1, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$setupActionBar$1$1;-><init>(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final updateRows()V
    .locals 2

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 149
    iput v1, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->enableRow:I

    add-int/lit8 v0, v1, 0x1

    .line 150
    iput v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->enableSectionRow:I

    .line 151
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleHeaderRow:I

    add-int/lit8 v0, v1, 0x1

    .line 153
    iput v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleRow:I

    add-int/lit8 v0, v0, 0x1

    .line 154
    iput v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    .line 155
    iput v1, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsRow:I

    add-int/lit8 v0, v1, 0x1

    .line 156
    iput v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsSectionRow:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 158
    iput v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleHeaderRow:I

    .line 159
    iput v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleRow:I

    .line 161
    iput v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsRow:I

    .line 162
    iput v0, p0, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsSectionRow:I

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->createView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 48
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->setupActionBar()V

    .line 49
    invoke-direct {p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 50
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

    const/16 v1, 0x17

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 58
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 57
    new-instance v8, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v9, "windowBackgroundGray"

    move-object v2, v10

    .line 58
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 61
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

    .line 62
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "actionBarDefaultIcon"

    move-object v5, v3

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 63
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v12, 0x0

    const-string v13, "actionBarDefaultTitle"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 64
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v13, 0x0

    const-string v14, "actionBarDefaultSelector"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    .line 65
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v14, 0x0

    const-string v15, "listSelectorSDK21"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x5

    aput-object v3, v1, v7

    .line 66
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v15, "actionBarDefault"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x6

    aput-object v3, v1, v7

    .line 67
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v11, v6, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v11, v2

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v11, v4

    const-class v6, Lorg/fork/ui/view/FabsCell;

    aput-object v6, v11, v5

    const-string/jumbo v15, "windowBackgroundWhite"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x7

    aput-object v3, v1, v5

    .line 68
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v9, v2

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string v13, "divider"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 69
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const/4 v10, 0x0

    const-string/jumbo v13, "windowBackgroundChecked"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v3, v1, v5

    .line 70
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const-string/jumbo v13, "windowBackgroundUnchecked"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0xa

    aput-object v3, v1, v5

    .line 71
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const-string/jumbo v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const-string/jumbo v14, "windowBackgroundCheckText"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xb

    aput-object v3, v1, v6

    .line 72
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const-string/jumbo v15, "windowBackgroundWhiteBlackText"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xc

    aput-object v3, v1, v6

    .line 73
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v10, v2

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const-string/jumbo v15, "switchTrackBlue"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xd

    aput-object v3, v1, v7

    .line 74
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v15, 0x0

    const-string/jumbo v16, "switchTrackBlueChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xe

    aput-object v3, v1, v7

    .line 75
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "switchTrackBlueThumb"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0xf

    aput-object v3, v1, v7

    .line 76
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "switchTrackBlueThumbChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x10

    aput-object v3, v1, v7

    .line 77
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "switchTrackBlueSelector"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x11

    aput-object v3, v1, v7

    .line 78
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "switchTrackBlueSelectorChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x12

    aput-object v3, v1, v6

    .line 79
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v14, "windowBackgroundGrayShadow"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x13

    aput-object v3, v1, v6

    .line 80
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v14, 0x0

    const-string/jumbo v15, "windowBackgroundWhiteGrayText4"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x14

    aput-object v3, v1, v6

    .line 81
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v15, "windowBackgroundWhiteBlueHeader"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x15

    aput-object v3, v1, v5

    .line 82
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v4, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v13, "windowBackgroundGrayShadow"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v3, v1, v2

    .line 57
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/FiltersController;->saveConfig()V

    .line 54
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method
