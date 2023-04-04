.class public final Lcom/iMe/ui/custom/StakingPrognosisView;
.super Landroid/widget/FrameLayout;
.source "StakingPrognosisView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingPrognosisView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingPrognosisView.kt\ncom/iMe/ui/custom/StakingPrognosisView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n56#2,6:104\n4#3:110\n5#3,2:113\n4#3:115\n5#3,2:118\n4#3:120\n5#3,2:123\n2634#4:111\n2634#4:116\n2634#4:121\n1#5:112\n1#5:117\n1#5:122\n*S KotlinDebug\n*F\n+ 1 StakingPrognosisView.kt\ncom/iMe/ui/custom/StakingPrognosisView\n*L\n27#1:104,6\n59#1:110\n59#1:113,2\n62#1:115\n62#1:118,2\n66#1:120\n66#1:123,2\n59#1:111\n62#1:116\n66#1:121\n59#1:112\n62#1:117\n66#1:122\n*E\n"
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/StakingPrognosisView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/custom/StakingPrognosisView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/ui/custom/StakingPrognosisView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->setupView()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 20
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/StakingPrognosisView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setupView()V
    .locals 4

    .line 84
    invoke-virtual {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->setupColors()V

    .line 86
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    .line 87
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textStatistics:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->staking_calculator_statistics:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textModeTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->staking_calculator_mode:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textProfitTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->staking_calculator_income_profit:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDepositTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->staking_calculator_deposit_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDepositDescription:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->staking_calculator_deposit_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->buttonDeposit:Lcom/iMe/ui/custom/BigActionButton;

    const/16 v1, 0x24

    .line 93
    invoke-virtual {v0, v1}, Lcom/iMe/ui/custom/ActionButton;->setForcedCustomHeight(I)V

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_operation_deposit:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final setupColors()V
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/view/ViewGroup;

    .line 59
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->constraintStatistics:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v4, "constraintStatistics"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->linearDeposit:Landroid/widget/LinearLayout;

    const-string v5, "linearDeposit"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->viewChart:Lcom/iMe/ui/custom/ChartCellView;

    const-string v6, "viewChart"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Landroid/view/ViewGroup;

    const-string v7, "windowBackgroundWhite"

    .line 60
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/widget/TextView;

    .line 62
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textStatistics:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDates:Landroid/widget/TextView;

    aput-object v3, v2, v5

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textPercentageValue:Landroid/widget/TextView;

    aput-object v3, v2, v6

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textModeValue:Landroid/widget/TextView;

    aput-object v3, v2, v1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Landroid/widget/TextView;

    const-string v7, "windowBackgroundWhiteBlackText"

    .line 63
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v7, "setupColors$lambda$5$lambda$2"

    .line 64
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_1
    new-array v2, v6, [Landroid/widget/TextView;

    .line 66
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textProfitTokenValue:Landroid/widget/TextView;

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textProfitUsdValue:Landroid/widget/TextView;

    aput-object v3, v2, v5

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Landroid/widget/TextView;

    const-string v7, "windowBackgroundWhiteGreenText2"

    .line 67
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v7, "setupColors$lambda$5$lambda$3"

    .line 68
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_2

    :cond_2
    new-array v1, v1, [Landroid/widget/TextView;

    .line 70
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textModeTitle:Landroid/widget/TextView;

    const-string v3, "textModeTitle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v4

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textProfitTitle:Landroid/widget/TextView;

    const-string v3, "textProfitTitle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v5

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDepositDescription:Landroid/widget/TextView;

    const-string v3, "textDepositDescription"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v6

    const-string v2, "windowBackgroundWhiteGrayText"

    invoke-static {v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(Ljava/lang/String;[Landroid/widget/TextView;)V

    .line 71
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDepositTitle:Landroid/widget/TextView;

    const-string v2, "windowBackgroundWhiteBlueText"

    .line 72
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "setupColors$lambda$5$lambda$4"

    .line 73
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 75
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->buttonDeposit:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    return-void
.end method

.method public final setupViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/StatisticActivity$ChartViewData;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "datesText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "percentageText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenProfitText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDepositClickAction"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingPrognosisView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;

    .line 47
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textDates:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textPercentageValue:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textModeValue:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->textProfitTokenValue:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->viewChart:Lcom/iMe/ui/custom/ChartCellView;

    const/4 p2, 0x0

    invoke-virtual {p1, p5, p2}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->updateData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Z)V

    .line 52
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingPrognosisBinding;->buttonDeposit:Lcom/iMe/ui/custom/BigActionButton;

    const-string p1, "buttonDeposit"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/custom/StakingPrognosisView$setupViewData$1$1;

    invoke-direct {v4, p6}, Lcom/iMe/ui/custom/StakingPrognosisView$setupViewData$1$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 54
    invoke-virtual {p0}, Lcom/iMe/ui/custom/StakingPrognosisView;->setupColors()V

    return-void
.end method
