.class public final Lcom/smedialink/ui/custom/StakingSafeWithdrawalView;
.super Landroid/widget/FrameLayout;
.source "StakingSafeWithdrawalView.kt"


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;


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

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    iput-object p1, p0, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    .line 26
    invoke-direct {p0}, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView;->setupView()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final setupView()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView;->setupColors()V

    .line 69
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->textSafeWithdrawal:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lorg/telegram/messenger/R$string;->staking_withdraw_safe_withdrawal:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->getRoot()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final setupColors()V
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    .line 50
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->checkboxSafeWithdrawal:Lorg/telegram/ui/Components/CheckBoxSquare;

    const-string v2, "checkboxSquareUnchecked"

    const-string v3, "checkboxSquareBackground"

    const-string v4, "checkboxSquareCheck"

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Components/CheckBoxSquare;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->textSafeWithdrawal:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->imageHelp:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, ""

    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "windowBackgroundWhiteGrayIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 58
    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setBoundedCircleRippleBackground(Landroid/view/View;)V

    return-void
.end method

.method public final setupViewData(ZLorg/fork/utils/Callbacks$Callback1;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lorg/fork/utils/Callbacks$Callback;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "onCheckedAction"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onInfoClickAction"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 36
    iget-object v3, v2, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView;->binding:Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;

    .line 37
    iget-object v4, v3, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->checkboxSafeWithdrawal:Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v5, 0x0

    move/from16 v6, p1

    .line 38
    invoke-virtual {v4, v6, v5}, Lorg/telegram/ui/Components/CheckBoxSquare;->setChecked(ZZ)V

    .line 39
    iget-object v6, v3, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->linearSafeWithdrawal:Landroidx/appcompat/widget/LinearLayoutCompat;

    const-string v5, "linearSafeWithdrawal"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView$setupViewData$1$1$1;

    invoke-direct {v9, v4, v0}, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView$setupViewData$1$1$1;-><init>(Lorg/telegram/ui/Components/CheckBoxSquare;Lorg/fork/utils/Callbacks$Callback1;)V

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 44
    iget-object v12, v3, Lorg/telegram/messenger/databinding/ForkContentStakingSafeWithdrawalBinding;->imageHelp:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "imageHelp"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView$setupViewData$1$2;

    invoke-direct {v15, v1}, Lcom/smedialink/ui/custom/StakingSafeWithdrawalView$setupViewData$1$2;-><init>(Lorg/fork/utils/Callbacks$Callback;)V

    const-wide/16 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
