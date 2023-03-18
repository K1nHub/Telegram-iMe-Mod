.class public final Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;
.super Lcom/smedialink/ui/catalog/tabs/CatalogTabFragment;
.source "CatalogCategoriesFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogCategoriesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogCategoriesFragment.kt\ncom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,158:1\n13#2,4:159\n56#3,6:163\n*S KotlinDebug\n*F\n+ 1 CatalogCategoriesFragment.kt\ncom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment\n*L\n30#1:159,4\n31#1:163,6\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final campaignsRecycleAdapter$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$KNhNf9e37bBwPAf5AOtVBzJbXvA(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupListeners$lambda$12$lambda$11(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WnSz9fLkiwO1sfoaMK4_hdNpjrc(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupLoadMore$lambda$5$lambda$4(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZgDfuMW-rXLh5Ji0o_45Ets9ewQ(Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupListeners$lambda$10$lambda$9(Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sg0D464hOK9Zt_td4U6tgxeUyCM(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupListeners$lambda$10$lambda$8(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 30
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 34
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->Companion:Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/model/catalog/ChatType;)V
    .locals 4

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/CatalogTabFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$presenter$2;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/smedialink/storage/domain/model/catalog/ChatType;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

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
    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->campaignsRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 34
    new-instance p1, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$binding$2;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getPresenter()Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    return-object v0
.end method

.method private final getCampaignsRecycleAdapter()Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->campaignsRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    return-object v0
.end method

.method private final setupColors()V
    .locals 4

    .line 127
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const-string v2, "chats_actionBackground"

    .line 128
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 3

    .line 133
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;->getGlobalStateProvider()Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    move-result-object v1

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v1, v2}, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;->setMatchParentHeight(Z)V

    .line 136
    new-instance v2, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$setupListeners$1$1$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$setupListeners$1$1$1;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    invoke-virtual {v1, v2}, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;->setOnRetryButtonClickAction(Lkotlin/jvm/functions/Function0;)V

    .line 138
    invoke-virtual {v0}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;->getFilterProvider()Lcom/smedialink/ui/adapter/provider/FilterProvider;

    move-result-object v1

    new-instance v2, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;)V

    invoke-virtual {v1, v2}, Lcom/smedialink/ui/adapter/provider/FilterProvider;->setOnFilterClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 141
    new-instance v1, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 147
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$10$lambda$8(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getPresenter()Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;->getFilterProvider()Lcom/smedialink/ui/adapter/provider/FilterProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/adapter/provider/FilterProvider;->getFiltersRecycleAdapter()Lcom/smedialink/ui/adapter/FiltersRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/model/common/FilterItem;

    invoke-virtual {p1}, Lcom/smedialink/model/common/FilterItem;->getId()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->onCategorySelected(J)V

    return-void
.end method

.method private static final setupListeners$lambda$10$lambda$9(Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 143
    instance-of p2, p0, Lcom/smedialink/model/catalog/CampaignItem;

    if-eqz p2, :cond_0

    invoke-direct {p1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getPresenter()Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object p1

    check-cast p0, Lcom/smedialink/model/catalog/CampaignItem;

    invoke-virtual {p1, p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->onChannelClick(Lcom/smedialink/model/catalog/CampaignItem;)V

    :cond_0
    return-void
.end method

.method private static final setupListeners$lambda$12$lambda$11(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getPresenter()Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->reloadChannels$default(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;ZZILjava/lang/Object;)V

    return-void
.end method

.method private final setupLoadMore(Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;)V
    .locals 1

    .line 118
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    const/4 v0, 0x5

    .line 119
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 120
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    return-void
.end method

.method private static final setupLoadMore$lambda$5$lambda$4(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getPresenter()Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->loadChannels(Z)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 108
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->recycleCampaigns:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v1

    .line 110
    new-instance v2, Lcom/smedialink/ui/catalog/tabs/categories/adapter/diff/CampaignsByCategoriesDiffCallback;

    invoke-direct {v2}, Lcom/smedialink/ui/catalog/tabs/categories/adapter/diff/CampaignsByCategoriesDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 111
    invoke-direct {p0, v1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupLoadMore(Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;)V

    .line 109
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
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

    .line 96
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

    .line 97
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

    .line 98
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

    .line 99
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 100
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v3

    new-instance v10, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v10, v3}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment$$ExternalSyntheticLambda4;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;)V

    const-string v11, "windowBackgroundGray"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 95
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public handleBottomPadding(I)V
    .locals 4

    .line 86
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->recycleCampaigns:Landroidx/recyclerview/widget/RecyclerView;

    .line 87
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

    .line 39
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupColors()V

    .line 40
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupListeners()V

    .line 41
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->setupRecycleView()V

    .line 43
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

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

    .line 52
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreComplete()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 54
    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public onSelectedLanguageChanged()V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getPresenter()Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->reloadAll(Z)V

    return-void
.end method

.method public openCampaignDetailsScreen(Lcom/smedialink/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/storage/domain/model/catalog/ChatType;)V
    .locals 1

    const-string v0, "campaign"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/smedialink/ui/catalog/details/ChannelDetailsBottomSheetDialog;->Companion:Lcom/smedialink/ui/catalog/details/ChannelDetailsBottomSheetDialog$Companion;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/smedialink/ui/catalog/details/ChannelDetailsBottomSheetDialog$Companion;->newInstance(Lcom/smedialink/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/storage/domain/model/catalog/ChatType;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/smedialink/ui/catalog/details/ChannelDetailsBottomSheetDialog;

    move-result-object p1

    .line 75
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

    .line 47
    invoke-virtual {p0, v0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->showRefreshing(Z)V

    .line 48
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public resetLoadMore()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getCampaignsRecycleAdapter()Lcom/smedialink/ui/catalog/tabs/categories/adapter/CatalogCampaignsByCategoriesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->reset$TMessagesProj_release()V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogCategoriesBinding;->getRoot()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
