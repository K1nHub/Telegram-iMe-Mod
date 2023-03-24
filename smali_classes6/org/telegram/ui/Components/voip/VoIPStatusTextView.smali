.class public Lorg/telegram/ui/Components/voip/VoIPStatusTextView;
.super Landroid/widget/FrameLayout;
.source "VoIPStatusTextView.java"


# instance fields
.field animationInProgress:Z

.field animator:Landroid/animation/ValueAnimator;

.field ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

.field nextTextToSet:Ljava/lang/CharSequence;

.field reconnectTextView:Landroid/widget/TextView;

.field textView:[Landroid/widget/TextView;

.field timerShowing:Z

.field timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;


# direct methods
.method public static synthetic $r8$lambda$mtAEttNmC-ocRXhJkjo_R66BzxQ(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->lambda$setText$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$udjUombldBhnfPEvLkcVRGEKF_k(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->lambda$replaceViews$1(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 48
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/widget/TextView;

    .line 33
    iput-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/high16 v5, 0x4c000000    # 3.3554432E7f

    const v6, 0x3f2aaaab

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/high16 v9, 0x41700000    # 15.0f

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ge v4, v2, :cond_0

    .line 50
    iget-object v12, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v13, v12, v4

    .line 51
    iget-object v12, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v12, v12, v4

    invoke-virtual {v12, v11, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 52
    iget-object v9, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v9, v9, v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v9, v8, v7, v6, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 53
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    .line 59
    invoke-virtual {v2, v11, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 60
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v4, v7, v6, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 61
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x16

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v2, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    .line 66
    new-instance v2, Landroid/text/SpannableStringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->VoipReconnecting:I

    const-string v5, "VoipReconnecting"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 67
    new-instance v4, Landroid/text/SpannableString;

    const-string v5, "..."

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v5, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v5, v4, v3}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->wrap(Landroid/text/SpannableString;I)V

    .line 69
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 70
    iget-object v3, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    new-instance v2, Lorg/telegram/ui/Components/voip/VoIPTimerView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/voip/VoIPTimerView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    const/4 v1, -0x2

    .line 74
    invoke-static {v10, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->replaceViews(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$replaceViews$1(Landroid/view/View;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 171
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const v0, 0x3f19999a    # 0.6f

    mul-float v1, p2, v0

    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    const/16 v2, 0xa

    .line 174
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-virtual {p0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 175
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 176
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 177
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 179
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 180
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$setText$0()V
    .locals 5

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    .line 123
    aget-object v4, v0, v3

    aput-object v4, v0, v1

    .line 124
    aput-object v2, v0, v3

    return-void
.end method

.method private replaceViews(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0xf

    .line 166
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animationInProgress:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 169
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animator:Landroid/animation/ValueAnimator;

    .line 170
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$1;-><init>(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 257
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 264
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onDetachedFromWindow()V

    return-void
.end method

.method public setSignalBarCount(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/voip/VoIPTimerView;->setSignalBarCount(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;ZZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 81
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->reset()V

    .line 83
    new-instance p1, Landroid/text/SpannableString;

    const-string v2, "..."

    invoke-direct {p1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v2, p1, v1}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->wrap(Landroid/text/SpannableString;I)V

    .line 85
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 88
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->addView(Landroid/view/View;)V

    .line 89
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->addView(Landroid/view/View;)V

    move-object p1, p2

    goto :goto_0

    .line 91
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->removeView(Landroid/view/View;)V

    .line 92
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->removeView(Landroid/view/View;)V

    .line 95
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    move p3, v1

    :cond_1
    if-nez p3, :cond_3

    .line 100
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_2

    .line 101
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 103
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animationInProgress:Z

    .line 104
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/voip/VoIPTimerView;->setVisibility(I)V

    goto :goto_1

    .line 110
    :cond_3
    iget-boolean p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animationInProgress:Z

    if-eqz p2, :cond_4

    .line 111
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->nextTextToSet:Ljava/lang/CharSequence;

    return-void

    .line 115
    :cond_4
    iget-boolean p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerShowing:Z

    if-eqz p2, :cond_5

    .line 116
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->replaceViews(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 119
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 120
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p2, p1, v1

    aget-object p1, p1, v0

    new-instance p3, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;)V

    invoke-direct {p0, p2, p1, p3}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->replaceViews(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public showReconnect(ZZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 228
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 229
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x96

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 232
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 233
    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 236
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 237
    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 239
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView$2;-><init>(Lorg/telegram/ui/Components/voip/VoIPStatusTextView;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 244
    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    if-eqz p1, :cond_4

    .line 249
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 251
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->reconnectTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->removeView(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method public showTimer(Z)V
    .locals 4

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, v1

    .line 135
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerShowing:Z

    if-eqz v0, :cond_1

    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/VoIPTimerView;->updateTimer()V

    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 141
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 143
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerShowing:Z

    .line 144
    iput-boolean v1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animationInProgress:Z

    .line 145
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/voip/VoIPTimerView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->animationInProgress:Z

    if-eqz p1, :cond_4

    const-string p1, "timer"

    .line 150
    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->nextTextToSet:Ljava/lang/CharSequence;

    return-void

    .line 153
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerShowing:Z

    .line 154
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object p1, p1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->timerView:Lorg/telegram/ui/Components/voip/VoIPTimerView;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->replaceViews(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 157
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->removeView(Landroid/view/View;)V

    .line 158
    iget-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->ellipsizeAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPStatusTextView;->textView:[Landroid/widget/TextView;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->removeView(Landroid/view/View;)V

    return-void
.end method
