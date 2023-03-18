.class public final Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;
.super Lcom/smedialink/ui/base/mvp/MvpFragment;
.source "RecentChatsDialogTypeSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentChatsDialogTypeSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentChatsDialogTypeSettingsActivity.kt\norg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,340:1\n1#2:341\n*E\n"
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

.field private final listAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final rootView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I


# direct methods
.method public static synthetic $r8$lambda$Ik-IP9s5F3eMklkn9Vc8AcSu4GA(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->initListView$lambda$9$lambda$8(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Landroid/view/View;IFF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 32
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 33
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 34
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;-><init>()V

    .line 32
    new-instance v0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$rootView$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$rootView$2;-><init>(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->rootView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 33
    new-instance v0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$listView$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$listView$2;-><init>(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->listView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 34
    new-instance v0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$listAdapter$2;

    invoke-direct {v0, p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$listAdapter$2;-><init>(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->listAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    .line 35
    sget-object v0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$dialogTypes$2;->INSTANCE:Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$dialogTypes$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypes$delegate:Lkotlin/Lazy;

    .line 36
    sget-object v0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$drawStatusTypes$2;->INSTANCE:Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$drawStatusTypes$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypes$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDialogTypes(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)[Lorg/fork/enums/RecentChatsDialogType;
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getDialogTypes()[Lorg/fork/enums/RecentChatsDialogType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDialogTypesExpandableList$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableList:Z

    return p0
.end method

.method public static final synthetic access$getDialogTypesExpandableListRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableListRow:I

    return p0
.end method

.method public static final synthetic access$getDialogTypesStartRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesStartRow:I

    return p0
.end method

.method public static final synthetic access$getDialogsTypesSectionRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogsTypesSectionRow:I

    return p0
.end method

.method public static final synthetic access$getDrawStatusTypes(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)[Lorg/fork/enums/DrawStatusType;
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getDrawStatusTypes()[Lorg/fork/enums/DrawStatusType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDrawStatusTypesExpandableList$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableList:Z

    return p0
.end method

.method public static final synthetic access$getDrawStatusTypesExpandableListRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableListRow:I

    return p0
.end method

.method public static final synthetic access$getDrawStatusTypesExpandableListStartRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableListStartRow:I

    return p0
.end method

.method public static final synthetic access$getEnableArchiveRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableArchiveRow:I

    return p0
.end method

.method public static final synthetic access$getEnableRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getEnableSectionRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableSectionRow:I

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$initListView(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isClickableViewType(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setDialogTypesEndRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesEndRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypesExpandableList$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableList:Z

    return-void
.end method

.method public static final synthetic access$setDialogTypesExpandableListRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableListRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypesStartRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesStartRow:I

    return-void
.end method

.method public static final synthetic access$setDialogsTypesSectionRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogsTypesSectionRow:I

    return-void
.end method

.method public static final synthetic access$setDrawStatusTypesExpandableList$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableList:Z

    return-void
.end method

.method public static final synthetic access$setDrawStatusTypesExpandableListEndRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableListEndRow:I

    return-void
.end method

.method public static final synthetic access$setDrawStatusTypesExpandableListRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableListRow:I

    return-void
.end method

.method public static final synthetic access$setDrawStatusTypesExpandableListStartRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableListStartRow:I

    return-void
.end method

.method public static final synthetic access$setEnableArchiveRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableArchiveRow:I

    return-void
.end method

.method public static final synthetic access$setEnableRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableRow:I

    return-void
.end method

.method public static final synthetic access$setEnableSectionRow$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableSectionRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;I)V
    .locals 0

    .line 29
    iput p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->rowCount:I

    return-void
.end method

.method private final getDialogTypes()[Lorg/fork/enums/RecentChatsDialogType;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypes$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/RecentChatsDialogType;

    return-object v0
.end method

.method private final getDrawStatusTypes()[Lorg/fork/enums/DrawStatusType;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypes$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/DrawStatusType;

    return-object v0
.end method

.method private final getListAdapter()Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;
    .locals 3

    .line 34
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->listAdapter$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 33
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->listView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->rootView$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 122
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 124
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 125
    invoke-direct {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 126
    new-instance v1, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda$9$lambda$8(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;Landroid/view/View;IFF)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    instance-of p3, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz p3, :cond_1

    .line 129
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget v0, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogsTypesSectionRow:I

    if-ge p3, v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/RecentChatsController;->getSelectedRecentChatsDialogTypes()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getDialogTypes()[Lorg/fork/enums/RecentChatsDialogType;

    move-result-object p3

    iget p4, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesStartRow:I

    sub-int/2addr p2, p4

    aget-object p2, p3, p2

    invoke-static {p1, p2}, Lcom/smedialink/storage/data/utils/extentions/CollectionExtKt;->addOrRemove(Ljava/util/Set;Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/RecentChatsController;->getSelectedDrawStatusTypes()Ljava/util/Set;

    move-result-object p2

    invoke-static {}, Lorg/fork/enums/DrawStatusType;->values()[Lorg/fork/enums/DrawStatusType;

    move-result-object p3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p4, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableListStartRow:I

    sub-int/2addr p1, p4

    aget-object p1, p3, p1

    invoke-static {p2, p1}, Lcom/smedialink/storage/data/utils/extentions/CollectionExtKt;->addOrRemove(Ljava/util/Set;Ljava/lang/Object;)V

    .line 134
    :goto_0
    invoke-direct {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_3

    .line 136
    :cond_1
    instance-of p3, p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    if-eqz p3, :cond_3

    .line 138
    iget p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableListRow:I

    if-ne p2, p1, :cond_2

    iget-boolean p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableList:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->dialogTypesExpandableList:Z

    goto :goto_1

    .line 139
    :cond_2
    iget-boolean p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableList:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->drawStatusTypesExpandableList:Z

    .line 142
    :goto_1
    invoke-direct {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;

    move-result-object p0

    .line 143
    invoke-virtual {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->updateRows()V

    .line 144
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 147
    :cond_3
    instance-of p3, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p3, :cond_6

    .line 148
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckbox()V

    .line 150
    iget p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableRow:I

    if-ne p2, p1, :cond_5

    .line 151
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lorg/fork/controller/RecentChatsController;->setRecentChatsEnabled(Z)V

    .line 152
    invoke-direct {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListAdapter()Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;

    move-result-object p1

    .line 153
    iget p2, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->rowCount:I

    .line 154
    invoke-virtual {p1}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;->updateRows()V

    .line 155
    iget p3, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->rowCount:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 156
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/fork/controller/RecentChatsController;->isRecentChatsEnabled()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 157
    iget p3, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableSectionRow:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_2

    .line 159
    :cond_4
    iget p3, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableSectionRow:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 161
    :goto_2
    iget p2, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableSectionRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 163
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3

    .line 165
    :cond_5
    iget p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->enableArchiveRow:I

    if-ne p2, p1, :cond_6

    .line 166
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/fork/controller/RecentChatsController;->isSaveArchiveRecentChatsEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/fork/controller/RecentChatsController;->setSaveArchiveRecentChatsEnabled(Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 118
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "windowBackgroundGray"

    .line 119
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 174
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->VIEW_TYPE_EXPANDABLE_SWITCH:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->VIEW_TYPE_INNER_CHECK:I

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

    .line 176
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

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 105
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 107
    sget v1, Lorg/telegram/messenger/R$string;->settings_interface_recent_chats:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v1, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$setupActionBar$1$1;-><init>(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)V

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

    const/16 v1, 0x1b

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 70
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "windowBackgroundGray"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 71
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

    .line 72
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

    .line 73
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v12, 0x0

    const-string v13, "actionBarDefaultTitle"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 74
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v13, 0x0

    const-string v14, "actionBarDefaultSelector"

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v3, v1, v7

    .line 75
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    sget v10, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v14, 0x0

    const-string v15, "actionBarDefault"

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v8, 0x5

    aput-object v3, v1, v8

    .line 76
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v15, 0x0

    const-string v16, "listSelectorSDK21"

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v8, 0x6

    aput-object v3, v1, v8

    .line 77
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    new-array v12, v4, [Ljava/lang/Class;

    const-class v8, Landroid/view/View;

    aput-object v8, v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    const-string v16, "divider"

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v8, 0x7

    aput-object v3, v1, v8

    .line 78
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v10

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v12, v7, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v12, v2

    const-class v7, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v7, v12, v4

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v7, v12, v5

    const-class v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v5, v12, v6

    const/4 v13, 0x0

    const-string/jumbo v16, "windowBackgroundWhite"

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v3, v1, v5

    .line 79
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v8, v5, v6

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "windowBackgroundChecked"

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v3, v1, v5

    .line 80
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 81
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v9, v4, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v9, v2

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const-string/jumbo v14, "windowBackgroundCheckText"

    move-object v6, v3

    invoke-direct/range {v6 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0xb

    aput-object v3, v1, v6

    .line 82
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 83
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 84
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 85
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 86
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 87
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 88
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueSelectorChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x12

    aput-object v3, v1, v7

    .line 89
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v7, v11, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "windowBackgroundWhiteBlackText"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x13

    aput-object v3, v1, v7

    .line 90
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v7, v11, v2

    const-string/jumbo v7, "valueTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v16, "windowBackgroundWhiteGrayText2"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x14

    aput-object v3, v1, v7

    .line 91
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrack"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x15

    aput-object v3, v1, v7

    .line 92
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v7, 0x16

    aput-object v3, v1, v7

    .line 93
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v7, v11, v2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v12

    const-string v16, "switchTrackBlueSelectorChecked"

    move-object v8, v3

    invoke-direct/range {v8 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x17

    aput-object v3, v1, v6

    .line 94
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-string/jumbo v15, "windowBackgroundWhiteBlackText"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x18

    aput-object v3, v1, v6

    .line 95
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v10, v4, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v6, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v15, "windowBackgroundCheckText"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v6, 0x19

    aput-object v3, v1, v6

    .line 96
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v10, v4, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v4, v10, v2

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v15, "windowBackgroundWhiteBlackText"

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v3, v1, v2

    .line 69
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 61
    invoke-direct {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->setupActionBar()V

    .line 62
    invoke-direct {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 63
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/RecentChatsController;->saveConfig()V

    .line 57
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
