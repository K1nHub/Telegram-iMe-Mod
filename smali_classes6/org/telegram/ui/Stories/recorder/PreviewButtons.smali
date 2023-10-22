.class public Lorg/telegram/ui/Stories/recorder/PreviewButtons;
.super Landroid/widget/FrameLayout;
.source "PreviewButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/PreviewButtons$ButtonView;,
        Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;
    }
.end annotation


# instance fields
.field private appearAnimator:Landroid/animation/ValueAnimator;

.field private appearT:F

.field private appearing:Z

.field private buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private isShareEnabled:Z

.field private onClickListener:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private shadowView:Landroid/view/View;

.field public shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

.field private shareText:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$RBJEWXiGVf8UjgNel3StmDUudf4(Lorg/telegram/ui/Stories/recorder/PreviewButtons;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->lambda$appear$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->buttons:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->isShareEnabled:Z

    .line 66
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shadowView:Landroid/view/View;

    .line 67
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    invoke-direct {v2, v3, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shadowView:Landroid/view/View;

    const/4 v2, -0x1

    const/16 v3, 0x77

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    sget v1, Lorg/telegram/messenger/R$drawable;->media_draw:I

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrPaint:I

    const-string v3, "AccDescrPaint"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->addButton(IILjava/lang/CharSequence;)V

    .line 71
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_photo_sticker:I

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrStickers:I

    const-string v3, "AccDescrStickers"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->addButton(IILjava/lang/CharSequence;)V

    .line 72
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_photo_text2:I

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrPlaceText:I

    const-string v3, "AccDescrPlaceText"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->addButton(IILjava/lang/CharSequence;)V

    .line 73
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_photo_settings:I

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrPhotoAdjust:I

    const-string v2, "AccDescrPhotoAdjust"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->addButton(IILjava/lang/CharSequence;)V

    .line 75
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    sget v1, Lorg/telegram/messenger/R$string;->Send:I

    const-string v2, "Send"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareText:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewButtons;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    .line 76
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    const/4 v0, -0x2

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->updateAppearT()V

    return-void

    :array_0
    .array-data 4
        0x66000000
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/recorder/PreviewButtons;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearing:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/recorder/PreviewButtons;)Lorg/telegram/messenger/Utilities$Callback;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->onClickListener:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method private addButton(IILjava/lang/CharSequence;)V
    .locals 2

    .line 94
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewButtons$ButtonView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewButtons$ButtonView;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewButtons;Landroid/content/Context;II)V

    .line 95
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->buttons:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$appear$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 159
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearT:F

    .line 160
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->updateAppearT()V

    return-void
.end method

.method private updateAppearT()V
    .locals 8

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shadowView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearT:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shadowView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearT:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x1

    move v1, v0

    .line 179
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 180
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 181
    iget v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearT:F

    .line 182
    iget-boolean v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearing:Z

    if-eqz v5, :cond_0

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    .line 183
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v4

    .line 184
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    .line 186
    :cond_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    sub-float v4, v2, v4

    const/16 v5, 0x18

    .line 187
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public appear(ZZ)V
    .locals 4

    .line 149
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 155
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearing:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v2, 0x0

    .line 157
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearT:F

    aput v3, p2, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    aput v0, p2, v2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearAnimator:Landroid/animation/ValueAnimator;

    .line 158
    new-instance p2, Lorg/telegram/ui/Stories/recorder/PreviewButtons$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewButtons;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearing:Z

    if-eqz p1, :cond_3

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    .line 166
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 169
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    .line 171
    :goto_2
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->appearT:F

    .line 172
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->updateAppearT()V

    :goto_3
    return-void
.end method

.method public isShareEnabled()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->isShareEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 105
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shadowView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 106
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p3, p4, p3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p5, v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p5

    div-int/2addr v2, v1

    invoke-virtual {p1, p3, v0, p4, v2}, Landroid/view/View;->layout(IIII)V

    const p1, 0x420151ec    # 32.33f

    .line 108
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p4, p1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    .line 109
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->buttons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p3, 0x28

    if-ge p1, v1, :cond_0

    move p4, p2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->buttons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    mul-int/2addr p1, v0

    sub-int/2addr p4, p1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->buttons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p4, p1

    :goto_0
    const/16 p1, 0x14

    .line 110
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 112
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    sub-int p4, p5, p4

    div-int/2addr p4, v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p5, v0

    div-int/2addr p5, v1

    const v0, 0x414547ae    # 12.33f

    .line 113
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 114
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p4, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 115
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, p1

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 127
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x34

    .line 128
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 126
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setOnClickListener(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->onClickListener:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setShareEnabled(Z)V
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->isShareEnabled:Z

    if-eq v0, p1, :cond_0

    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->isShareEnabled:Z

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    iput-boolean p1, v0, Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;->enabled:Z

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setShareText(Ljava/lang/String;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareText:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 87
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewButtons;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    .line 88
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->shareButton:Lorg/telegram/ui/Stories/recorder/PreviewButtons$ShareButtonView;

    const/4 v0, -0x2

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewButtons;->updateAppearT()V

    return-void
.end method
