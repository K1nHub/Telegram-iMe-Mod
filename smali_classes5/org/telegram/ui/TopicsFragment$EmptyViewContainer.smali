.class Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;
.super Landroid/widget/FrameLayout;
.source "TopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/TopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmptyViewContainer"
.end annotation


# instance fields
.field increment:Z

.field progress:F

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/TopicsFragment;Landroid/content/Context;)V
    .locals 8

    .line 3143
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3144
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    .line 3146
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const-string v0, "  "

    const-string v1, "TapToCreateTopicHint"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    .line 3147
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3148
    new-instance v0, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v4, Lorg/telegram/messenger/R$drawable;->attach_arrow_left:I

    invoke-direct {v0, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {p2, v0, v2, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3149
    sget v0, Lorg/telegram/messenger/R$string;->TapToCreateTopicHint:I

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 3151
    :cond_0
    new-instance p2, Landroid/text/SpannableStringBuilder;

    sget v4, Lorg/telegram/messenger/R$string;->TapToCreateTopicHint:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3152
    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3153
    new-instance v0, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v1, Lorg/telegram/messenger/R$drawable;->arrow_newchat:I

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {p2, v0, v1, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3155
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3156
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3157
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3158
    iget-object p2, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3159
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x51

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x48

    const/16 v4, 0x20

    if-eqz p2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    const/4 v6, 0x0

    if-eqz p2, :cond_2

    move p2, v4

    goto :goto_2

    :cond_2
    move p2, v3

    :goto_2
    const/16 v7, 0x20

    move v3, v5

    move v4, v6

    move v5, p2

    move v6, v7

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 3167
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3168
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->increment:Z

    const/4 v0, 0x1

    const v1, 0x3c5a740e

    if-eqz p1, :cond_0

    .line 3169
    iget p1, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->progress:F

    add-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 3171
    iput-boolean p1, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->increment:Z

    .line 3172
    iput v1, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->progress:F

    goto :goto_0

    .line 3175
    :cond_0
    iget p1, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->progress:F

    sub-float/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->progress:F

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    .line 3177
    iput-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->increment:Z

    .line 3178
    iput v1, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->progress:F

    .line 3181
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->textView:Landroid/widget/TextView;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, p0, Lorg/telegram/ui/TopicsFragment$EmptyViewContainer;->progress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    const/4 v0, -0x1

    :cond_2
    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 3182
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
