.class public final Lcom/iMe/ui/custom/StakingDashboardView;
.super Landroid/widget/FrameLayout;
.source "StakingDashboardView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingDashboardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingDashboardView.kt\ncom/iMe/ui/custom/StakingDashboardView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,208:1\n56#2,6:209\n4#3:215\n5#3,2:218\n2634#4:216\n1#5:217\n37#6,2:220\n*S KotlinDebug\n*F\n+ 1 StakingDashboardView.kt\ncom/iMe/ui/custom/StakingDashboardView\n*L\n33#1:209,6\n78#1:215\n78#1:218,2\n78#1:216\n78#1:217\n136#1:220,2\n*E\n"
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

.field private onCalculatorClick:Lcom/iMe/fork/utils/Callbacks$Callback;

.field private onHistoryClick:Lcom/iMe/fork/utils/Callbacks$Callback;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$QB5Dz0byN5CL5GVdktIAaD6FXVE()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/custom/StakingDashboardView;->onCalculatorClick$lambda$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y_jlceuxz76nVt00t7b17HdL2ZU()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/custom/StakingDashboardView;->onHistoryClick$lambda$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/StakingDashboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/custom/StakingDashboardView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/ui/custom/StakingDashboardView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/iMe/ui/custom/StakingDashboardView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingDashboardView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    .line 37
    sget-object p1, Lcom/iMe/ui/custom/StakingDashboardView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/ui/custom/StakingDashboardView$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingDashboardView;->onCalculatorClick:Lcom/iMe/fork/utils/Callbacks$Callback;

    .line 38
    sget-object p1, Lcom/iMe/ui/custom/StakingDashboardView$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/ui/custom/StakingDashboardView$$ExternalSyntheticLambda1;

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingDashboardView;->onHistoryClick:Lcom/iMe/fork/utils/Callbacks$Callback;

    .line 41
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingDashboardView;->setupView()V

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

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/StakingDashboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getOnCalculatorClick$p(Lcom/iMe/ui/custom/StakingDashboardView;)Lcom/iMe/fork/utils/Callbacks$Callback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/ui/custom/StakingDashboardView;->onCalculatorClick:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-object p0
.end method

.method public static final synthetic access$getOnHistoryClick$p(Lcom/iMe/ui/custom/StakingDashboardView;)Lcom/iMe/fork/utils/Callbacks$Callback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/ui/custom/StakingDashboardView;->onHistoryClick:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-object p0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingDashboardView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private static final onCalculatorClick$lambda$0()V
    .locals 0

    return-void
.end method

.method private static final onHistoryClick$lambda$1()V
    .locals 0

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/iMe/ui/custom/StakingDashboardView;->setupColors()V

    .line 176
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingDashboardView;->setupViews()V

    .line 178
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingDashboardView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final setupViewData(FF)V
    .locals 11

    .line 103
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingDashboardView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    .line 104
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewDiagram:Lorg/telegram/ui/Components/StorageDiagramView;

    add-float v2, p1, p2

    .line 106
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const/16 v3, 0x10

    new-array v6, v3, [Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    :goto_0
    if-ge v4, v3, :cond_0

    .line 110
    new-instance v7, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    invoke-direct {v7, v5}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    const/high16 v8, 0x3fc00000    # 1.5f

    .line 111
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setStrokeWidth(F)V

    const-wide/16 v8, 0x1

    .line 112
    invoke-virtual {v7, v8, v9}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setSize(J)V

    .line 113
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    iput v8, v7, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->colorKey:I

    .line 114
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 110
    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/Components/StorageDiagramView;->setData(Lorg/telegram/ui/Storage/CacheModel;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    const/4 v3, 0x6

    .line 117
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/StorageDiagramView;->setArcDrawingRadianOffset(I)V

    goto :goto_1

    .line 121
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    cmpl-float v7, p2, v6

    const/4 v8, 0x3

    if-lez v7, :cond_2

    .line 123
    new-instance v7, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    invoke-direct {v7, v5}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    .line 124
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setStrokeWidth(F)V

    float-to-double v9, p2

    .line 125
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setSizeAsDouble(Ljava/lang/Double;)V

    .line 126
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    iput v9, v7, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->colorKey:I

    .line 123
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    cmpl-float v6, p1, v6

    if-lez v6, :cond_3

    .line 130
    new-instance v6, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    .line 131
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setStrokeWidth(F)V

    float-to-double v7, p1

    .line 132
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setSizeAsDouble(Ljava/lang/Double;)V

    .line 133
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_blue:I

    iput v7, v6, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->colorKey:I

    .line 130
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_3
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-array v6, v4, [Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    .line 38
    invoke-interface {v3, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    .line 119
    invoke-virtual {v1, v5, v3}, Lorg/telegram/ui/Components/StorageDiagramView;->setData(Lorg/telegram/ui/Storage/CacheModel;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    .line 138
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/StorageDiagramView;->setArcDrawingRadianOffset(I)V

    .line 141
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x7e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatShortFiatBalance(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/StorageDiagramView;->setCustomCenterText(Ljava/lang/String;)V

    .line 144
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textStakedValue:Landroid/widget/TextView;

    .line 145
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 146
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 144
    invoke-virtual {v4, p1, v3}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatFiatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textProfitValue:Landroid/widget/TextView;

    .line 149
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    .line 150
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 148
    invoke-virtual {v4, p2, v0}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatFiatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupViews()V
    .locals 18

    move-object/from16 v0, p0

    .line 182
    iget-object v1, v0, Lcom/iMe/ui/custom/StakingDashboardView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    .line 183
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textHeader:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/custom/StakingDashboardView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->staking_dashboard_header:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewDiagram:Lorg/telegram/ui/Components/StorageDiagramView;

    const/16 v3, 0x4b

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/StorageDiagramView;->setCustomSize(I)V

    .line 185
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textStakedTitle:Landroid/widget/TextView;

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/custom/StakingDashboardView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->staking_dashboard_staked_title:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textProfitTitle:Landroid/widget/TextView;

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/custom/StakingDashboardView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->staking_dashboard_profit_title:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 191
    new-instance v10, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 192
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_wallet_staking_dashboard_calculator:I

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/custom/StakingDashboardView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$string;->staking_dashboard_calculator:I

    invoke-interface {v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 190
    new-instance v7, Lcom/iMe/ui/custom/StakingDashboardView$setupViews$1$1;

    invoke-direct {v7, v0}, Lcom/iMe/ui/custom/StakingDashboardView$setupViews$1$1;-><init>(Lcom/iMe/ui/custom/StakingDashboardView;)V

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, v10

    .line 191
    invoke-direct/range {v3 .. v9}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    aput-object v10, v2, v3

    .line 195
    new-instance v3, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 196
    sget v12, Lorg/telegram/messenger/R$drawable;->fork_wallet_staking_dashboard_history:I

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/custom/StakingDashboardView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->staking_dashboard_history:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 190
    new-instance v15, Lcom/iMe/ui/custom/StakingDashboardView$setupViews$1$2;

    invoke-direct {v15, v0}, Lcom/iMe/ui/custom/StakingDashboardView$setupViews$1$2;-><init>(Lcom/iMe/ui/custom/StakingDashboardView;)V

    const/4 v14, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v11, v3

    .line 195
    invoke-direct/range {v11 .. v17}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 190
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Lcom/iMe/ui/custom/HorizontalActionButtonsView;->initButtons(Ljava/util/List;)V

    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/custom/StakingDashboardView;->showLoading()V

    return-void
.end method

.method private final showLoading()V
    .locals 7

    .line 156
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingDashboardView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    .line 157
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewDiagram:Lorg/telegram/ui/Components/StorageDiagramView;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    .line 160
    new-instance v3, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;-><init>(Lorg/telegram/ui/Components/StorageDiagramView;)V

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 161
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setStrokeWidth(F)V

    const-wide/16 v5, 0x1

    .line 162
    invoke-virtual {v3, v5, v6}, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->setSize(J)V

    .line 163
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    iput v5, v3, Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;->colorKey:I

    .line 164
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 158
    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Components/StorageDiagramView;->setData(Lorg/telegram/ui/Storage/CacheModel;[Lorg/telegram/ui/Components/StorageDiagramView$ClearViewData;)V

    .line 166
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/StorageDiagramView;->setArcDrawingRadianOffset(I)V

    const-string v2, "_"

    .line 167
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/StorageDiagramView;->setCustomCenterText(Ljava/lang/String;)V

    .line 169
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textStakedValue:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingDashboardView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->common_progress_state_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textProfitValue:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingDashboardView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 26
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final setupColors()V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingDashboardView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;

    .line 66
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 67
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textHeader:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "setupColors$lambda$6$lambda$3"

    .line 69
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 71
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->cardStakingDashboard:Landroidx/cardview/widget/CardView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 72
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewDiagram:Lorg/telegram/ui/Components/StorageDiagramView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 74
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/widget/TextView;

    .line 75
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textStakedTitle:Landroid/widget/TextView;

    const-string v5, "textStakedTitle"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 76
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textProfitTitle:Landroid/widget/TextView;

    const-string v6, "textProfitTitle"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 73
    invoke-static {v1, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColorKey(I[Landroid/widget/TextView;)V

    new-array v1, v2, [Landroid/widget/TextView;

    .line 78
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textStakedValue:Landroid/widget/TextView;

    aput-object v2, v1, v5

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->textProfitValue:Landroid/widget/TextView;

    aput-object v2, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroid/widget/TextView;

    .line 79
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "setupColors$lambda$6$lambda$4"

    .line 80
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewStakedDot:Landroid/view/View;

    const/4 v2, 0x6

    .line 83
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 84
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_blue:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    .line 82
    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->viewProfitDot:Landroid/view/View;

    .line 87
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 88
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    .line 86
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->divider:Lcom/iMe/ui/custom/DividerView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 91
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingDashboardBinding;->horizontalActionButtons:Lcom/iMe/ui/custom/HorizontalActionButtonsView;

    .line 92
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 93
    invoke-virtual {v0}, Lcom/iMe/ui/custom/HorizontalActionButtonsView;->setupColors()V

    return-void
.end method

.method public final setupItem(Lcom/iMe/model/staking/StakingDashboardItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    instance-of v0, p1, Lcom/iMe/model/staking/StakingDashboardItem$Data;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/model/staking/StakingDashboardItem$Data;

    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingDashboardItem$Data;->getStaked()F

    move-result v0

    invoke-virtual {p1}, Lcom/iMe/model/staking/StakingDashboardItem$Data;->getProfit()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/iMe/ui/custom/StakingDashboardView;->setupViewData(FF)V

    goto :goto_0

    .line 50
    :cond_0
    instance-of p1, p1, Lcom/iMe/model/staking/StakingDashboardItem$Loading;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingDashboardView;->showLoading()V

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/iMe/ui/custom/StakingDashboardView;->setupColors()V

    return-void
.end method

.method public final setupListeners(Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "onCalculatorClickAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onHistoryClickAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/iMe/ui/custom/StakingDashboardView;->onCalculatorClick:Lcom/iMe/fork/utils/Callbacks$Callback;

    .line 61
    iput-object p2, p0, Lcom/iMe/ui/custom/StakingDashboardView;->onHistoryClick:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-void
.end method
