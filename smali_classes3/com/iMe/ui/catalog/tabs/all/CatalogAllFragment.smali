.class public final Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;
.super Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;
.source "CatalogAllFragment.kt"

# interfaces
.implements Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogAllFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogAllFragment.kt\ncom/iMe/ui/catalog/tabs/all/CatalogAllFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,191:1\n13#2,4:192\n56#3,6:196\n162#4,8:202\n*S KotlinDebug\n*F\n+ 1 CatalogAllFragment.kt\ncom/iMe/ui/catalog/tabs/all/CatalogAllFragment\n*L\n31#1:192,4\n32#1:196,6\n124#1:202,8\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final categoriesRecycleAdapter$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$SMccidmpybWqxwyVby7G8NPmkk8(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->setupListeners$lambda$11$lambda$10(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZoOYEgYNJCPBqaabAfXqujJwBkM(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->setupLoadMore$lambda$7$lambda$6$lambda$5(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 31
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 35
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->Companion:Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/catalog/ChatType;)V
    .locals 4

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;-><init>()V

    .line 31
    new-instance v0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$presenter$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$presenter$2;-><init>(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;Lcom/iMe/storage/domain/model/catalog/ChatType;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->categoriesRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 35
    new-instance p1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$binding$2;-><init>(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    return-object v0
.end method

.method private final getCategoriesRecycleAdapter()Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->categoriesRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;

    return-object v0
.end method

.method private final getNestedChannelsAdapter(J)Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllChannelsRecycleAdapter;
    .locals 1

    .line 182
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getCategoriesRecycleAdapter()Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;->getCategoryWithCampaignsProvider()Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->getChannelsAdapter(J)Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllChannelsRecycleAdapter;

    move-result-object p1

    return-object p1
.end method

.method private final getPresenter()Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    return-object v0
.end method

.method private final setupColors()V
    .locals 4

    .line 166
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const-string v2, "chats_actionBackground"

    .line 167
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 172
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getCategoriesRecycleAdapter()Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;->getCategoryWithCampaignsProvider()Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupListeners$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupListeners$1$1;-><init>(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->setOnChannelItemClick(Lkotlin/jvm/functions/Function1;)V

    .line 175
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    move-result-object v0

    .line 176
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    new-instance v2, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupListeners$2$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupListeners$2$1;-><init>(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->setRetryButtonClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 177
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$11$lambda$10(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;->reloadCategories()V

    return-void
.end method

.method private final setupLoadMore(Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;)V
    .locals 2

    .line 155
    invoke-virtual {p1}, Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;->getCategoryWithCampaignsProvider()Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupLoadMore$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$setupLoadMore$1$1;-><init>(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;->setOnLoadMoreChannels(Lkotlin/jvm/functions/Function1;)V

    .line 156
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    const/4 v0, 0x5

    .line 157
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 158
    new-instance v0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    return-void
.end method

.method private static final setupLoadMore$lambda$7$lambda$6$lambda$5(Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;->loadCategoriesPreviews()V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 144
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->recycleCategories:Landroidx/recyclerview/widget/RecyclerView;

    .line 145
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getCategoriesRecycleAdapter()Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;

    move-result-object v1

    .line 146
    new-instance v2, Lcom/iMe/ui/catalog/tabs/all/adapter/diff/CategoriesPreviewsDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/catalog/tabs/all/adapter/diff/CategoriesPreviewsDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 147
    invoke-direct {p0, v1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->setupLoadMore(Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;)V

    .line 145
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 149
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

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

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 132
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "actionBarDefault"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 133
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefaultIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 134
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "actionBarDefaultTitle"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 135
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 136
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getCategoriesRecycleAdapter()Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;

    move-result-object v3

    new-instance v10, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$$ExternalSyntheticLambda2;

    invoke-direct {v10, v3}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;)V

    const-string v11, "windowBackgroundGray"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 131
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public handleBottomPadding(I)V
    .locals 4

    .line 124
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->recycleCategories:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.recycleCategories"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 168
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public onCategoriesLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    .line 49
    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->isContentState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showContent()V

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getCategoriesRecycleAdapter()Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->setupColors()V

    .line 41
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->setupListeners()V

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->setupRecycleView()V

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onEmptyState()V
    .locals 3

    .line 109
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    const-string v1, "binding.globalStateLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showEmpty$default(Lcom/iMe/ui/custom/state/GlobalStateLayout;Lcom/iMe/model/state/GlobalState$Empty;ILjava/lang/Object;)V

    return-void
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getCategoriesRecycleAdapter()Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getCategoriesRecycleAdapter()Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreFail()V

    return-void
.end method

.method public onLoadMoreItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getCategoriesRecycleAdapter()Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllCategoriesRecycleAdapter;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 59
    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic onLoadingState()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/state/GlobalStateView$-CC;->$default$onLoadingState(Lcom/iMe/ui/custom/state/GlobalStateView;)V

    return-void
.end method

.method public onNestedLoadMoreComplete(J)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getNestedChannelsAdapter(J)Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllChannelsRecycleAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    :cond_0
    return-void
.end method

.method public onNestedLoadMoreError(J)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getNestedChannelsAdapter(J)Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllChannelsRecycleAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreFail()V

    :cond_0
    return-void
.end method

.method public onNestedLoadMoreItems(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/iMe/model/catalog/CampaignItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getNestedChannelsAdapter(J)Lcom/iMe/ui/catalog/tabs/all/adapter/CatalogAllChannelsRecycleAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 78
    invoke-static {p1, p3, v0, p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onNoInternetErrorState()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->showRefreshing(Z)V

    .line 100
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showNoInternetError()V

    return-void
.end method

.method public onSelectedLanguageChanged()V
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;->reloadCategories()V

    return-void
.end method

.method public onUnexpectedErrorState()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->showRefreshing(Z)V

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->globalStateLayout:Lcom/iMe/ui/custom/state/GlobalStateLayout;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/state/GlobalStateLayout;->showUnexpectedError()V

    return-void
.end method

.method public openCampaignDetailsScreen(Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/catalog/ChatType;)V
    .locals 1

    const-string v0, "campaign"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$Companion;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$Companion;->newInstance(Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/catalog/ChatType;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public synthetic resetLoadMore()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/LoadMoreView$-CC;->$default$resetLoadMore(Lcom/iMe/ui/base/mvp/LoadMoreView;)V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogAllBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
