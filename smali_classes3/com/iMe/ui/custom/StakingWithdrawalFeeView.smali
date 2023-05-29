.class public final Lcom/iMe/ui/custom/StakingWithdrawalFeeView;
.super Landroid/widget/FrameLayout;
.source "StakingWithdrawalFeeView.kt"


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;


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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;

    .line 23
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;->setupView()V

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

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final setupTexts()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;

    .line 54
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->textFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/messenger/R$string;->staking_withdraw_fee_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->textTimeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_time_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;->setupColors()V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;->setupTexts()V

    .line 49
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final setupColors()V
    .locals 7

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;

    .line 37
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/widget/TextView;

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->textFeeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "textFeeTitle"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->textTimeTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v6, "textTimeTitle"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    .line 38
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    new-array v2, v2, [Landroid/widget/TextView;

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->textFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "textFeeValue"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v2, v5

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->textTimeValue:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "textTimeValue"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    return-void
.end method

.method public final setupViewData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "feeValueText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeValueText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;

    .line 30
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->textFeeValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingWithdrawalFeeBinding;->textTimeValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
