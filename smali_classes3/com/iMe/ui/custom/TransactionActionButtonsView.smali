.class public final Lcom/iMe/ui/custom/TransactionActionButtonsView;
.super Landroid/widget/FrameLayout;
.source "TransactionActionButtonsView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionActionButtonsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionActionButtonsView.kt\ncom/iMe/ui/custom/TransactionActionButtonsView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,119:1\n56#2,6:120\n262#3,2:126\n262#3,2:128\n262#3,2:130\n262#3,2:132\n*S KotlinDebug\n*F\n+ 1 TransactionActionButtonsView.kt\ncom/iMe/ui/custom/TransactionActionButtonsView\n*L\n27#1:120,6\n58#1:126,2\n62#1:128,2\n70#1:130,2\n71#1:132,2\n*E\n"
.end annotation


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

.field private final cornerRadius$delegate:Lkotlin/Lazy;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2rrltlysQjF0lOkLexj4yYB4KWo()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupViewData$lambda$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$tDl5M2z8zsAK7uxocva4mCsrGyY()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupViewData$lambda$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zJd7IgZ9iMQhnvvtObD01mHSMa0()V
    .locals 0

    invoke-static {}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupViewData$lambda$1()V

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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/TransactionActionButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/TransactionActionButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/custom/TransactionActionButtonsView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/ui/custom/TransactionActionButtonsView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/iMe/ui/custom/TransactionActionButtonsView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 29
    sget-object p2, Lcom/iMe/ui/custom/TransactionActionButtonsView$cornerRadius$2;->INSTANCE:Lcom/iMe/ui/custom/TransactionActionButtonsView$cornerRadius$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/custom/TransactionActionButtonsView;->cornerRadius$delegate:Lkotlin/Lazy;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 30
    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    move-result-object p1

    const-string p2, "inflate(\n        LayoutI\u2026later.from(context)\n    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/TransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    .line 35
    invoke-direct {p0}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupView()V

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

    .line 21
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/TransactionActionButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getCornerRadius()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/custom/TransactionActionButtonsView;->cornerRadius$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/custom/TransactionActionButtonsView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setupView()V
    .locals 4

    .line 107
    invoke-virtual {p0}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupColors()V

    .line 108
    iget-object v0, p0, Lcom/iMe/ui/custom/TransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    .line 109
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonConditions:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 110
    sget v3, Lorg/telegram/messenger/R$string;->staking_deposit_conditions:I

    .line 109
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonApproveInfo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    .line 113
    sget v2, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve:I

    .line 112
    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/iMe/ui/custom/TransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic setupViewData$default(Lcom/iMe/ui/custom/TransactionActionButtonsView;Ljava/lang/String;ZZZLcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, p4

    :goto_2
    and-int/lit8 v3, p8, 0x10

    if-eqz v3, :cond_3

    .line 47
    sget-object v3, Lcom/iMe/ui/custom/TransactionActionButtonsView$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/ui/custom/TransactionActionButtonsView$$ExternalSyntheticLambda1;

    goto :goto_3

    :cond_3
    move-object v3, p5

    :goto_3
    and-int/lit8 v4, p8, 0x20

    if-eqz v4, :cond_4

    .line 48
    sget-object v4, Lcom/iMe/ui/custom/TransactionActionButtonsView$$ExternalSyntheticLambda2;->INSTANCE:Lcom/iMe/ui/custom/TransactionActionButtonsView$$ExternalSyntheticLambda2;

    goto :goto_4

    :cond_4
    move-object v4, p6

    :goto_4
    and-int/lit8 v5, p8, 0x40

    if-eqz v5, :cond_5

    .line 49
    sget-object v5, Lcom/iMe/ui/custom/TransactionActionButtonsView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/ui/custom/TransactionActionButtonsView$$ExternalSyntheticLambda0;

    goto :goto_5

    :cond_5
    move-object v5, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move p4, v0

    move p5, v1

    move p6, v2

    move-object p7, v3

    move-object p8, v4

    move-object p9, v5

    .line 42
    invoke-virtual/range {p2 .. p9}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupViewData(Ljava/lang/String;ZZZLcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final setupViewData$lambda$0()V
    .locals 0

    return-void
.end method

.method private static final setupViewData$lambda$1()V
    .locals 0

    return-void
.end method

.method private static final setupViewData$lambda$2()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 21
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final performActionButtonClick()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/custom/TransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonAction:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method

.method public final setActionButtonEnabled(Z)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/iMe/ui/custom/TransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonAction:Lcom/iMe/ui/custom/BigActionButton;

    const-string v1, "binding.buttonAction"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method public final setActionButtonText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/iMe/ui/custom/TransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonAction:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setApproveInfoButtonVisibility(Z)V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/custom/TransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    .line 70
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonApproveInfo:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "buttonApproveInfo"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 262
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonConditions:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "buttonConditions"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 262
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setupColors()V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/iMe/ui/custom/TransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    .line 85
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonAction:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    .line 86
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonConditions:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    invoke-direct {p0}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->getCornerRadius()I

    move-result v2

    .line 91
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    .line 88
    invoke-static {v2, v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "setupColors$lambda$10$lambda$8"

    .line 93
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 95
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonApproveInfo:Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-direct {p0}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->getCornerRadius()I

    move-result v1

    .line 100
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 97
    invoke-static {v1, v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setupViewData(Ljava/lang/String;ZZZLcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 13

    move-object v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    const-string v4, "actionText"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onActionClickAction"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onConditionsClickAction"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "onApproveInfoClickAction"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    .line 51
    iget-object v5, v4, Lcom/iMe/ui/custom/TransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    .line 52
    iget-object v12, v5, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonAction:Lcom/iMe/ui/custom/BigActionButton;

    .line 53
    invoke-virtual {v12, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "setupViewData$lambda$6$lambda$3"

    .line 54
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/iMe/ui/custom/TransactionActionButtonsView$setupViewData$4$1$1;

    invoke-direct {v9, v1}, Lcom/iMe/ui/custom/TransactionActionButtonsView$setupViewData$4$1$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, v12

    invoke-static/range {v6 .. v11}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    move v0, p2

    .line 55
    invoke-static {v12, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setEnabledWithAlpha(Landroid/view/View;Z)V

    .line 57
    iget-object v6, v5, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonApproveInfo:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "setupViewData$lambda$6$lambda$4"

    .line 58
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v0

    .line 262
    :goto_0
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v7, 0x0

    .line 59
    new-instance v9, Lcom/iMe/ui/custom/TransactionActionButtonsView$setupViewData$4$2$1;

    invoke-direct {v9, v3}, Lcom/iMe/ui/custom/TransactionActionButtonsView$setupViewData$4$2$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 61
    iget-object v3, v5, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonConditions:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "setupViewData$lambda$6$lambda$5"

    .line 62
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eqz v5, :cond_2

    move v0, v1

    .line 262
    :cond_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v0, 0x0

    .line 63
    new-instance v5, Lcom/iMe/ui/custom/TransactionActionButtonsView$setupViewData$4$3$1;

    invoke-direct {v5, v2}, Lcom/iMe/ui/custom/TransactionActionButtonsView$setupViewData$4$3$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object p1, v3

    move-wide p2, v0

    move-object/from16 p4, v5

    move/from16 p5, v2

    move-object/from16 p6, v6

    invoke-static/range {p1 .. p6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
