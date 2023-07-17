.class public final Lcom/iMe/ui/custom/FeeView;
.super Landroid/widget/FrameLayout;
.source "FeeView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/custom/FeeView$ChooseFeeType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeeView.kt\ncom/iMe/ui/custom/FeeView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,173:1\n56#2,6:174\n*S KotlinDebug\n*F\n+ 1 FeeView.kt\ncom/iMe/ui/custom/FeeView\n*L\n31#1:174,6\n*E\n"
.end annotation


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private mvpBottomSheet:Lcom/iMe/ui/base/mvp/MvpBottomSheet;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$TPkRiaw2B2Tsv0JRLCIAQ5oEn9Q(Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/custom/FeeView;->configureCustomFeeChooser$lambda$2$lambda$1(Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rA8BfL9skrNq8hjmQx7XvIlO04I(Lcom/iMe/ui/custom/FeeView;Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/custom/FeeView;->configureDefaultFeeChooser$lambda$4$lambda$3(Lcom/iMe/ui/custom/FeeView;Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/FeeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/FeeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/custom/FeeView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/ui/custom/FeeView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/iMe/ui/custom/FeeView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    .line 39
    invoke-direct {p0}, Lcom/iMe/ui/custom/FeeView;->setupView()V

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

    .line 24
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/FeeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$displayFee(Lcom/iMe/ui/custom/FeeView;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/iMe/ui/custom/FeeView;->displayFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method

.method private final configureCustomFeeChooser(Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    .line 88
    invoke-virtual {p1}, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;->getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iMe/ui/custom/FeeView;->displayFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    .line 89
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/custom/FeeView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/iMe/ui/custom/FeeView$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final configureCustomFeeChooser$lambda$2$lambda$1(Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;Landroid/view/View;)V
    .locals 0

    const-string p1, "$type"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;->getOnChooseFee()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final configureDefaultFeeChooser(Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;)V
    .locals 3

    .line 94
    invoke-virtual {p1}, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/mapper/crypto/FeeUiMappingKt;->mapToUiFees(Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/util/List;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/iMe/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    .line 97
    invoke-virtual {p1}, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/iMe/ui/custom/FeeView;->displayFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    .line 98
    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/custom/FeeView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/iMe/ui/custom/FeeView$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/custom/FeeView;Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final configureDefaultFeeChooser$lambda$4$lambda$3(Lcom/iMe/ui/custom/FeeView;Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;Ljava/util/List;Landroid/view/View;)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$type"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$fees"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->getModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object p3

    .line 102
    invoke-virtual {p1}, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 103
    invoke-virtual {p1}, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->getOnFeeSelectedAction()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 99
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/iMe/ui/custom/FeeView;->showFeeDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final configureViewForType(Lcom/iMe/ui/custom/FeeView$ChooseFeeType;)V
    .locals 1

    .line 81
    instance-of v0, p1, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;

    invoke-direct {p0, p1}, Lcom/iMe/ui/custom/FeeView;->configureCustomFeeChooser(Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;)V

    goto :goto_0

    .line 82
    :cond_0
    instance-of v0, p1, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;

    invoke-direct {p0, p1}, Lcom/iMe/ui/custom/FeeView;->configureDefaultFeeChooser(Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final displayFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 10

    .line 110
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    .line 111
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/FeeView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 112
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_price_value:I

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 113
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getFee()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 114
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 115
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getFeeInFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    aput-object v5, v4, v9

    .line 116
    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    .line 111
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textTimeValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/FeeView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_duration_value:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->getDuration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setupTexts()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    .line 150
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/FeeView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_price:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textTimeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/FeeView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_duration:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/iMe/ui/custom/FeeView;->setupColors()V

    .line 144
    invoke-direct {p0}, Lcom/iMe/ui/custom/FeeView;->setupTexts()V

    .line 145
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final showFeeDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/util/List;ILkotlin/jvm/functions/Function1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/iMe/ui/custom/FeeView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 128
    new-instance v7, Lcom/iMe/ui/custom/FeeView$showFeeDialog$dialog$1;

    invoke-direct {v7, p2, p4, p0}, Lcom/iMe/ui/custom/FeeView$showFeeDialog$dialog$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/iMe/ui/custom/FeeView;)V

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v9}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createTwoLineSingleChooserDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/model/dialog/DialogModel;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/util/List;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object p2, p0, Lcom/iMe/ui/custom/FeeView;->mvpBottomSheet:Lcom/iMe/ui/base/mvp/MvpBottomSheet;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/iMe/ui/custom/FeeView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 24
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/ui/custom/FeeView$ChooseFeeType;)V
    .locals 1

    const-string v0, "baseFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mvpBottomSheet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/iMe/ui/custom/FeeView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 51
    iput-object p2, p0, Lcom/iMe/ui/custom/FeeView;->mvpBottomSheet:Lcom/iMe/ui/base/mvp/MvpBottomSheet;

    .line 52
    invoke-direct {p0, p3}, Lcom/iMe/ui/custom/FeeView;->configureViewForType(Lcom/iMe/ui/custom/FeeView$ChooseFeeType;)V

    return-void
.end method

.method public final init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/ui/custom/FeeView$ChooseFeeType;)V
    .locals 1

    const-string v0, "baseFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/iMe/ui/custom/FeeView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 46
    invoke-direct {p0, p2}, Lcom/iMe/ui/custom/FeeView;->configureViewForType(Lcom/iMe/ui/custom/FeeView$ChooseFeeType;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/iMe/ui/custom/FeeView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method public final setSelectedFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 1

    const-string v0, "selectedFee"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/iMe/ui/custom/FeeView;->displayFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method

.method public final setupColors()V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    .line 61
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/widget/TextView;

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "textFeeValue"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textTimeValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v6, "textTimeValue"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    .line 62
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    new-array v2, v2, [Landroid/widget/TextView;

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "textFeeTitle"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v2, v5

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textTimeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "textTimeTitle"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    return-void
.end method
