.class public final Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "SwipeToGoToNextUnreadDialogSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;
    }
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

    .line 274
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 275
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 276
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 277
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 278
    new-instance v1, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda$7$lambda$6(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;Landroid/view/View;IFF)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    instance-of p3, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p3, :cond_3

    .line 281
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 283
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->enableRow:I

    if-ne p2, p1, :cond_1

    .line 284
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p1

    .line 286
    invoke-virtual {p1}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 285
    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ToolsController;->setSwipeToGoToNextUnreadDialogEnabled(Z)V

    .line 288
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;

    move-result-object p1

    .line 289
    iget p2, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->rowCount:I

    .line 290
    invoke-virtual {p1}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$ListAdapter;->updateRows()V

    .line 291
    iget p3, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->rowCount:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 292
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 293
    iget p3, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->enableSectionRow:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 295
    :cond_0
    iget p3, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->enableSectionRow:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 297
    :goto_0
    iget p0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->enableSectionRow:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 301
    :cond_1
    iget p1, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->considerArchiveRow:I

    if-ne p2, p1, :cond_2

    .line 302
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p0

    .line 304
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 303
    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/ToolsController;->setSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(Z)V

    goto :goto_1

    .line 308
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ToolsController;->getSelectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;

    move-result-object p1

    .line 309
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getDialogTypes()[Lcom/iMe/fork/enums/DialogType;

    move-result-object p3

    iget p0, p0, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->dialogTypesStartRow:I

    sub-int/2addr p2, p0

    aget-object p0, p3, p2

    .line 308
    invoke-static {p1, p0}, Lcom/iMe/storage/data/utils/extentions/CollectionExtKt;->addOrRemove(Ljava/util/Set;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 270
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 271
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 317
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

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

    .line 320
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_INFO_PRIVACY_CELL:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->HEADER_CELL:I

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

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 257
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 258
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 259
    sget v1, Lorg/telegram/messenger/R$string;->settings_interface_swipe_to_next_unread_dialog:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    new-instance v1, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

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

    const/16 v1, 0x14

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 60
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 61
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 62
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 67
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    .line 60
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 69
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 70
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 71
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 76
    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    move/from16 v18, v19

    .line 69
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v12, 0x1

    aput-object v3, v1, v12

    .line 78
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 79
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 80
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 85
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    .line 78
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v13, 0x2

    aput-object v3, v1, v13

    .line 87
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 88
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 89
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 94
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v3

    .line 87
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x3

    aput-object v3, v1, v4

    .line 96
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 97
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 98
    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 103
    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 96
    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 105
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    .line 107
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v4, v3

    move/from16 v11, v19

    .line 105
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 114
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    .line 116
    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    .line 121
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v3

    .line 114
    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 123
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    new-array v4, v12, [Ljava/lang/Class;

    .line 126
    const-class v5, Landroid/view/View;

    aput-object v5, v4, v2

    .line 127
    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    .line 130
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v16, 0x0

    move-object v14, v3

    move-object/from16 v17, v4

    .line 123
    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 132
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    .line 134
    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v13, [Ljava/lang/Class;

    .line 135
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v12

    .line 139
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v18, 0x0

    move-object v14, v3

    move-object/from16 v17, v4

    .line 132
    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 141
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 142
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 143
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 144
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 148
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    const/16 v17, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 141
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 150
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 151
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 152
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 153
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 157
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 150
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 159
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 161
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 162
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-string v5, "textView"

    .line 163
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 167
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 159
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 169
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 171
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 172
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    .line 173
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 177
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 169
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 179
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 182
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    const-string v6, "checkBox"

    .line 183
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 187
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    const/4 v15, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 179
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 189
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 192
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 193
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 197
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 189
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 199
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 202
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 203
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 207
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 199
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 209
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 212
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 213
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 217
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 209
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    .line 219
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 220
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 222
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 223
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 227
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 219
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    .line 229
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 232
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 233
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 237
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 229
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x12

    aput-object v3, v1, v4

    .line 239
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/SwipeToGoToNextUnreadDialogSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 242
    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v4, v2

    .line 243
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 247
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 239
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

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
