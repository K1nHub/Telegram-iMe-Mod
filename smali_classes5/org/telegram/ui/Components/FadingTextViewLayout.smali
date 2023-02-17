.class public Lorg/telegram/ui/Components/FadingTextViewLayout;
.super Landroid/widget/FrameLayout;
.source "FadingTextViewLayout.java"


# instance fields
.field private final animator:Landroid/animation/ValueAnimator;

.field private currentView:Landroid/widget/TextView;

.field private foregroundView:Landroid/widget/TextView;

.field private nextView:Landroid/widget/TextView;

.field private text:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$RHPuBgXCoIjHHwMaI9udULWy8LM(Lorg/telegram/ui/Components/FadingTextViewLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/FadingTextViewLayout;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    add-int/lit8 v2, p2, 0x2

    if-ge v0, v2, :cond_2

    .line 37
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/FadingTextViewLayout;->onTextViewCreated(Landroid/widget/TextView;)V

    .line 39
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-nez v0, :cond_0

    .line 41
    iput-object v1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->currentView:Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 46
    iput-object v1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->nextView:Landroid/widget/TextView;

    goto :goto_1

    .line 48
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->foregroundView:Landroid/widget/TextView;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v1, [F

    .line 52
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p2, 0x0

    .line 54
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    new-instance p2, Lorg/telegram/ui/Components/FadingTextViewLayout$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/FadingTextViewLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FadingTextViewLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    new-instance p2, Lorg/telegram/ui/Components/FadingTextViewLayout$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/FadingTextViewLayout$1;-><init>(Lorg/telegram/ui/Components/FadingTextViewLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->currentView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->nextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/FadingTextViewLayout;)Landroid/widget/TextView;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->foregroundView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/FadingTextViewLayout;)Ljava/lang/CharSequence;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 56
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->currentView:Landroid/widget/TextView;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->nextView:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private showNext()V
    .locals 2

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->currentView:Landroid/widget/TextView;

    .line 180
    iget-object v1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->nextView:Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->currentView:Landroid/widget/TextView;

    .line 181
    iput-object v0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->nextView:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getCurrentView()Landroid/widget/TextView;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->currentView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNextView()Landroid/widget/TextView;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->nextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getStaticCharsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onTextViewCreated(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x1

    .line 186
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/Components/FadingTextViewLayout;->setText(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/FadingTextViewLayout;->setText(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;ZZ)V
    .locals 10

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->currentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 99
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->text:Ljava/lang/CharSequence;

    if-eqz p2, :cond_a

    const/4 p2, 0x0

    if-eqz p3, :cond_9

    .line 101
    iget-object p3, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->foregroundView:Landroid/widget/TextView;

    if-eqz p3, :cond_9

    .line 102
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FadingTextViewLayout;->getStaticCharsCount()I

    move-result p3

    if-lez p3, :cond_9

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->currentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 106
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-ge v3, p3, :cond_3

    .line 112
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 113
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    if-ltz v4, :cond_2

    .line 115
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, -0x1

    goto :goto_1

    :cond_1
    if-ne v4, v2, :cond_2

    move v4, v3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    if-lez v4, :cond_5

    .line 126
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 128
    :cond_5
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p3, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 132
    new-instance v2, Landroid/text/SpannableString;

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {v2, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v3, p1, :cond_8

    .line 138
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    .line 139
    iget v6, v5, Landroid/graphics/Point;->y:I

    iget v7, v5, Landroid/graphics/Point;->x:I

    const/16 v8, 0x11

    if-le v6, v7, :cond_6

    .line 140
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v9, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v6, v7, v9, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 142
    :cond_6
    iget v6, v5, Landroid/graphics/Point;->x:I

    if-le v6, v4, :cond_7

    .line 143
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v7, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {p3, v6, v4, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 144
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v7, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v6, v4, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 146
    :cond_7
    iget v4, v5, Landroid/graphics/Point;->y:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 149
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->foregroundView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->foregroundView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->currentView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object p1, v0

    .line 157
    :cond_9
    iget-object p3, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->nextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object p2, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->nextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/Components/FadingTextViewLayout;->showNext()V

    goto :goto_4

    .line 161
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/FadingTextViewLayout;->currentView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_4
    return-void
.end method
