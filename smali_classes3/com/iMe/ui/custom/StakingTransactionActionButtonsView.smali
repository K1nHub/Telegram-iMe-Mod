.class public final Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;
.super Landroid/widget/FrameLayout;
.source "StakingTransactionActionButtonsView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingTransactionActionButtonsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingTransactionActionButtonsView.kt\ncom/iMe/ui/custom/StakingTransactionActionButtonsView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,89:1\n262#2,2:90\n262#2,2:92\n*S KotlinDebug\n*F\n+ 1 StakingTransactionActionButtonsView.kt\ncom/iMe/ui/custom/StakingTransactionActionButtonsView\n*L\n48#1:90,2\n52#1:92,2\n*E\n"
.end annotation


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

.field private final cornerRadius$delegate:Lkotlin/Lazy;


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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    sget-object p2, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$cornerRadius$2;->INSTANCE:Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$cornerRadius$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->cornerRadius$delegate:Lkotlin/Lazy;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    .line 29
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

    .line 18
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getCornerRadius()I
    .locals 1

    .line 25
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

    .line 78
    invoke-virtual {p0}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->setupColors()V

    .line 79
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    .line 80
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonAction:Lcom/iMe/ui/custom/BigActionButton;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/iMe/ui/custom/ActionButton;->setForcedCustomHeight(I)V

    .line 81
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonConditions:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/messenger/R$string;->staking_deposit_conditions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonApproveInfo:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_what_is_approve:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final setupColors()V
    .locals 6

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    .line 60
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonAction:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    .line 61
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonConditions:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->getCornerRadius()I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "setupColors$lambda$6$lambda$4"

    .line 64
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 66
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonApproveInfo:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->getCornerRadius()I

    move-result v1

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

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

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;

    .line 43
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonAction:Lcom/iMe/ui/custom/BigActionButton;

    .line 44
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "setupViewData$lambda$3$lambda$0"

    .line 45
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$setupViewData$1$1$1;

    invoke-direct {p1, p4}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$setupViewData$1$1$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-static {v1, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMixedClickListener(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 47
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonApproveInfo:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p4, "setupViewData$lambda$3$lambda$1"

    .line 48
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

    .line 49
    new-instance v2, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$setupViewData$1$2$1;

    invoke-direct {v2, p6}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$setupViewData$1$2$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-static {p1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMixedClickListener(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 51
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingTransactionActionsBinding;->buttonConditions:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p6, "setupViewData$lambda$3$lambda$2"

    .line 52
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

    .line 53
    new-instance p2, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$setupViewData$1$3$1;

    invoke-direct {p2, p5}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView$setupViewData$1$3$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-static {p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMixedClickListener(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
