.class public final Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "SwipeToGoToNextUnreadDialogSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwipeToGoToNextUnreadDialogSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipeToGoToNextUnreadDialogSettingsActivity.kt\ncom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,240:1\n1#2:241\n*E\n"
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
.field private considerArchiveRow:I

.field private considerArchiveSectionRow:I

.field private final dialogTypes$delegate:Lkotlin/Lazy;

.field private dialogTypesEndRow:I

.field private dialogTypesHeaderRow:I

.field private dialogTypesStartRow:I

.field private enableRow:I

.field private enableSectionRow:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I


# direct methods
.method public static synthetic $r8$lambda$czTlsS4JCxlLM7ZoF4usuH01V0I(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->initListView$lambda$7$lambda$6(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;Landroid/view/View;IFF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 30
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 31
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 32
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$rootView$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 31
    new-instance v0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$listView$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 32
    new-instance v0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$listAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$listAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 33
    sget-object v0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$dialogTypes$2;->INSTANCE:Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$dialogTypes$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->dialogTypes$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getConsiderArchiveRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->considerArchiveRow:I

    return p0
.end method

.method public static final synthetic access$getConsiderArchiveSectionRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->considerArchiveSectionRow:I

    return p0
.end method

.method public static final synthetic access$getDialogTypes(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)[Lcom/iMe/fork/enums/DialogType;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getDialogTypes()[Lcom/iMe/fork/enums/DialogType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDialogTypesHeaderRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->dialogTypesHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->dialogTypesStartRow:I

    return p0
.end method

.method public static final synthetic access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->enableSectionRow:I

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isClickableViewType(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setConsiderArchiveRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->considerArchiveRow:I

    return-void
.end method

.method public static final synthetic access$setConsiderArchiveSectionRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->considerArchiveSectionRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypesEndRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->dialogTypesEndRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypesHeaderRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->dialogTypesHeaderRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->dialogTypesStartRow:I

    return-void
.end method

.method public static final synthetic access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->enableRow:I

    return-void
.end method

.method public static final synthetic access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->enableSectionRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->rowCount:I

    return-void
.end method

.method private final getDialogTypes()[Lcom/iMe/fork/enums/DialogType;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->dialogTypes$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/DialogType;

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 105
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 107
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 109
    new-instance v1, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda$7$lambda$6(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;Landroid/view/View;IFF)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    instance-of p3, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p3, :cond_3

    .line 112
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckbox()V

    .line 114
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->enableRow:I

    if-ne p2, p1, :cond_1

    .line 115
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ToolsController;->setSwipeToGoToNextUnreadDialogEnabled(Z)V

    .line 116
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;

    move-result-object p1

    .line 117
    iget p2, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->rowCount:I

    .line 118
    invoke-virtual {p1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->updateRows()V

    .line 119
    iget p3, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->rowCount:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 120
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 121
    iget p3, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->enableSectionRow:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 123
    :cond_0
    iget p3, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->enableSectionRow:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 125
    :goto_0
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->enableSectionRow:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 128
    :cond_1
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->considerArchiveRow:I

    if-ne p2, p1, :cond_2

    .line 129
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/ToolsController;->setSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(Z)V

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ToolsController;->getSelectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getDialogTypes()[Lcom/iMe/fork/enums/DialogType;

    move-result-object p3

    iget p0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->dialogTypesStartRow:I

    sub-int/2addr p2, p0

    aget-object p0, p3, p2

    invoke-static {p1, p0}, Lcom/iMe/storage/data/utils/extentions/CollectionExtKt;->addOrRemove(Ljava/util/Set;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 101
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "windowBackgroundGray"

    .line 102
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 138
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final needDivider(I)Z
    .locals 1

    .line 140
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER:I

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

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 88
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 90
    sget v1, Lorg/telegram/messenger/R$string;->settings_interface_swipe_to_next_unread_dialog:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    new-instance v1, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method


# virtual methods
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

    const/16 v1, 0x14

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 60
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

    const/4 v6, 0x4

    aput-object v3, v1, v6

    .line 65
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v14, "actionBarDefault"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x5

    aput-object v3, v1, v6

    .line 66
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v14, "listSelectorSDK21"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x6

    aput-object v3, v1, v6

    .line 67
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v10, v2

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const-string v14, "divider"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x7

    aput-object v3, v1, v6

    .line 68
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v10, v5, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v10, v2

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v10, v4

    const/4 v11, 0x0

    const-string v14, "windowBackgroundWhite"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 69
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const/4 v10, 0x0

    const-string v13, "windowBackgroundChecked"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v3, v1, v5

    .line 70
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 71
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 72
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 73
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 74
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 75
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 76
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 77
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 78
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 79
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-string v15, "windowBackgroundWhiteBlueHeader"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v3, v1, v2

    .line 59
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 46
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->setupActionBar()V

    .line 47
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    .line 56
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method