.class public final Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;
.super Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;
.source "CatalogCategoriesFragment.kt"

# interfaces
.implements Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogCategoriesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogCategoriesFragment.kt\ncom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,213:1\n13#2,4:214\n56#3,6:218\n*S KotlinDebug\n*F\n+ 1 CatalogCategoriesFragment.kt\ncom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment\n*L\n30#1:214,4\n37#1:218,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final campaignsRecycleAdapter$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$9HCZ0jsuo6Pf2ZPydzeOKny2D38(Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupListeners$lambda$10$lambda$9(Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9lq_ishtIaIPyAny_AG2t0SH3hs(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupLoadMore$lambda$5$lambda$4(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IKhk2grO4L5nOsQ9zQ6ZnBOU2LU(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupListeners$lambda$10$lambda$8(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j9JPFOIfR0EB0DcFUYUKpvHAZiU(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupListeners$lambda$12$lambda$11(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 30
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 40
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->Companion:Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/catalog/ChatType;)V
    .locals 4

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/iMe/storage/domain/model/catalog/ChatType;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

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

    .line 30
    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 37
    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->campaignsRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$binding$2;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;)Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    return-object v0
.end method

.method private final getCampaignsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->campaignsRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    return-object v0
.end method

.method private final setupColors()V
    .locals 4

    .line 181
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 182
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 187
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;->getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    move-result-object v1

    const/4 v2, 0x1

    .line 189
    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setMatchParentHeight(Z)V

    .line 190
    new-instance v2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$setupListeners$1$1$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$setupListeners$1$1$1;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setOnRetryButtonClickAction(Lkotlin/jvm/functions/Function0;)V

    .line 192
    invoke-virtual {v0}, Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;->getFilterProvider()Lcom/iMe/ui/adapter/provider/FilterProvider;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;)V

    invoke-virtual {v1, v2}, Lcom/iMe/ui/adapter/provider/FilterProvider;->setOnFilterClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 195
    new-instance v1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 201
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$10$lambda$8(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;->getFilterProvider()Lcom/iMe/ui/adapter/provider/FilterProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/adapter/provider/FilterProvider;->getFiltersRecycleAdapter()Lcom/iMe/ui/adapter/FiltersRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/common/FilterItem;

    invoke-virtual {p1}, Lcom/iMe/model/common/FilterItem;->getId()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->onCategorySelected(J)V

    return-void
.end method

.method private static final setupListeners$lambda$10$lambda$9(Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 197
    instance-of p2, p0, Lcom/iMe/model/catalog/CampaignItem;

    if-eqz p2, :cond_0

    invoke-direct {p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object p1

    check-cast p0, Lcom/iMe/model/catalog/CampaignItem;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->onChannelClick(Lcom/iMe/model/catalog/CampaignItem;)V

    :cond_0
    return-void
.end method

.method private static final setupListeners$lambda$12$lambda$11(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->reloadChannels$default(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;ZZILjava/lang/Object;)V

    return-void
.end method

.method private final setupLoadMore(Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;)V
    .locals 1

    .line 172
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    const/4 v0, 0x5

    .line 173
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 174
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    return-void
.end method

.method private static final setupLoadMore$lambda$5$lambda$4(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->loadChannels(Z)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 162
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->recycleCampaigns:Landroidx/recyclerview/widget/RecyclerView;

    .line 163
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v1

    .line 164
    new-instance v2, Lcom/iMe/ui/catalog/tabs/categories/adapter/diff/CampaignsByCategoriesDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/catalog/tabs/categories/adapter/diff/CampaignsByCategoriesDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 165
    invoke-direct {p0, v1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupLoadMore(Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;)V

    .line 163
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 167
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

    .line 110
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 111
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 112
    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 117
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    .line 110
    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 119
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 120
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 121
    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    .line 126
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    .line 119
    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 128
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 129
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 130
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    .line 135
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    .line 128
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 137
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 138
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 139
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    .line 144
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    .line 137
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 146
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v5

    .line 148
    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v3

    new-instance v10, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v10, v3}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;)V

    .line 153
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v4, v2

    .line 146
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 109
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public handleBottomPadding(I)V
    .locals 4

    .line 100
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->recycleCampaigns:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupColors()V

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupListeners()V

    .line 51
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupRecycleView()V

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic onEmptyState()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/state/GlobalStateView$-CC;->$default$onEmptyState(Lcom/iMe/ui/custom/state/GlobalStateView;)V

    return-void
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

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

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 64
    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic onLoadingState()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/state/GlobalStateView$-CC;->$default$onLoadingState(Lcom/iMe/ui/custom/state/GlobalStateView;)V

    return-void
.end method

.method public synthetic onNoInternetErrorState()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/state/GlobalStateView$-CC;->$default$onNoInternetErrorState(Lcom/iMe/ui/custom/state/GlobalStateView;)V

    return-void
.end method

.method public onSelectedLanguageChanged()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->reloadAll(Z)V

    return-void
.end method

.method public synthetic onUnexpectedErrorState()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/state/GlobalStateView$-CC;->$default$onUnexpectedErrorState(Lcom/iMe/ui/custom/state/GlobalStateView;)V

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

    .line 90
    sget-object v0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$Companion;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$Companion;->newInstance(Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/catalog/ChatType;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;

    move-result-object p1

    .line 89
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public renderNodes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->showRefreshing(Z)V

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public resetLoadMore()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->reset$TMessagesProj_HA_public()V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
