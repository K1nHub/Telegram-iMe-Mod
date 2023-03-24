.class public final Lorg/fork/ui/fragment/SortingFilterSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SortingFilterSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;,
        Lorg/fork/ui/fragment/SortingFilterSettingsActivity$TouchHelperCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSortingFilterSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SortingFilterSettingsActivity.kt\norg/fork/ui/fragment/SortingFilterSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ViewExt.kt\ncom/smedialink/utils/extentions/common/ViewExtKt\n*L\n1#1,320:1\n1#2:321\n191#3,4:322\n*S KotlinDebug\n*F\n+ 1 SortingFilterSettingsActivity.kt\norg/fork/ui/fragment/SortingFilterSettingsActivity\n*L\n65#1:322,4\n*E\n"
.end annotation


# instance fields
.field private archiveSwitchTopicsBarRow:I

.field private currentArchive:Z

.field private dragAndDropInfoRow:I

.field private enableRow:I

.field private enableSectionRow:I

.field private final listAdapter$delegate:Lkotlin/Lazy;

.field private final listView$delegate:Lkotlin/Lazy;

.field private final rootView$delegate:Lkotlin/Lazy;

.field private rowCount:I

.field private tabsRowEnd:I

.field private tabsRowStart:I

.field private topicsBar:Lorg/fork/ui/view/ArchiveSwitchTopicsBar;


# direct methods
.method public static synthetic $r8$lambda$ZjQdGf9DaFqgHqhf43vWta4NuWM(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->initListView$lambda$8$lambda$7(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$ndZgZRGAZW6LvYunHpFRwMzG7Ts(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getThemeDescriptions$lambda$3(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 34
    iput-boolean p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->currentArchive:Z

    .line 38
    new-instance p1, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$rootView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$rootView$2;-><init>(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->rootView$delegate:Lkotlin/Lazy;

    .line 39
    new-instance p1, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$listView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$listView$2;-><init>(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->listView$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$listAdapter$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$listAdapter$2;-><init>(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->listAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 33
    :cond_0
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getArchiveSwitchTopicsBarRow$p(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->archiveSwitchTopicsBarRow:I

    return p0
.end method

.method public static final synthetic access$getDragAndDropInfoRow$p(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->dragAndDropInfoRow:I

    return p0
.end method

.method public static final synthetic access$getEnableRow$p(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getEnableSectionRow$p(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->enableSectionRow:I

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSortingIndexByPosition(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;I)I
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getSortingIndexByPosition(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$initListView(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isClickableViewType(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setArchiveSwitchTopicsBarRow$p(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->archiveSwitchTopicsBarRow:I

    return-void
.end method

.method public static final synthetic access$setDragAndDropInfoRow$p(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->dragAndDropInfoRow:I

    return-void
.end method

.method public static final synthetic access$setEnableRow$p(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->enableRow:I

    return-void
.end method

.method public static final synthetic access$setEnableSectionRow$p(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->enableSectionRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setTabsRowEnd$p(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->tabsRowEnd:I

    return-void
.end method

.method public static final synthetic access$setTabsRowStart$p(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->tabsRowStart:I

    return-void
.end method

.method public static final synthetic access$setTopicsBar$p(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;Lorg/fork/ui/view/ArchiveSwitchTopicsBar;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->topicsBar:Lorg/fork/ui/view/ArchiveSwitchTopicsBar;

    return-void
.end method

.method private final getListAdapter()Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->listAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->listView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->rootView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getSortingIndexByPosition(I)I
    .locals 1

    .line 158
    iget v0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->tabsRowStart:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private static final getThemeDescriptions$lambda$3(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->topicsBar:Lorg/fork/ui/view/ArchiveSwitchTopicsBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "topicsBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lorg/fork/ui/view/ArchiveSwitchTopicsBar;->updateSelectedTopicAndColors()V

    .line 65
    invoke-direct {p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_3

    .line 192
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    instance-of v4, v3, Lorg/fork/ui/view/SortingFilterCell;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/fork/ui/view/SortingFilterCell;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/fork/ui/view/SortingFilterCell;->updateColors()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 110
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 112
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 113
    invoke-direct {p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 114
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$TouchHelperCallback;

    invoke-direct {v2, p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$TouchHelperCallback;-><init>(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 115
    new-instance v1, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda$8$lambda$7(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;Landroid/view/View;IFF)V
    .locals 1

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    instance-of p4, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 118
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckbox()V

    .line 119
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p2

    iget-boolean p3, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->currentArchive:Z

    invoke-virtual {p2, p3}, Lorg/fork/controller/FiltersController;->toggleSortingEnabled(Z)V

    .line 120
    invoke-direct {p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;

    move-result-object p2

    .line 121
    iget p3, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->rowCount:I

    .line 122
    invoke-virtual {p2}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->updateRows()V

    .line 123
    iget p4, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->rowCount:I

    sub-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 124
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    iget p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 127
    :cond_0
    iget p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 129
    :goto_0
    iget p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->enableSectionRow:I

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 131
    invoke-direct {p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->updateChatSwipeAction()V

    .line 132
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 134
    :cond_1
    instance-of p4, p1, Lorg/fork/ui/view/SortingFilterCell;

    if-eqz p4, :cond_3

    .line 135
    check-cast p1, Lorg/fork/ui/view/SortingFilterCell;

    invoke-virtual {p1, p3}, Lorg/fork/ui/view/SortingFilterCell;->checkFabTouch(F)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 138
    :cond_2
    invoke-virtual {p1}, Lorg/fork/ui/view/SortingFilterCell;->isChecked()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lorg/fork/ui/view/SortingFilterCell;->setChecked(Z)V

    .line 139
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p1

    iget-boolean p3, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->currentArchive:Z

    invoke-direct {p0, p2}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getSortingIndexByPosition(I)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lorg/fork/controller/FiltersController;->switchSortingFilterEnabled(ZI)V

    .line 140
    invoke-direct {p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->updateChatSwipeAction()V

    .line 141
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 106
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "windowBackgroundGray"

    .line 107
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 160
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->SORTING_FILTER:I

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

    .line 162
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TOPICS_BAR:I

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

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 93
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 95
    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v1, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$setupActionBar$1$1;-><init>(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final updateChatSwipeAction()V
    .locals 4

    .line 148
    iget-boolean v0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->currentArchive:Z

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    const-string v3, "messagesController.dialogFilters"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 152
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const/4 v2, 0x5

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 153
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 154
    :cond_3
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->updateChatListSwipeSetting(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->createView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 53
    invoke-direct {p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->setupActionBar()V

    .line 54
    invoke-direct {p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 55
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public final getCurrentArchive()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->currentArchive:Z

    return v0
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

    const/16 v1, 0x13

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 63
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 62
    new-instance v8, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v9, "windowBackgroundGray"

    move-object v2, v10

    .line 63
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 67
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

    .line 68
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

    .line 69
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v12, 0x0

    const-string v13, "actionBarDefaultTitle"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v3, v1, v5

    .line 70
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v13, "actionBarDefaultSelector"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v3, v1, v5

    .line 71
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v13, "actionBarDefault"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x5

    aput-object v3, v1, v5

    .line 72
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v13, "listSelectorSDK21"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x6

    aput-object v3, v1, v5

    .line 73
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v9, v2

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const-string v13, "divider"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v5, 0x7

    aput-object v3, v1, v5

    .line 74
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 75
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    const/16 v5, 0x9

    aput-object v3, v1, v5

    .line 76
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v13, 0x0

    const-string/jumbo v14, "windowBackgroundCheckText"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0xa

    aput-object v3, v1, v5

    .line 77
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const-string v5, "checkBox"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const-string v14, "switchTrackBlue"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xb

    aput-object v3, v1, v6

    .line 78
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v14, 0x0

    const-string v15, "switchTrackBlueChecked"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xc

    aput-object v3, v1, v6

    .line 79
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const-string v15, "switchTrackBlueThumb"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xd

    aput-object v3, v1, v6

    .line 80
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const-string v15, "switchTrackBlueThumbChecked"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xe

    aput-object v3, v1, v6

    .line 81
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const-string v15, "switchTrackBlueSelector"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xf

    aput-object v3, v1, v6

    .line 82
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const-string v15, "switchTrackBlueSelectorChecked"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x10

    aput-object v3, v1, v5

    .line 83
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string/jumbo v13, "windowBackgroundGrayShadow"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x11

    aput-object v3, v1, v5

    .line 84
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v4, Lorg/fork/ui/view/SortingFilterCell;

    aput-object v4, v9, v2

    const-string v2, "fabView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const-string v14, "chats_actionBackground"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v3, v1, v2

    .line 62
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/FiltersController;->saveConfig()V

    .line 59
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public final setCurrentArchive(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity;->currentArchive:Z

    return-void
.end method
