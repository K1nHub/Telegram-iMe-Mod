.class public final Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "AllChatsTabSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAllChatsTabSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AllChatsTabSettingsActivity.kt\ncom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n55#2,4:269\n1#3:273\n*S KotlinDebug\n*F\n+ 1 AllChatsTabSettingsActivity.kt\ncom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity\n*L\n64#1:269,4\n*E\n"
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
.field private enableRow:I

.field private enableSectionRow:I

.field private fabsRow:I

.field private fabsSectionRow:I

.field private iconInsteadTitleHeaderRow:I

.field private iconInsteadTitleRow:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I


# direct methods
.method public static synthetic $r8$lambda$4WaQT4y16SemGLsw2cfMfKsuuDQ(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getThemeDescriptions$lambda$2(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O4Ez70XnbeLxAfnMl7fdAn9pbXI(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;Ljava/util/Set;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->initListView$lambda$9$lambda$8$lambda$7(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oK0ZL8x_wypFCy_qzfvKKS1CXO4(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->initListView$lambda$9$lambda$8(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 34
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 35
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 36
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 34
    new-instance v0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$rootView$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 35
    new-instance v0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$listView$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 36
    new-instance v0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$listAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$listAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->enableSectionRow:I

    return p0
.end method

.method public static final synthetic access$getFabsRow$p(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsRow:I

    return p0
.end method

.method public static final synthetic access$getFabsSectionRow$p(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsSectionRow:I

    return p0
.end method

.method public static final synthetic access$getIconInsteadTitleHeaderRow$p(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getIconInsteadTitleRow$p(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleRow:I

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isClickableViewType(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;I)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;I)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$updateRows(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->updateRows()V

    return-void
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$2(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 56
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(index)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    instance-of v3, v2, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;->updateColors()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 5

    .line 113
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 115
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 116
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 117
    new-instance v1, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    return-object v0
.end method

.method private static final initListView$lambda$9$lambda$8(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;Landroid/view/View;I)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_2

    .line 120
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 121
    iget v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->enableRow:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/iMe/fork/controller/FiltersController;->setAllChatsTabEnabled(Z)V

    .line 123
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;

    move-result-object p2

    .line 124
    iget v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    .line 125
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->updateRows()V

    .line 126
    iget v2, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 127
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget p1, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->enableSectionRow:I

    add-int/2addr p1, v1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 130
    :cond_0
    iget p1, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->enableSectionRow:I

    add-int/2addr p1, v1

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 132
    :goto_0
    iget p1, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->enableSectionRow:I

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 134
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setShowDrawerHeaderArchiveEnabled(Z)V

    .line 135
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->notifySettingsChanged()V

    goto :goto_1

    .line 137
    :cond_1
    iget p1, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleRow:I

    if-ne p2, p1, :cond_3

    .line 138
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/FiltersController;->isIconInsteadAllChatsTabTitleEnabled()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/FiltersController;->setIconInsteadAllChatsTabTitleEnabled(Z)V

    .line 139
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->notifySettingsChanged()V

    goto :goto_1

    .line 142
    :cond_2
    instance-of p1, p1, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;

    if-eqz p1, :cond_3

    .line 143
    new-instance p1, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "parentActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->getSelectedAllChatsTabFabs()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/iMe/fork/ui/dialog/SelectFabsBottomSheet;-><init>(Landroid/content/Context;Ljava/util/Set;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_3
    :goto_1
    return-void
.end method

.method private static final initListView$lambda$9$lambda$8$lambda$7(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;Ljava/util/Set;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    const-string v1, "fabs"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/FiltersController;->setSelectedAllChatsTabFabs(Ljava/util/Set;)V

    .line 145
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$ListAdapter;

    move-result-object p1

    iget v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 146
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->notifySettingsChanged()V

    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 109
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 110
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 176
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->FLOATING_ACTION_BUTTON:I

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

    .line 178
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->SHADOW_SECTION:I

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

    .line 173
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

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 96
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 98
    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_all_chats_tab_settings_item_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    new-instance v1, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final updateRows()V
    .locals 2

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 155
    iput v1, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    iput v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->enableRow:I

    add-int/lit8 v0, v1, 0x1

    .line 156
    iput v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    iput v1, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->enableSectionRow:I

    .line 157
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    iput v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleHeaderRow:I

    add-int/lit8 v0, v1, 0x1

    .line 159
    iput v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    iput v1, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleRow:I

    add-int/lit8 v0, v0, 0x1

    .line 160
    iput v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    .line 161
    iput v1, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    iput v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsRow:I

    add-int/lit8 v0, v1, 0x1

    .line 162
    iput v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->rowCount:I

    iput v1, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsSectionRow:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 164
    iput v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleHeaderRow:I

    .line 165
    iput v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->iconInsteadTitleRow:I

    .line 167
    iput v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsRow:I

    .line 168
    iput v0, p0, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->fabsSectionRow:I

    :goto_0
    return-void
.end method


# virtual methods
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

    const/16 v1, 0x17

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 63
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 62
    new-instance v8, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;)V

    .line 65
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    .line 63
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 66
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    move/from16 v18, v19

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v12, 0x1

    aput-object v3, v1, v12

    .line 67
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v13, 0x2

    aput-object v3, v1, v13

    .line 68
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v14, 0x3

    aput-object v3, v1, v14

    .line 69
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 70
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v21

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 71
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v4, v3

    move/from16 v11, v19

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 72
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v16

    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v12

    const-class v5, Lcom/iMe/fork/ui/view/FloatingActionButtonsCell;

    aput-object v5, v4, v13

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 73
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v2

    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 74
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    const/16 v17, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 75
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 76
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 77
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 78
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    const/4 v15, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 79
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 80
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 81
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    .line 82
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    .line 83
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x12

    aput-object v3, v1, v4

    .line 84
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v4, v2

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v17, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v20, v23

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x13

    aput-object v3, v1, v4

    .line 85
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v4, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x14

    aput-object v3, v1, v4

    .line 86
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v4, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object v13, v3

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x15

    aput-object v3, v1, v4

    .line 87
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v17

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v4, v2

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0x16

    aput-object v3, v1, v2

    .line 62
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 49
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->setupActionBar()V

    .line 50
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/AllChatsTabSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    .line 59
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
