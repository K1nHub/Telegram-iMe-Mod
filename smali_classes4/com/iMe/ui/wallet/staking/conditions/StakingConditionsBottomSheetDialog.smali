.class public final Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "StakingConditionsBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingConditionsBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingConditionsBottomSheetDialog.kt\ncom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,151:1\n13#2,4:152\n56#3,6:156\n*S KotlinDebug\n*F\n+ 1 StakingConditionsBottomSheetDialog.kt\ncom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog\n*L\n28#1:152,4\n31#1:156,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 28
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 34
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/staking/StakingDetailsItem;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    const-string/jumbo v0, "stakingDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 24
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 28
    new-instance p2, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$presenter$2;

    invoke-direct {p2, p0, p1}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;Lcom/iMe/model/staking/StakingDetailsItem;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string/jumbo v2, "mvpDelegate"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2, p2}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 34
    new-instance p1, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$binding$2;-><init>(Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method public static final newInstance(Lcom/iMe/model/staking/StakingDetailsItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$Companion;->newInstance(Lcom/iMe/model/staking/StakingDetailsItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method

.method private final setupColors()V
    .locals 5

    .line 114
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object v0

    .line 115
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ImageHeaderView;->setupColors()V

    .line 116
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewAnnualPercentageCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 117
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewStartDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 118
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewCompletionDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 119
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewThresholdCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 121
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->buttonOk:Lcom/iMe/ui/custom/BigActionButton;

    const/4 v1, 0x4

    .line 122
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 123
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 124
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/16 v4, 0x78

    invoke-static {v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(II)I

    move-result v3

    .line 121
    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 136
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->buttonOk:Lcom/iMe/ui/custom/BigActionButton;

    const-string v0, "binding.buttonOk"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$setupListeners$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog$setupListeners$1;-><init>(Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupTexts()V
    .locals 3

    .line 130
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object v0

    .line 131
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->buttonOk:Lcom/iMe/ui/custom/BigActionButton;

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->setupColors()V

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->setupListeners()V

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->setupTexts()V

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    const-string v6, "iconUrl"

    move-object/from16 v8, p1

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "networkIconUrl"

    move-object/from16 v10, p2

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "name"

    move-object/from16 v11, p3

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "author"

    move-object/from16 v12, p4

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "annualPercentage"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "startDate"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "completionDate"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "compoundThreshold"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "plannedWithdrawalFeeText"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "immediateWithdrawalFeeText"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "finishedFeeText"

    move-object/from16 v15, p11

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;

    move-result-object v6

    .line 59
    iget-object v7, v6, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    const-string/jumbo v9, "viewHeader"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Lcom/iMe/ui/custom/ImageHeaderView;->setupViewData$default(Lcom/iMe/ui/custom/ImageHeaderView;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 65
    iget-object v7, v6, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewAnnualPercentageCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 66
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v8

    sget v9, Lorg/telegram/messenger/R$string;->staking_details_apy_apr:I

    invoke-interface {v8, v9}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 68
    sget v9, Lorg/telegram/messenger/R$drawable;->fork_ic_percent:I

    const/4 v10, 0x1

    .line 65
    invoke-virtual {v7, v8, v0, v9, v10}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 71
    iget-object v0, v6, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewStartDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$string;->staking_conditions_start:I

    invoke-interface {v7, v8}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 74
    sget v8, Lorg/telegram/messenger/R$drawable;->fork_ic_start:I

    .line 71
    invoke-virtual {v0, v7, v1, v8, v10}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 77
    iget-object v0, v6, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewCompletionDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v7, Lorg/telegram/messenger/R$string;->staking_conditions_completion:I

    invoke-interface {v1, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    sget v7, Lorg/telegram/messenger/R$drawable;->fork_ic_done_24:I

    .line 77
    invoke-virtual {v0, v1, v2, v7, v10}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 83
    iget-object v0, v6, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewThresholdCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_conditions_compound_threshold:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_donations_24:I

    .line 83
    invoke-virtual {v0, v1, v3, v2, v10}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 89
    iget-object v0, v6, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewPlannedWithdrawalFeeCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_conditions_planned_withdrawal:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_transactions_24:I

    .line 89
    invoke-virtual {v0, v1, v4, v2, v10}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 95
    iget-object v0, v6, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewImmediateWithdrawalFeeCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_conditions_immediate_withdrawal:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_ask_transfer_24:I

    .line 95
    invoke-virtual {v0, v1, v5, v2, v10}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 101
    iget-object v0, v6, Lorg/telegram/messenger/databinding/ForkContentStakingConditionsBinding;->viewFinishedFeeCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    const-string/jumbo v1, "viewFinishedFeeCell"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_conditions_end_output:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_end_24:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, p11

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p7, v5

    .line 101
    invoke-static/range {p1 .. p7}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData$default(Lcom/iMe/ui/custom/DetailsIconCellView;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method
