.class public final Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "ExtendedAvatarPreviewerSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtendedAvatarPreviewerSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtendedAvatarPreviewerSettingsActivity.kt\ncom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,506:1\n1002#2,2:507\n*S KotlinDebug\n*F\n+ 1 ExtendedAvatarPreviewerSettingsActivity.kt\ncom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity\n*L\n57#1:507,2\n*E\n"
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

.field private final items$delegate:Lkotlin/Lazy;

.field private itemsEndRow:I

.field private itemsHeaderRow:I

.field private itemsStartRow:I

.field private final listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final newItems$delegate:Lkotlin/Lazy;

.field private openByClickRow:I

.field private openByClickSectionRow:I

.field private final rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private rowCount:I


# direct methods
.method public static synthetic $r8$lambda$qV70dGDFaUonj4oUL8s258wIBew(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;Landroid/view/View;IFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->initListView$lambda$7$lambda$6(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;Landroid/view/View;IFF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 31
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "rootView"

    const-string v4, "getRootView()Landroid/widget/FrameLayout;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 32
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listView"

    const-string v4, "getListView()Lorg/telegram/ui/Components/RecyclerListView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 33
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "listAdapter"

    const-string v4, "getListAdapter()Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 31
    new-instance v0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$rootView$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$rootView$2;-><init>(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 32
    new-instance v0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$listView$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$listView$2;-><init>(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 33
    new-instance v0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$listAdapter$2;

    invoke-direct {v0, p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$listAdapter$2;-><init>(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 34
    sget-object v0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$items$2;->INSTANCE:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$items$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->items$delegate:Lkotlin/Lazy;

    .line 35
    sget-object v0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$newItems$2;->INSTANCE:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$newItems$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->newItems$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getEnableRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableRow:I

    return p0
.end method

.method public static final synthetic access$getEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableSectionRow:I

    return p0
.end method

.method public static final synthetic access$getItems(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)[Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getItems()[Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getItemsHeaderRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->itemsHeaderRow:I

    return p0
.end method

.method public static final synthetic access$getItemsStartRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->itemsStartRow:I

    return p0
.end method

.method public static final synthetic access$getNewItems(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)Ljava/util/List;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getNewItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOpenByClickRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->openByClickRow:I

    return p0
.end method

.method public static final synthetic access$getOpenByClickSectionRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->openByClickSectionRow:I

    return p0
.end method

.method public static final synthetic access$getRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->rowCount:I

    return p0
.end method

.method public static final synthetic access$initListView(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->initListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initRootView(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->initRootView()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isClickableViewType(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->isClickableViewType(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$needDivider(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->needDivider(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setEnableRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableRow:I

    return-void
.end method

.method public static final synthetic access$setEnableSectionRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableSectionRow:I

    return-void
.end method

.method public static final synthetic access$setItemsEndRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->itemsEndRow:I

    return-void
.end method

.method public static final synthetic access$setItemsHeaderRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->itemsHeaderRow:I

    return-void
.end method

.method public static final synthetic access$setItemsStartRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->itemsStartRow:I

    return-void
.end method

.method public static final synthetic access$setOpenByClickRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->openByClickRow:I

    return-void
.end method

.method public static final synthetic access$setOpenByClickSectionRow$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->openByClickSectionRow:I

    return-void
.end method

.method public static final synthetic access$setRowCount$p(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->rowCount:I

    return-void
.end method

.method private final getItems()[Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->items$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    return-object v0
.end method

.method private final getListAdapter()Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->listAdapter$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;

    return-object v0
.end method

.method private final getListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->listView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

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
            "Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->newItems$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getRootView()Landroid/widget/FrameLayout;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->rootView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private final initListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 3

    .line 327
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 328
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 329
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 330
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 331
    new-instance v1, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    return-object v0
.end method

.method private static final initListView$lambda$7$lambda$6(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;Landroid/view/View;IFF)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    instance-of p3, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    .line 334
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 335
    iget p1, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableRow:I

    if-ne p2, p1, :cond_1

    .line 336
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    xor-int/2addr p1, p4

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setExtendedAvatarPreviewerEnabled(Z)V

    .line 337
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListAdapter()Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;

    move-result-object p1

    .line 338
    iget p2, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->rowCount:I

    .line 339
    invoke-virtual {p1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;->updateRows()V

    .line 340
    iget p3, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->rowCount:I

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 341
    sget-boolean p3, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    if-eqz p3, :cond_0

    .line 342
    iget p3, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableSectionRow:I

    add-int/2addr p3, p4

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 344
    :cond_0
    iget p3, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableSectionRow:I

    add-int/2addr p3, p4

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 346
    :goto_0
    iget p0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->enableSectionRow:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_2

    .line 349
    :cond_1
    sget-boolean p0, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerByTapEnabled:Z

    xor-int/2addr p0, p4

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setExtendedAvatarPreviewerByTapEnabled(Z)V

    goto :goto_2

    .line 353
    :cond_2
    instance-of p3, p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    if-eqz p3, :cond_5

    .line 354
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getItems()[Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    move-result-object p3

    iget v0, p0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->itemsStartRow:I

    sub-int/2addr p2, v0

    aget-object p2, p3, p2

    .line 355
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getNewItems()Ljava/util/List;

    move-result-object p0

    .line 356
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 357
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, p4, :cond_3

    return-void

    .line 360
    :cond_3
    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 362
    :cond_4
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
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

    .line 323
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 324
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final isClickableViewType(I)Z
    .locals 1

    .line 372
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_CELL:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CHECK_BOX_CELL:I

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

    .line 375
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

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 310
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 311
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 312
    sget v1, Lorg/telegram/messenger/R$string;->settings_interface_chat_user_options_by_avatar_click_subtitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 313
    new-instance v1, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$setupActionBar$1$1;-><init>(Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 27
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

    .line 63
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 64
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 65
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 70
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    .line 63
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 72
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 73
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 74
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 79
    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v3

    move/from16 v18, v19

    .line 72
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v12, 0x1

    aput-object v3, v1, v12

    .line 81
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 82
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 83
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 88
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    .line 81
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v13, 0x2

    aput-object v3, v1, v13

    .line 90
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 91
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 92
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 97
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v3

    .line 90
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v14, 0x3

    aput-object v3, v1, v14

    .line 99
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 100
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 101
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 106
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v3

    .line 99
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x4

    aput-object v3, v1, v4

    .line 108
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 109
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    .line 110
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v4, v3

    move/from16 v11, v19

    .line 108
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    .line 117
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 118
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v16

    .line 119
    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    .line 124
    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v3

    .line 117
    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x6

    aput-object v3, v1, v4

    .line 126
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 127
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v16

    new-array v4, v12, [Ljava/lang/Class;

    .line 129
    const-class v5, Landroid/view/View;

    aput-object v5, v4, v2

    .line 130
    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    .line 133
    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v17, 0x0

    move-object v15, v3

    move-object/from16 v18, v4

    .line 126
    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 135
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v16

    .line 137
    sget v17, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v4, v14, [Ljava/lang/Class;

    .line 139
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v5, v4, v12

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v4, v13

    .line 146
    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v19, 0x0

    move-object v15, v3

    move-object/from16 v18, v4

    .line 135
    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 148
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 150
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 151
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 155
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundChecked:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 148
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 157
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 159
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v4, v5

    new-array v4, v12, [Ljava/lang/Class;

    .line 160
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    .line 164
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundUnchecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 157
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 166
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 168
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 169
    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v2

    const-string v5, "textView"

    .line 170
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 174
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundCheckText:I

    const/16 v20, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 166
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 176
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    .line 178
    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    .line 179
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    .line 180
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 184
    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v13, v3

    move-object/from16 v16, v4

    move/from16 v21, v26

    .line 176
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xc

    aput-object v3, v1, v4

    .line 186
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 189
    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v4, v2

    const-string v6, "checkBox"

    .line 190
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 194
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlue:I

    const/4 v15, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 186
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xd

    aput-object v3, v1, v4

    .line 196
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 199
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 200
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 204
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 196
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xe

    aput-object v3, v1, v4

    .line 206
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 209
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 210
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 214
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumb:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 206
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0xf

    aput-object v3, v1, v4

    .line 216
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 217
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 219
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 220
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 224
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueThumbChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 216
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x10

    aput-object v3, v1, v4

    .line 226
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 229
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 230
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 234
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelector:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 226
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x11

    aput-object v3, v1, v4

    .line 236
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 239
    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v4, v2

    .line 240
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    .line 244
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackBlueSelectorChecked:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 236
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x12

    aput-object v3, v1, v4

    .line 246
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 249
    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v4, v2

    .line 250
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    .line 254
    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 246
    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x13

    aput-object v3, v1, v4

    .line 256
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v19

    new-array v4, v12, [Ljava/lang/Class;

    .line 259
    const-class v6, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v6, v4, v2

    .line 260
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v4

    .line 256
    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x14

    aput-object v3, v1, v4

    .line 266
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 269
    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v5, v4, v2

    .line 273
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareUnchecked:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v3

    move-object/from16 v16, v4

    .line 266
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x15

    aput-object v3, v1, v4

    .line 275
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 278
    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v5, v4, v2

    .line 282
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareDisabled:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 275
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x16

    aput-object v3, v1, v4

    .line 284
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 287
    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v5, v4, v2

    .line 291
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareBackground:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 284
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v4, 0x17

    aput-object v3, v1, v4

    .line 293
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 294
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    new-array v4, v12, [Ljava/lang/Class;

    .line 296
    const-class v5, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    aput-object v5, v4, v2

    .line 300
    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareCheck:I

    move-object v13, v3

    move-object/from16 v16, v4

    .line 293
    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/16 v2, 0x18

    aput-object v3, v1, v2

    .line 62
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getRootView()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 48
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->setupActionBar()V

    .line 49
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getNewItems()Ljava/util/List;

    move-result-object v0

    .line 1002
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$onFragmentDestroy$$inlined$sortBy$1;

    invoke-direct {v1}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$onFragmentDestroy$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;->getNewItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedExtendedAvatarPreviewerItems(Ljava/util/List;)V

    .line 59
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    return-void
.end method
