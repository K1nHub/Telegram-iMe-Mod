.class public final Lcom/iMe/fork/ui/fragment/ChatProfileActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "ChatProfileActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;
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
.field private chatProfileTelegramIdRow:I

.field private final dialogTypes$delegate:Lkotlin/Lazy;

.field private dialogTypesEndRow:I

.field private dialogTypesExpandableList:Z

.field private dialogTypesExpandableListRow:I

.field private dialogTypesStartRow:I

.field private dialogsTypesSectionRow:I

.field private enableRow:I

.field private enableSectionRow:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I


# direct methods
.method public static synthetic $r8$lambda$O5XOnlQjWyBPLfeFW4RwN6_j8M8(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->initListView$lambda$8$lambda$7(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$O8goE9fsVo7eeUXvY_P1NxfX-0I(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->initListView$lambda$8$lambda$7$lambda$6(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 39
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 40
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 41
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 39
    new-instance v0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$rootView$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 40
    new-instance v0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$listView$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 41
    new-instance v0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$listAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$listAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 42
    sget-object v0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$dialogTypes$2;->INSTANCE:Lcom/iMe/fork/ui/fragment/ChatProfileActivity$dialogTypes$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogTypes$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->chatProfileTelegramIdRow:I

    return p0
.end method

.method public static final synthetic access$getDialogTypes(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)[Lcom/iMe/fork/enums/ChatProfileDialogType;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getDialogTypes()[Lcom/iMe/fork/enums/ChatProfileDialogType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDialogTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogTypesExpandableList:Z

    return p0
.end method

.method public static final synthetic access$getDialogTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogTypesExpandableListRow:I

    return p0
.end method

.method public static final synthetic access$getDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogTypesStartRow:I

    return p0
.end method

.method public static final synthetic access$getDialogsTypesSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogsTypesSectionRow:I

    return p0
.end method

.method public static final synthetic access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->enableSectionRow:I

    return p0
.end method

.method public static final synthetic access$getResourceProvider$p$s-617809600(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isClickableViewType(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setChatProfileTelegramIdRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->chatProfileTelegramIdRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypesEndRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogTypesEndRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypesExpandableList$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogTypesExpandableList:Z

    return-void
.end method

.method public static final synthetic access$setDialogTypesExpandableListRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogTypesExpandableListRow:I

    return-void
.end method

.method public static final synthetic access$setDialogTypesStartRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogTypesStartRow:I

    return-void
.end method

.method public static final synthetic access$setDialogsTypesSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogsTypesSectionRow:I

    return-void
.end method

.method public static final synthetic access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->enableRow:I

    return-void
.end method

.method public static final synthetic access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->enableSectionRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->rowCount:I

    return-void
.end method

.method private final getDialogTypes()[Lcom/iMe/fork/enums/ChatProfileDialogType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogTypes$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/ChatProfileDialogType;

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 359
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 360
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 361
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 362
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 363
    new-instance v1, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda$8$lambda$7(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;Landroid/view/View;IFF)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    instance-of p3, p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    if-eqz p3, :cond_1

    .line 366
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p3, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogsTypesSectionRow:I

    if-le p1, p3, :cond_0

    .line 367
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ChatProfileController;->getSelectedChatProfileDialogTypes()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getDialogTypes()[Lcom/iMe/fork/enums/ChatProfileDialogType;

    move-result-object p3

    iget p4, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogTypesStartRow:I

    sub-int/2addr p2, p4

    aget-object p2, p3, p2

    invoke-static {p1, p2}, Lcom/iMe/storage/data/utils/extentions/CollectionExtKt;->addOrRemove(Ljava/util/Set;Ljava/lang/Object;)V

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 372
    :cond_1
    instance-of p3, p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    .line 373
    iget-boolean p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogTypesExpandableList:Z

    xor-int/2addr p1, p4

    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->dialogTypesExpandableList:Z

    .line 374
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;

    move-result-object p0

    .line 375
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->updateRows()V

    .line 376
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 380
    :cond_2
    instance-of p3, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 381
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 383
    iget p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->enableRow:I

    if-ne p2, p1, :cond_5

    .line 384
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p1

    .line 385
    invoke-virtual {p1}, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled()Z

    move-result p2

    xor-int/2addr p2, p4

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/ChatProfileController;->setChatProfileEnabled(Z)V

    .line 387
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;

    move-result-object p1

    .line 388
    iget p2, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->rowCount:I

    .line 389
    invoke-virtual {p1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;->updateRows()V

    .line 390
    iget p3, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->rowCount:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 391
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 392
    iget p3, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->enableSectionRow:I

    add-int/2addr p3, p4

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 394
    :cond_3
    iget p3, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->enableSectionRow:I

    add-int/2addr p3, p4

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 396
    :goto_0
    iget p2, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->enableSectionRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 398
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    .line 399
    sget p1, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    new-array p2, p4, [Ljava/lang/Object;

    .line 400
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p3, p2, v0

    .line 398
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 407
    :cond_4
    instance-of p1, p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    if-eqz p1, :cond_5

    .line 408
    iget p1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->chatProfileTelegramIdRow:I

    if-ne p2, p1, :cond_5

    new-instance p1, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)V

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p4, p2}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showChatProfileTelegramIdDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;ZLcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private static final initListView$lambda$8$lambda$7$lambda$6(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/ChatProfileActivity$ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->chatProfileTelegramIdRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 410
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    .line 411
    sget v0, Lorg/telegram/messenger/NotificationCenter;->newSuggestionsAvailable:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 412
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 410
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private final initRootView()Landroid/widget/FrameLayout;
    .locals 2

    .line 355
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 356
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 421
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

    .line 424
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

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 342
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 343
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 344
    sget v1, Lorg/telegram/messenger/R$string;->settings_tools_chat_profile_id_telegram:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    new-instance v1, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/ChatProfileActivity;)V

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

    .line 70
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 71
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 72
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 77
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    .line 70
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 79
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 80
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 81
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 86
    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    move/from16 v18, v19

    .line 79
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v12, 0x1

    aput-object v3, v1, v12

    .line 88
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 89
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 90
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 95
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    .line 88
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v13, 0x2

    aput-object v3, v1, v13

    .line 97
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 98
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 99
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 104
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v3

    .line 97
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v14, 0x3

    aput-object v3, v1, v14

    .line 106
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 107
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 108
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 113
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v3

    .line 106
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v15, 0x4

    aput-object v3, v1, v15

    .line 115
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    .line 117
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v4, v3

    move/from16 v11, v19

    .line 115
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 124
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 125
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v17

    .line 126
    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    .line 131
    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v3

    .line 124
    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 133
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v17

    new-array v4, v12, [Ljava/lang/Class;

    .line 136
    const-class v5, Landroid/view/View;

    aput-object v5, v4, v2

    .line 137
    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    .line 140
    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v18, 0x0

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    .line 133
    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 142
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 143
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v17

    .line 144
    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v15, [Ljava/lang/Class;

    .line 146
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v12

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v5, v4, v13

    const-class v5, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v5, v4, v14

    .line 154
    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v20, 0x0

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    .line 142
    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 156
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 158
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 159
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 163
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 156
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 165
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 167
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 168
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 172
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 165
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 174
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 176
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 177
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-string v5, "textView"

    .line 178
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 182
    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v26

    .line 174
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 184
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 186
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 187
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    .line 188
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 192
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v6

    .line 184
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 194
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 197
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    const-string v7, "checkBox"

    .line 198
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 202
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    const/4 v15, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 194
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 204
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 207
    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    .line 208
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 212
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 204
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 214
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 215
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 217
    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    .line 218
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 222
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 214
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 224
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 225
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 227
    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    .line 228
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 232
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 224
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    .line 234
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 237
    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    .line 238
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 242
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 234
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    .line 244
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 247
    const-class v8, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v8, v4, v2

    .line 248
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 252
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v8

    .line 244
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x12

    aput-object v3, v1, v4

    .line 254
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v28

    new-array v4, v12, [Ljava/lang/Class;

    .line 257
    const-class v9, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v9, v4, v2

    .line 258
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v31

    const/16 v29, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v3

    move-object/from16 v30, v4

    move/from16 v35, v6

    .line 254
    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x13

    aput-object v3, v1, v4

    .line 264
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 267
    const-class v9, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v9, v4, v2

    const-string v9, "valueTextView"

    .line 268
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v17

    .line 272
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 264
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x14

    aput-object v3, v1, v4

    .line 274
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 277
    const-class v9, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v9, v4, v2

    .line 278
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 282
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 274
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x15

    aput-object v3, v1, v4

    .line 284
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 287
    const-class v9, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v9, v4, v2

    .line 288
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    .line 292
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 284
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x16

    aput-object v3, v1, v4

    .line 294
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v28

    new-array v4, v12, [Ljava/lang/Class;

    .line 297
    const-class v9, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v9, v4, v2

    .line 298
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v31

    move-object/from16 v27, v3

    move-object/from16 v30, v4

    move/from16 v35, v8

    .line 294
    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x17

    aput-object v3, v1, v4

    .line 304
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 305
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v28

    new-array v4, v12, [Ljava/lang/Class;

    .line 307
    const-class v7, Lorg/telegram/ui/Cells/CheckBoxCell;

    aput-object v7, v4, v2

    .line 308
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v31

    move-object/from16 v27, v3

    move-object/from16 v30, v4

    move/from16 v35, v6

    .line 304
    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x18

    aput-object v3, v1, v4

    .line 314
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    .line 316
    sget v20, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 317
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v7, v4, v2

    .line 318
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    .line 314
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x19

    aput-object v3, v1, v4

    .line 324
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v28

    .line 326
    sget v29, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 327
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v7, v4, v2

    .line 328
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v31

    move-object/from16 v27, v3

    move-object/from16 v30, v4

    .line 324
    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0x1a

    aput-object v3, v1, v2

    .line 69
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 61
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->setupActionBar()V

    .line 62
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ChatProfileActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getChatProfileController()Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ChatProfileController;->saveConfig()V

    .line 57
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
