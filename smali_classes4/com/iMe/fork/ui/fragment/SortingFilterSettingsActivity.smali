.class public final Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "SortingFilterSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;,
        Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$TouchHelperCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSortingFilterSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SortingFilterSettingsActivity.kt\ncom/iMe/fork/ui/fragment/SortingFilterSettingsActivity\n+ 2 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt\n*L\n1#1,534:1\n244#2,4:535\n*S KotlinDebug\n*F\n+ 1 SortingFilterSettingsActivity.kt\ncom/iMe/fork/ui/fragment/SortingFilterSettingsActivity\n*L\n72#1:535,4\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private archiveSwitchTopicsBarRow:I

.field private currentArchive:Z

.field private dragAndDropInfoRow:I

.field private enableRow:I

.field private enableSectionRow:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I

.field private tabsRowEnd:I

.field private tabsRowStart:I

.field private topicsBar:Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;


# direct methods
.method public static synthetic $r8$lambda$2VmY5lZbLX8UmMM43GQ_rknGCzk(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getThemeDescriptions$lambda$2(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pjs9xm0xNN6ReUQ_Lqp45GgCl7c(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->initListView$lambda$7$lambda$6(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;Landroid/view/View;IFF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 41
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 42
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 43
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->currentArchive:Z

    .line 41
    new-instance p1, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$rootView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 42
    new-instance p1, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$listView$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 43
    new-instance p1, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$listAdapter$2;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$listAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 36
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getArchiveSwitchTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->archiveSwitchTopicsBarRow:I

    return p0
.end method

.method public static final synthetic access$getDragAndDropInfoRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->dragAndDropInfoRow:I

    return p0
.end method

.method public static final synthetic access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->enableSectionRow:I

    return p0
.end method

.method public static final synthetic access$getListAdapter(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListView(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$getSortingIndexByPosition(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getSortingIndexByPosition(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isClickableViewType(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setArchiveSwitchTopicsBarRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->archiveSwitchTopicsBarRow:I

    return-void
.end method

.method public static final synthetic access$setDragAndDropInfoRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->dragAndDropInfoRow:I

    return-void
.end method

.method public static final synthetic access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->enableRow:I

    return-void
.end method

.method public static final synthetic access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->enableSectionRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->rowCount:I

    return-void
.end method

.method public static final synthetic access$setTabsRowEnd$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->tabsRowEnd:I

    return-void
.end method

.method public static final synthetic access$setTabsRowStart$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->tabsRowStart:I

    return-void
.end method

.method public static final synthetic access$setTopicsBar$p(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->topicsBar:Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;

    return-void
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final getSortingIndexByPosition(I)I
    .locals 1

    .line 322
    iget v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->tabsRowStart:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private static final getThemeDescriptions$lambda$2(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->topicsBar:Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/ArchiveSwitchTopicsBar;->updateSelectedTopicAndColors()V

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 245
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(i)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    instance-of v3, v2, Lcom/iMe/fork/ui/view/SortingFilterCell;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/iMe/fork/ui/view/SortingFilterCell;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/iMe/fork/ui/view/SortingFilterCell;->updateColors()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 269
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 270
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 271
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 272
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 273
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$TouchHelperCallback;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$TouchHelperCallback;-><init>(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 274
    new-instance v1, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda$7$lambda$6(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;Landroid/view/View;IFF)V
    .locals 1

    const-string p4, "this$0"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    instance-of p4, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 277
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 278
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p2

    iget-boolean p3, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->currentArchive:Z

    invoke-virtual {p2, p3}, Lcom/iMe/fork/controller/FiltersController;->toggleSortingEnabled(Z)V

    .line 279
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;

    move-result-object p2

    .line 280
    iget p3, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->rowCount:I

    .line 281
    invoke-virtual {p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->updateRows()V

    .line 282
    iget p4, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->rowCount:I

    sub-int/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 283
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 284
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 286
    :cond_0
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->enableSectionRow:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 288
    :goto_0
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->enableSectionRow:I

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 290
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->updateChatSwipeAction()V

    .line 291
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 294
    :cond_1
    instance-of p4, p1, Lcom/iMe/fork/ui/view/SortingFilterCell;

    if-eqz p4, :cond_3

    .line 295
    check-cast p1, Lcom/iMe/fork/ui/view/SortingFilterCell;

    invoke-virtual {p1, p3}, Lcom/iMe/fork/ui/view/SortingFilterCell;->checkFabTouch(F)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 298
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/SortingFilterCell;->isChecked()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lcom/iMe/fork/ui/view/SortingFilterCell;->setChecked(Z)V

    .line 299
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p1

    .line 300
    iget-boolean p3, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->currentArchive:Z

    .line 301
    invoke-direct {p0, p2}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getSortingIndexByPosition(I)I

    move-result p2

    .line 299
    invoke-virtual {p1, p3, p2}, Lcom/iMe/fork/controller/FiltersController;->switchSortingFilterEnabled(ZI)V

    .line 303
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->updateChatSwipeAction()V

    .line 304
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

    .line 265
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 266
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 325
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->SORTING_FILTER:I

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

    .line 328
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_BAR:I

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

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 252
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 253
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 254
    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    new-instance v1, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final updateChatSwipeAction()V
    .locals 4

    .line 311
    iget-boolean v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->currentArchive:Z

    if-eqz v0, :cond_0

    return-void

    .line 315
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden()Z

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

    .line 316
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iMe/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const/4 v2, 0x5

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 317
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 318
    :cond_3
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->updateChatListSwipeSetting(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final getCurrentArchive()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->currentArchive:Z

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 28
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

    .line 70
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 69
    new-instance v8, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;)V

    .line 73
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    .line 70
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 74
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 75
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 76
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 81
    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    move/from16 v18, v19

    .line 74
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v12, 0x1

    aput-object v3, v1, v12

    .line 83
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 84
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 85
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 90
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    .line 83
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 92
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 93
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 94
    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 99
    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 92
    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x3

    aput-object v3, v1, v4

    .line 101
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 102
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 103
    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 108
    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 101
    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 110
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    .line 112
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v4, v3

    move/from16 v11, v19

    .line 110
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 119
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 121
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    .line 126
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v3

    .line 119
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 128
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 131
    const-class v5, Landroid/view/View;

    aput-object v5, v4, v2

    .line 132
    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    .line 135
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v15, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 128
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 137
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 139
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 140
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 144
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    const/16 v17, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 137
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 146
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 148
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 149
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 153
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 146
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 155
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 158
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-string v5, "textView"

    .line 159
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 163
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 155
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 165
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 168
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-string v5, "checkBox"

    .line 169
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 173
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 165
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 175
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 178
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    .line 179
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 183
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 175
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 185
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 188
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    .line 189
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 193
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 185
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 195
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 198
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    .line 199
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 203
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 195
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 205
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 208
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    .line 209
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 213
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 205
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 215
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 218
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    .line 219
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 223
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 215
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    .line 225
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 227
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 228
    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v4, v2

    .line 232
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v17, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 225
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    .line 234
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 236
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 237
    const-class v5, Lcom/iMe/fork/ui/view/SortingFilterCell;

    aput-object v5, v4, v2

    const-string v2, "fabView"

    .line 238
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v17

    .line 242
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 234
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0x12

    aput-object v3, v1, v2

    .line 69
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 56
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->setupActionBar()V

    .line 57
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    .line 66
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method

.method public final setCurrentArchive(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;->currentArchive:Z

    return-void
.end method
