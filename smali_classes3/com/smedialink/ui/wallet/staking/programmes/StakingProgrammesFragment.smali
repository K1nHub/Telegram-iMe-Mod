.class public final Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;
.super Lcom/smedialink/ui/base/WalletAuthFragment;
.source "StakingProgrammesFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingProgrammesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingProgrammesFragment.kt\ncom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,173:1\n13#2,4:174\n56#3,6:178\n*S KotlinDebug\n*F\n+ 1 StakingProgrammesFragment.kt\ncom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment\n*L\n41#1:174,4\n44#1:178,6\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final stakingProgrammesRecycleAdapter$delegate:Lkotlin/Lazy;

.field private final stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;


# direct methods
.method public static synthetic $r8$lambda$BhQamHOBHGj6ry7L5ibzf_V7mVE(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->showSelectStakingOrderTypeDialog$lambda$1(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FSrfsEI-l_iqPbbDMkfTeK5xs3k(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->setupRecycleView$lambda$5$lambda$4$lambda$3(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$It1eKFglsxXyg52nN4yLC5CiICk(Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->setupListeners$lambda$11$lambda$9(Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PsuSs-HSpG7THnkSVUIaihF9WTg(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->showLevelRequiredDialog$lambda$2(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ezSKCsbmxmMz2xfB2NIE27Ow-Q4(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->setupListeners$lambda$11$lambda$10(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vR21_g8FZwr_b4wPB8Muhcw9hLY(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->setupLoadMore$lambda$8$lambda$7$lambda$6(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 41
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 47
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingProgrammesBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->Companion:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/model/staking/StakingTabType;)V
    .locals 4

    const-string v0, "stakingTabType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    .line 41
    new-instance p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

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

    .line 41
    iput-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->stakingProgrammesRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 47
    new-instance p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$binding$2;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getStakingTabType$p(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)Lcom/smedialink/storage/domain/model/staking/StakingTabType;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingProgrammesBinding;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingProgrammesBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    return-object v0
.end method

.method private final getStakingProgrammesRecycleAdapter()Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->stakingProgrammesRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;

    return-object v0
.end method

.method private final setupListeners()V
    .locals 2

    .line 141
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getStakingProgrammesRecycleAdapter()Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda2;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 147
    new-instance v1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$11$lambda$10(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    .line 149
    sget p2, Lorg/telegram/messenger/R$id;->image_header_right_button:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getPresenter()Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->showSelectStakingOrderTypeDialog()V

    goto :goto_0

    .line 150
    :cond_0
    sget p2, Lorg/telegram/messenger/R$id;->image_info:I

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->showStakingFiltersInfoDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final setupListeners$lambda$11$lambda$9(Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 144
    instance-of p2, p0, Lcom/smedialink/model/staking/StakingProgrammeItem;

    if-eqz p2, :cond_0

    invoke-direct {p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getPresenter()Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    move-result-object p1

    check-cast p0, Lcom/smedialink/model/staking/StakingProgrammeItem;

    invoke-virtual {p1, p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->onStakingProgrammeClick(Lcom/smedialink/model/staking/StakingProgrammeItem;)V

    :cond_0
    return-void
.end method

.method private final setupLoadMore(Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;)V
    .locals 2

    .line 130
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x5

    .line 131
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setPreLoadNumber(I)V

    .line 132
    new-instance v1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setOnLoadMoreListener(Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;)V

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setAnimationEnable(Z)V

    return-void
.end method

.method private static final setupLoadMore$lambda$8$lambda$7$lambda$6(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getPresenter()Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadStakingProgrammes$default(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZZILjava/lang/Object;)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 5

    .line 115
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingProgrammesBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentStakingProgrammesBinding;->recycleStakingProgrammes:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getStakingProgrammesRecycleAdapter()Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;->getFilterProvider()Lcom/smedialink/ui/adapter/provider/FilterProvider;

    move-result-object v2

    new-instance v3, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;)V

    invoke-virtual {v2, v3}, Lcom/smedialink/ui/adapter/provider/FilterProvider;->setOnFilterClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 120
    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;->getHeaderWithRightButtonProvider()Lcom/smedialink/ui/adapter/provider/HeaderWithRightButtonProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    sget-object v4, Lcom/smedialink/storage/domain/model/staking/StakingTabType;->PARTICIPATED:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/smedialink/ui/adapter/provider/HeaderWithRightButtonProvider;->setInfoButtonVisible(Z)V

    .line 121
    new-instance v2, Lcom/smedialink/ui/wallet/staking/programmes/adapter/diff/StakingProgrammesDiffCallback;

    invoke-direct {v2}, Lcom/smedialink/ui/wallet/staking/programmes/adapter/diff/StakingProgrammesDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 122
    invoke-direct {p0, v1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->setupLoadMore(Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;)V

    .line 116
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private static final setupRecycleView$lambda$5$lambda$4$lambda$3(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getPresenter()Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;->getFilterProvider()Lcom/smedialink/ui/adapter/provider/FilterProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/adapter/provider/FilterProvider;->getFiltersRecycleAdapter()Lcom/smedialink/ui/adapter/FiltersRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/model/common/FilterItem;

    invoke-virtual {p1}, Lcom/smedialink/model/common/FilterItem;->getId()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->onFilterSelected(J)V

    return-void
.end method

.method private static final showLevelRequiredDialog$lambda$2(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;->Companion:Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;

    sget-object v1, Lcom/smedialink/model/common/ScreenType;->FULLSCREEN:Lcom/smedialink/model/common/ScreenType;

    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LIME:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment$Companion;->newInstance(Lcom/smedialink/model/common/ScreenType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private static final showSelectStakingOrderTypeDialog$lambda$1(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getPresenter()Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    move-result-object p0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->onStakingOrderTypeSelected(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V

    return-void
.end method

.method private final showStakingFiltersInfoDialog()V
    .locals 9

    .line 159
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->staking_programmes_filters_info_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->staking_programmes_filters_info_description:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    .line 158
    invoke-static/range {v2 .. v8}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createInfoBottomSheetDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

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

    .line 103
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

    .line 104
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

    .line 105
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

    .line 106
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 107
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingProgrammesBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentStakingProgrammesBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getStakingProgrammesRecycleAdapter()Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;

    move-result-object v3

    new-instance v10, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda6;

    invoke-direct {v10, v3}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda6;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;)V

    const-string v11, "windowBackgroundGray"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 102
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->setupListeners()V

    .line 53
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->setupRecycleView()V

    .line 55
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentStakingProgrammesBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentStakingProgrammesBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadMoreComplete()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getStakingProgrammesRecycleAdapter()Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreEnd(Z)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getStakingProgrammesRecycleAdapter()Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreFail()V

    return-void
.end method

.method public openDepositScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 1

    const-string v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 86
    invoke-static {p1, v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStakingReplenish(Lcom/smedialink/model/staking/StakingDetailsItem;Ljava/lang/Double;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openStakingDetailsScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 2

    const-string v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->Companion:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;

    new-instance v1, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-direct {v1, p1}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;-><init>(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$Companion;->newInstance(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

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

    .line 59
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;->getStakingProgrammesRecycleAdapter()Lcom/smedialink/ui/wallet/staking/programmes/adapter/StakingProgrammesRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public showLevelRequiredDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 2

    const-string v0, "minimalRank"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda5;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)V

    invoke-static {p0, v0, p1, v1}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->showStakingLevelRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public showSelectStakingOrderTypeDialog(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V
    .locals 2

    const-string v0, "orderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment$$ExternalSyntheticLambda4;-><init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesFragment;)V

    invoke-static {p0, v0, p1, v1}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->showSelectStakingOrderDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method
