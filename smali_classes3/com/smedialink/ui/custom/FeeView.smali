.class public final Lcom/smedialink/ui/custom/FeeView;
.super Landroid/widget/FrameLayout;
.source "FeeView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeeView.kt\ncom/smedialink/ui/custom/FeeView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,173:1\n56#2,6:174\n*S KotlinDebug\n*F\n+ 1 FeeView.kt\ncom/smedialink/ui/custom/FeeView\n*L\n31#1:174,6\n*E\n"
.end annotation


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private mvpBottomSheet:Lcom/smedialink/ui/base/mvp/MvpBottomSheet;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$4cn5v5kumI3qZ7PAqOKXQdaeI_o(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Custom;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/custom/FeeView;->configureCustomFeeChooser$lambda-2$lambda-1(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Custom;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oVQus4X4sT-rcRAU5Bra2STF_FI(Lcom/smedialink/ui/custom/FeeView;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/FeeView;->configureDefaultFeeChooser$lambda-4$lambda-3(Lcom/smedialink/ui/custom/FeeView;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;Ljava/util/List;Landroid/view/View;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/FeeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/FeeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    new-instance p3, Lcom/smedialink/ui/custom/FeeView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/smedialink/ui/custom/FeeView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/smedialink/ui/custom/FeeView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    .line 39
    invoke-direct {p0}, Lcom/smedialink/ui/custom/FeeView;->setupView()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/FeeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$displayFee(Lcom/smedialink/ui/custom/FeeView;Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/smedialink/ui/custom/FeeView;->displayFee(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method

.method private final configureCustomFeeChooser(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Custom;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/smedialink/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    .line 88
    invoke-virtual {p1}, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Custom;->getSelectedFee()Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/smedialink/ui/custom/FeeView;->displayFee(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V

    .line 89
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/custom/FeeView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/smedialink/ui/custom/FeeView$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Custom;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final configureCustomFeeChooser$lambda-2$lambda-1(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Custom;Landroid/view/View;)V
    .locals 0

    const-string p1, "$type"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Custom;->getOnChooseFee()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final configureDefaultFeeChooser(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;)V
    .locals 3

    .line 94
    invoke-virtual {p1}, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;->getTransactionParams()Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;->getFeeTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/mapper/crypto/FeeUiMappingKt;->mapToUiFees(Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;)Ljava/util/List;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/smedialink/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    .line 97
    invoke-virtual {p1}, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;->getSelectedFee()Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smedialink/ui/custom/FeeView;->displayFee(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V

    .line 98
    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/smedialink/ui/custom/FeeView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/smedialink/ui/custom/FeeView$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/custom/FeeView;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final configureDefaultFeeChooser$lambda-4$lambda-3(Lcom/smedialink/ui/custom/FeeView;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;Ljava/util/List;Landroid/view/View;)V
    .locals 1

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$type"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$fees"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;->getModel()Lcom/smedialink/model/dialog/DialogModel;

    move-result-object p3

    .line 102
    invoke-virtual {p1}, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;->getSelectedFee()Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 103
    invoke-virtual {p1}, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;->getOnFeeSelectedAction()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 99
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/smedialink/ui/custom/FeeView;->showFeeDialog(Lcom/smedialink/model/dialog/DialogModel;Ljava/util/List;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final configureViewForType(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;)V
    .locals 1

    .line 81
    instance-of v0, p1, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Custom;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Custom;

    invoke-direct {p0, p1}, Lcom/smedialink/ui/custom/FeeView;->configureCustomFeeChooser(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Custom;)V

    goto :goto_0

    .line 82
    :cond_0
    instance-of v0, p1, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;

    invoke-direct {p0, p1}, Lcom/smedialink/ui/custom/FeeView;->configureDefaultFeeChooser(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType$Default;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final displayFee(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 10

    .line 110
    iget-object v0, p0, Lcom/smedialink/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    .line 111
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/smedialink/ui/custom/FeeView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 112
    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_price_value:I

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 113
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getFee()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getFeeTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v6

    invoke-static {v5, v6}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 114
    invoke-direct {p0}, Lcom/smedialink/ui/custom/FeeView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getFeeTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v7

    invoke-interface {v5, v7}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 115
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getFeeInDollars()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    sget-object v8, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat;->getDecimals()I

    move-result v9

    invoke-static {v5, v9}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    aput-object v5, v4, v9

    .line 116
    invoke-direct {p0}, Lcom/smedialink/ui/custom/FeeView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v5

    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat;->getShortName()I

    move-result v8

    invoke-interface {v5, v8}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    .line 111
    invoke-interface {v2, v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textTimeValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/smedialink/ui/custom/FeeView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_duration_value:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;->getInfo()Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->getDuration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/smedialink/ui/custom/FeeView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setupTexts()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/smedialink/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    .line 150
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/smedialink/ui/custom/FeeView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_price:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textTimeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/smedialink/ui/custom/FeeView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_fee_duration:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/FeeView;->setupColors()V

    .line 144
    invoke-direct {p0}, Lcom/smedialink/ui/custom/FeeView;->setupTexts()V

    .line 145
    iget-object v0, p0, Lcom/smedialink/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final showFeeDialog(Lcom/smedialink/model/dialog/DialogModel;Ljava/util/List;ILkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/dialog/DialogModel;",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;",
            ">;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/smedialink/ui/custom/FeeView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v10, 0x0

    if-nez v0, :cond_0

    move-object p1, v10

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/custom/FeeView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 128
    new-instance v7, Lcom/smedialink/ui/custom/FeeView$showFeeDialog$dialog$1;

    invoke-direct {v7, p2, p4, p0}, Lcom/smedialink/ui/custom/FeeView$showFeeDialog$dialog$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/smedialink/ui/custom/FeeView;)V

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v9}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createTwoLineSingleChooserDialog$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/model/dialog/DialogModel;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/util/List;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 139
    :cond_1
    iget-object p2, p0, Lcom/smedialink/ui/custom/FeeView;->mvpBottomSheet:Lcom/smedialink/ui/base/mvp/MvpBottomSheet;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p1}, Lcom/smedialink/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v10

    :goto_1
    if-nez v10, :cond_4

    iget-object p2, p0, Lcom/smedialink/ui/custom/FeeView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_4
    :goto_2
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

.method public final init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/ui/base/mvp/MvpBottomSheet;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;)V
    .locals 1

    const-string v0, "baseFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mvpBottomSheet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/smedialink/ui/custom/FeeView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 51
    iput-object p2, p0, Lcom/smedialink/ui/custom/FeeView;->mvpBottomSheet:Lcom/smedialink/ui/base/mvp/MvpBottomSheet;

    .line 52
    invoke-direct {p0, p3}, Lcom/smedialink/ui/custom/FeeView;->configureViewForType(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;)V

    return-void
.end method

.method public final init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;)V
    .locals 1

    const-string v0, "baseFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/smedialink/ui/custom/FeeView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 46
    invoke-direct {p0, p2}, Lcom/smedialink/ui/custom/FeeView;->configureViewForType(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/smedialink/ui/custom/FeeView;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method public final setSelectedFee(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 1

    const-string v0, "selectedFee"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/smedialink/ui/custom/FeeView;->displayFee(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method

.method public final setupColors()V
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/smedialink/ui/custom/FeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentFeeBinding;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/widget/TextView;

    .line 61
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "textFeeValue"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textTimeValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "textTimeValue"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "chat_messagePanelText"

    invoke-static {v3, v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setTextsColor(Ljava/lang/String;[Landroid/widget/TextView;)V

    new-array v1, v1, [Landroid/widget/TextView;

    .line 62
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "textFeeTitle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v4

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentFeeBinding;->textTimeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "textTimeTitle"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v1, v5

    const-string v0, "windowBackgroundWhiteGrayText4"

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setTextsColor(Ljava/lang/String;[Landroid/widget/TextView;)V

    return-void
.end method
