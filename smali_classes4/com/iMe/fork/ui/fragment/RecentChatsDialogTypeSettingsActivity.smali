.class public final Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "RecentChatsDialogTypeSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;
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
.field private final dialogTypes$delegate:Lkotlin/Lazy;

.field private dialogTypesEndRow:I

.field private dialogTypesExpandableList:Z

.field private dialogTypesExpandableListRow:I

.field private dialogTypesStartRow:I

.field private dialogsTypesSectionRow:I

.field private final drawStatusTypes$delegate:Lkotlin/Lazy;

.field private drawStatusTypesExpandableList:Z

.field private drawStatusTypesExpandableListEndRow:I

.field private drawStatusTypesExpandableListRow:I

.field private drawStatusTypesExpandableListStartRow:I

.field private enableArchiveRow:I

.field private enableRow:I

.field private enableSectionRow:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I


# direct methods
.method public static synthetic $r8$lambda$k5ZwZGw5mqFPa8RVrs61OPtCI1o(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->initListView$lambda$8$lambda$7(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Landroid/view/View;IFF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 36
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 37
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 38
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$rootView$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 37
    new-instance v0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$listView$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 38
    new-instance v0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$listAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$listAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 39
    sget-object v0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$dialogTypes$2;->INSTANCE:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$dialogTypes$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypes$delegate:Lkotlin/Lazy;

    .line 40
    sget-object v0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$drawStatusTypes$2;->INSTANCE:Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$drawStatusTypes$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypes$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDialogTypes(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)[Lcom/iMe/fork/enums/RecentChatsDialogType;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getDialogTypes()[Lcom/iMe/fork/enums/RecentChatsDialogType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDialogTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableList:Z

    return p0
.end method

.method public static final synthetic access$getDialogTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableListRow:I

    return p0
.end method

.method public static final synthetic access$getDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesStartRow:I

    return p0
.end method

.method public static final synthetic access$getDialogsTypesSectionRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogsTypesSectionRow:I

    return p0
.end method

.method public static final synthetic access$getDrawStatusTypes(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)[Lcom/iMe/fork/enums/DrawStatusType;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getDrawStatusTypes()[Lcom/iMe/fork/enums/DrawStatusType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDrawStatusTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableList:Z

    return p0
.end method

.method public static final synthetic access$getDrawStatusTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableListRow:I

    return p0
.end method

.method public static final synthetic access$getDrawStatusTypesExpandableListStartRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableListStartRow:I

    return p0
.end method

.method public static final synthetic access$getEnableArchiveRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableArchiveRow:I

    return p0
.end method

.method public static final synthetic access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableSectionRow:I

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isClickableViewType(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setDialogTypesEndRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesEndRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableList:Z

    return-void
.end method

.method public static final synthetic access$setDialogTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableListRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesStartRow:I

    return-void
.end method

.method public static final synthetic access$setDialogsTypesSectionRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogsTypesSectionRow:I

    return-void
.end method

.method public static final synthetic access$setDrawStatusTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableList:Z

    return-void
.end method

.method public static final synthetic access$setDrawStatusTypesExpandableListEndRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableListEndRow:I

    return-void
.end method

.method public static final synthetic access$setDrawStatusTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableListRow:I

    return-void
.end method

.method public static final synthetic access$setDrawStatusTypesExpandableListStartRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableListStartRow:I

    return-void
.end method

.method public static final synthetic access$setEnableArchiveRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableArchiveRow:I

    return-void
.end method

.method public static final synthetic access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableRow:I

    return-void
.end method

.method public static final synthetic access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableSectionRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->rowCount:I

    return-void
.end method

.method private final getDialogTypes()[Lcom/iMe/fork/enums/RecentChatsDialogType;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypes$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/RecentChatsDialogType;

    return-object v0
.end method

.method private final getDrawStatusTypes()[Lcom/iMe/fork/enums/DrawStatusType;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypes$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/DrawStatusType;

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 361
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 362
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 363
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 364
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 365
    new-instance v1, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda$8$lambda$7(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Landroid/view/View;IFF)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    instance-of p3, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz p3, :cond_1

    .line 368
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget v0, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogsTypesSectionRow:I

    if-ge p3, v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/RecentChatsController;->getSelectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getDialogTypes()[Lcom/iMe/fork/enums/RecentChatsDialogType;

    move-result-object p3

    iget p4, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesStartRow:I

    sub-int/2addr p2, p4

    aget-object p2, p3, p2

    invoke-static {p1, p2}, Lcom/iMe/storage/data/utils/extentions/CollectionExtKt;->addOrRemove(Ljava/util/Set;Ljava/lang/Object;)V

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/RecentChatsController;->getSelectedDrawStatusTypes()Ljava/util/Set;

    move-result-object p2

    invoke-static {}, Lcom/iMe/fork/enums/DrawStatusType;->values()[Lcom/iMe/fork/enums/DrawStatusType;

    move-result-object p3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p4, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableListStartRow:I

    sub-int/2addr p1, p4

    aget-object p1, p3, p1

    invoke-static {p2, p1}, Lcom/iMe/storage/data/utils/extentions/CollectionExtKt;->addOrRemove(Ljava/util/Set;Ljava/lang/Object;)V

    .line 373
    :goto_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 376
    :cond_1
    instance-of p3, p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz p3, :cond_3

    .line 378
    iget p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableListRow:I

    if-ne p2, p1, :cond_2

    .line 379
    iget-boolean p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableList:Z

    xor-int/lit8 p1, p1, 0x1

    .line 378
    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableList:Z

    goto :goto_1

    .line 381
    :cond_2
    iget-boolean p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableList:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableList:Z

    .line 384
    :goto_1
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;

    move-result-object p0

    .line 385
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->updateRows()V

    .line 386
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 390
    :cond_3
    instance-of p3, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p3, :cond_6

    .line 391
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 393
    iget p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableRow:I

    if-ne p2, p1, :cond_5

    .line 394
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p1

    .line 395
    invoke-virtual {p1}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/RecentChatsController;->setRecentChatsEnabled(Z)V

    .line 397
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;

    move-result-object p1

    .line 398
    iget p2, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->rowCount:I

    .line 399
    invoke-virtual {p1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->updateRows()V

    .line 400
    iget p3, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->rowCount:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 401
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/iMe/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 402
    iget p3, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableSectionRow:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_2

    .line 404
    :cond_4
    iget p3, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableSectionRow:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 406
    :goto_2
    iget p2, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableSectionRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 408
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3

    .line 411
    :cond_5
    iget p1, p0, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableArchiveRow:I

    if-ne p2, p1, :cond_6

    .line 412
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object p0

    .line 413
    invoke-virtual {p0}, Lcom/iMe/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/RecentChatsController;->setSaveArchiveRecentChatsEnabled(Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 357
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 358
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 423
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL_2:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->CHECK_BOX_CELL:I

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

    .line 426
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

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 344
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 345
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 346
    sget v1, Lorg/telegram/messenger/R$string;->settings_interface_recent_chats:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    new-instance v1, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x1b

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 72
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 73
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 74
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 79
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    .line 72
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 81
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 82
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 83
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 88
    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    move/from16 v18, v19

    .line 81
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v12, 0x1

    aput-object v3, v1, v12

    .line 90
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 91
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 92
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 97
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    .line 90
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v13, 0x2

    aput-object v3, v1, v13

    .line 99
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 100
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 101
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 106
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v3

    .line 99
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v14, 0x3

    aput-object v3, v1, v14

    .line 108
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 109
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 110
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 115
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v3

    .line 108
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v15, 0x4

    aput-object v3, v1, v15

    .line 117
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    .line 119
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v4, v3

    move/from16 v11, v19

    .line 117
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 126
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 127
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v17

    .line 128
    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    .line 133
    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v3

    .line 126
    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 135
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v17

    new-array v4, v12, [Ljava/lang/Class;

    .line 138
    const-class v5, Landroid/view/View;

    aput-object v5, v4, v2

    .line 139
    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    .line 142
    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v18, 0x0

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    .line 135
    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 144
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v17

    .line 146
    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v15, [Ljava/lang/Class;

    .line 148
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v12

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v5, v4, v13

    const-class v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v5, v4, v14

    .line 156
    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v20, 0x0

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    .line 144
    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 158
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 160
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 161
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 165
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 158
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 167
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 169
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 170
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 174
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 167
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 176
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 178
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 179
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-string v5, "textView"

    .line 180
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 184
    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v26

    .line 176
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 186
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 188
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 189
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    .line 190
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 194
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v6

    .line 186
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 196
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 199
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    const-string v7, "checkBox"

    .line 200
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 204
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    const/4 v15, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 196
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 206
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 209
    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    .line 210
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 214
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 206
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 216
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 217
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 219
    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    .line 220
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 224
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 216
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 226
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 229
    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    .line 230
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 234
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 226
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    .line 236
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 239
    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    .line 240
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 244
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 236
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    .line 246
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 249
    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    .line 250
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 254
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v8

    .line 246
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x12

    aput-object v3, v1, v4

    .line 256
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v28

    new-array v4, v12, [Ljava/lang/Class;

    .line 259
    const-class v9, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v9, v4, v2

    .line 260
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v31

    const/16 v29, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v3

    move-object/from16 v30, v4

    move/from16 v35, v6

    .line 256
    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x13

    aput-object v3, v1, v4

    .line 266
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 269
    const-class v9, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v9, v4, v2

    const-string v9, "valueTextView"

    .line 270
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v17

    .line 274
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 266
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x14

    aput-object v3, v1, v4

    .line 276
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 279
    const-class v9, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v9, v4, v2

    .line 280
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 284
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 276
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x15

    aput-object v3, v1, v4

    .line 286
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 289
    const-class v9, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v9, v4, v2

    .line 290
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 294
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 286
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x16

    aput-object v3, v1, v4

    .line 296
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v28

    new-array v4, v12, [Ljava/lang/Class;

    .line 299
    const-class v9, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v9, v4, v2

    .line 300
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v31

    move-object/from16 v27, v3

    move-object/from16 v30, v4

    move/from16 v35, v8

    .line 296
    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x17

    aput-object v3, v1, v4

    .line 306
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v28

    new-array v4, v12, [Ljava/lang/Class;

    .line 309
    const-class v7, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v7, v4, v2

    .line 310
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v31

    move-object/from16 v27, v3

    move-object/from16 v30, v4

    move/from16 v35, v6

    .line 306
    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x18

    aput-object v3, v1, v4

    .line 316
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 317
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    .line 318
    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 319
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v7, v4, v2

    .line 320
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    .line 316
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x19

    aput-object v3, v1, v4

    .line 326
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v28

    .line 328
    sget v29, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 329
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v7, v4, v2

    .line 330
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v31

    move-object/from16 v27, v3

    move-object/from16 v30, v4

    .line 326
    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0x1a

    aput-object v3, v1, v2

    .line 71
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 63
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->setupActionBar()V

    .line 64
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/RecentChatsController;->saveConfig()V

    .line 59
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
