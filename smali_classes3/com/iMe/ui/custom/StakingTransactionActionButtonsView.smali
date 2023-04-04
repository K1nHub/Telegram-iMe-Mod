.class public final Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;
.super Landroid/widget/FrameLayout;
.source "StakingTransactionActionButtonsView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingTransactionActionButtonsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingTransactionActionButtonsView.kt\ncom/iMe/ui/custom/StakingTransactionActionButtonsView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,88:1\n262#2,2:89\n262#2,2:91\n*S KotlinDebug\n*F\n+ 1 StakingTransactionActionButtonsView.kt\ncom/iMe/ui/custom/StakingTransactionActionButtonsView\n*L\n47#1:89,2\n51#1:91,2\n*E\n"
.end annotation


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

.field private final cornerRadius$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$lLi2AXkjwuka8mtqSyPJFWijUdE(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->setupViewData$lambda$6$lambda$3$lambda$2(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$letIqSzm25zE_AAoIw5UHrVA8wc(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->setupViewData$lambda$6$lambda$5$lambda$4(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mvbjpG5SIYmUTY7zmTmnQxur1qQ(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->setupViewData$lambda$6$lambda$1$lambda$0(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    sget-object p2, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$cornerRadius$2;->INSTANCE:Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$cornerRadius$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->cornerRadius$delegate:Lkotlin/Lazy;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->setupView()V

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

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getCornerRadius()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->cornerRadius$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final setupView()V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->setupColors()V

    .line 78
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    .line 79
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonAction:Lcom/iMe/ui/custom/BigActionButton;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/iMe/ui/custom/ActionButton;->setForcedCustomHeight(I)V

    .line 80
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonConditions:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/messenger/R$string;->staking_deposit_conditions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonApproveInfo:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static final setupViewData$lambda$6$lambda$1$lambda$0(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onActionClickAction"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method private static final setupViewData$lambda$6$lambda$3$lambda$2(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onApproveInfoClickAction"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method private static final setupViewData$lambda$6$lambda$5$lambda$4(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onConditionsClickAction"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method


# virtual methods
.method public final setupColors()V
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    .line 59
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonAction:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    .line 60
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonConditions:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "windowBackgroundWhiteBlueText"

    .line 61
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->getCornerRadius()I

    move-result v2

    const-string v3, "listSelectorSDK21"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "setupColors$lambda$9$lambda$7"

    .line 63
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 65
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonApproveInfo:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "windowBackgroundWhiteGrayText4"

    .line 66
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->getCornerRadius()I

    move-result v1

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setupViewData(Ljava/lang/String;ZZLcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    const-string v0, "actionText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onActionClickAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onConditionsClickAction"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onApproveInfoClickAction"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    .line 42
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonAction:Lcom/iMe/ui/custom/BigActionButton;

    .line 43
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    new-instance p1, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p4}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonApproveInfo:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p4, "setupViewData$lambda$6$lambda$3"

    .line 47
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p4, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p4

    .line 262
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    new-instance v2, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p6}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonConditions:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p6, "setupViewData$lambda$6$lambda$5"

    .line 51
    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-eqz p2, :cond_2

    move p4, v1

    .line 262
    :cond_2
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    new-instance p2, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p5}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
