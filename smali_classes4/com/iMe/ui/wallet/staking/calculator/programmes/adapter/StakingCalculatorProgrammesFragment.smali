.class public final Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;
.super Lcom/iMe/ui/base/WalletAuthFragment;
.source "StakingCalculatorProgrammesFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingCalculatorProgrammesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingCalculatorProgrammesFragment.kt\ncom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,152:1\n13#2,4:153\n56#3,6:157\n*S KotlinDebug\n*F\n+ 1 StakingCalculatorProgrammesFragment.kt\ncom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment\n*L\n31#1:153,4\n32#1:157,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final onStakingSelectedAction:Lcom/iMe/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/staking/StakingDetailsItem;",
            ">;"
        }
    .end annotation
.end field

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final stakingProgrammesRecycleAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$DNdTCqOVUyRDtTos6w2w49PAH_k(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->setupListeners$lambda$9$lambda$8(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IqcZG9iJsOz_dh2Th9zPeC3v84M(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->setupLoadMore$lambda$6$lambda$5$lambda$4(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oatODTF8kY3JgoiNuFEN_RY05JI(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->setupListeners$lambda$9$lambda$7(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 31
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 35
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->Companion:Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/staking/StakingDetailsItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onStakingSelectedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/base/WalletAuthFragment;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->onStakingSelectedAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    .line 31
    new-instance p1, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 31
    iput-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->stakingProgrammesRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 35
    new-instance p1, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    return-object v0
.end method

.method private final getStakingProgrammesRecycleAdapter()Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->stakingProgrammesRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;

    return-object v0
.end method

.method public static final newInstance(Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/model/staking/StakingDetailsItem;",
            ">;)",
            "Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->Companion:Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$Companion;->newInstance(Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;

    move-result-object p0

    return-object p0
.end method

.method private final setupActionBar()V
    .locals 3

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 93
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 94
    invoke-virtual {p0}, Lcom/iMe/ui/base/WalletAuthFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_calculator_select_programme:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v1, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 128
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->getStakingProgrammesRecycleAdapter()Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 134
    new-instance v1, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$9$lambda$7(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 131
    instance-of p2, p0, Lcom/iMe/model/staking/StakingProgrammeItem;

    if-eqz p2, :cond_0

    invoke-direct {p1}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    move-result-object p1

    check-cast p0, Lcom/iMe/model/staking/StakingProgrammeItem;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->onStakingProgrammeClick(Lcom/iMe/model/staking/StakingProgrammeItem;)V

    :cond_0
    return-void
.end method

.method private static final setupListeners$lambda$9$lambda$8(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "view"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    .line 136
    sget p3, Lorg/telegram/messenger/R$id;->image_info:I

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 137
    instance-of p2, p0, Lcom/iMe/model/staking/StakingProgrammeItem;

    if-eqz p2, :cond_0

    invoke-direct {p1}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    move-result-object p1

    check-cast p0, Lcom/iMe/model/staking/StakingProgrammeItem;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->onStakingInfoClick(Lcom/iMe/model/staking/StakingProgrammeItem;)V

    :cond_0
    return-void
.end method

.method private final setupLoadMore(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;)V
    .locals 2

    .line 117
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x5

    .line 118
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 119
    new-instance v1, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setAnimationEnable(Z)V

    return-void
.end method

.method private static final setupLoadMore$lambda$6$lambda$5$lambda$4(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->getPresenter()Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;->loadStakingProgrammes$default(Lcom/iMe/ui/wallet/staking/calculator/programmes/StakingCalculatorProgrammesPresenter;ZZILjava/lang/Object;)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 106
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;->recycleStakingProgrammes:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->getStakingProgrammesRecycleAdapter()Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;

    move-result-object v1

    .line 108
    new-instance v2, Lcom/iMe/ui/wallet/staking/programmes/adapter/diff/StakingProgrammesDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/staking/programmes/adapter/diff/StakingProgrammesDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 109
    invoke-direct {p0, v1}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->setupLoadMore(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;)V

    .line 107
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
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

    .line 80
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

    .line 81
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

    .line 82
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

    .line 83
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 84
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->getStakingProgrammesRecycleAdapter()Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;

    move-result-object v3

    new-instance v10, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v10, v3}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;)V

    const-string/jumbo v11, "windowBackgroundGray"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 79
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->setupActionBar()V

    .line 41
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->setupListeners()V

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->setupRecycleView()V

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentStakingCalculatorProgrammesBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->getStakingProgrammesRecycleAdapter()Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;

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
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->getStakingProgrammesRecycleAdapter()Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreFail()V

    return-void
.end method

.method public onStakingSelected(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string v0, "stakingDetailsItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->onStakingSelectedAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-interface {v0, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method public renderItems(Ljava/util/List;)V
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

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesFragment;->getStakingProgrammesRecycleAdapter()Lcom/iMe/ui/wallet/staking/calculator/programmes/adapter/StakingCalculatorProgrammesRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic resetLoadMore()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/LoadMoreView$-CC;->$default$resetLoadMore(Lcom/iMe/ui/base/mvp/LoadMoreView;)V

    return-void
.end method

.method public showStakingConditionsDialog(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;

    invoke-virtual {v0, p1, p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;->newInstance(Lcom/iMe/model/staking/StakingDetailsItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
