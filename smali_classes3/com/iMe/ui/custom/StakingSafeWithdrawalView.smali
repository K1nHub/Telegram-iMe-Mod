.class public final Lcom/iMe/ui/custom/StakingSafeWithdrawalView;
.super Landroid/widget/FrameLayout;
.source "StakingSafeWithdrawalView.kt"


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;


# direct methods
.method public static synthetic $r8$lambda$69gHPannAmqQhlzrP_3q1rhtFTQ(Lorg/telegram/ui/Components/CheckBoxSquare;Lcom/iMe/fork/utils/Callbacks$Callback1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;->setupViewData$lambda$3$lambda$1$lambda$0(Lorg/telegram/ui/Components/CheckBoxSquare;Lcom/iMe/fork/utils/Callbacks$Callback1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BHGOLDEq3nJRTGoWFRjFzRpjg08(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;->setupViewData$lambda$3$lambda$2(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    .line 26
    invoke-direct {p0}, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;->setupView()V

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

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final setupView()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;->setupColors()V

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->textSafeWithdrawal:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_safe_withdrawal:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static final setupViewData$lambda$3$lambda$1$lambda$0(Lorg/telegram/ui/Components/CheckBoxSquare;Lcom/iMe/fork/utils/Callbacks$Callback1;Landroid/view/View;)V
    .locals 1

    const-string p2, "$this_with"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$onCheckedAction"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2, v0}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    .line 41
    invoke-virtual {p0}, Lorg/telegram/ui/Components/CheckBoxSquare;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private static final setupViewData$lambda$3$lambda$2(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onInfoClickAction"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method


# virtual methods
.method public final setupColors()V
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    .line 50
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->checkboxSafeWithdrawal:Lorg/telegram/ui/Components/CheckBoxSquare;

    .line 51
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareUnchecked:I

    .line 52
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareBackground:I

    .line 53
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxSquareCheck:I

    .line 50
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/CheckBoxSquare;->setColors(III)V

    .line 55
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->textSafeWithdrawal:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->imageHelp:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "setupColors$lambda$5$lambda$4"

    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 58
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setBoundedCircleRippleBackground(Landroid/view/View;)V

    return-void
.end method

.method public final setupViewData(ZLcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/iMe/fork/utils/Callbacks$Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "onCheckedAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onInfoClickAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    .line 37
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->checkboxSafeWithdrawal:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    .line 39
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->linearSafeWithdrawal:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string v2, "linearSafeWithdrawal"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/iMe/ui/custom/StakingSafeWithdrawalView$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p2}, Lcom/iMe/ui/custom/StakingSafeWithdrawalView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/CheckBoxSquare;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-static {p1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMixedClickListener(Landroid/view/View;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 44
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->imageHelp:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p2, "imageHelp"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/iMe/ui/custom/StakingSafeWithdrawalView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3}, Lcom/iMe/ui/custom/StakingSafeWithdrawalView$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-static {p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMixedClickListener(Landroid/view/View;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method
