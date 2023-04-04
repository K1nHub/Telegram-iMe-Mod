.class public Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;
.super Landroid/widget/FrameLayout;
.source "CacheControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CacheControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearCacheButton"
.end annotation


# instance fields
.field button:Landroid/widget/FrameLayout;

.field rtlTextView:Landroid/widget/TextView;

.field textView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field valueTextView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1996
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1998
    new-instance v2, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton$1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton$1;-><init>(Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    const-string v5, "featuredStickers_addButton"

    .line 2026
    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(Ljava/lang/String;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2027
    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 2029
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const-string v4, "featuredStickers_buttonText"

    const-string v7, "ClearCache"

    const-string v8, "fonts/rmedium.ttf"

    if-eqz v2, :cond_0

    .line 2030
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->rtlTextView:Landroid/widget/TextView;

    .line 2031
    sget v1, Lorg/telegram/messenger/R$string;->ClearCache:I

    invoke-static {v7, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2032
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->rtlTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 2033
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->rtlTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v1, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2034
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->rtlTextView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2035
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->rtlTextView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2036
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    iget-object v9, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->rtlTextView:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-static {v10, v11, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2039
    :cond_0
    new-instance v10, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v10, v3, v3, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v10, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v11, 0x3e800000    # 0.25f

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x12c

    .line 2040
    sget-object v22, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    move-object/from16 v16, v22

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 2041
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v2, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2042
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/16 v2, 0xe

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 2043
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget v9, Lorg/telegram/messenger/R$string;->ClearCache:I

    invoke-static {v7, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 2044
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setGravity(I)V

    .line 2045
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2046
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 2048
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v1, v3, v3, v3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 v17, 0x3e800000    # 0.25f

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x12c

    move-object/from16 v16, v1

    .line 2049
    invoke-virtual/range {v16 .. v22}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 2050
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2051
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 2052
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2053
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const v4, -0x41147ae1    # -0.46f

    const v5, 0x3da3d70a    # 0.08f

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->adaptHSV(IFF)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 2054
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 2056
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "\t"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v1, "windowBackgroundWhite"

    .line 2058
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2059
    iget-object v1, v0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x77

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/16 v8, 0x10

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 2065
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2064
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 2

    .line 2084
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2085
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x3f266666    # 0.65f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2086
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method

.method public setSize(ZJ)V
    .locals 2

    .line 2071
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p1, :cond_0

    .line 2073
    sget p1, Lorg/telegram/messenger/R$string;->ClearCache:I

    const-string v1, "ClearCache"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2074
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->ClearSelectedCache:I

    const-string v1, "ClearSelectedCache"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2071
    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 2076
    iget-object p1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    const-string p2, ""

    goto :goto_1

    :cond_1
    invoke-static {p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-gtz v0, :cond_2

    move p3, p1

    goto :goto_2

    :cond_2
    move p3, p2

    .line 2077
    :goto_2
    invoke-virtual {p0, p3}, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->setDisabled(Z)V

    .line 2078
    iget-object p3, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2080
    iget-object p3, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->button:Landroid/widget/FrameLayout;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, p2

    const-string p2, "\t"

    aput-object p2, v0, p1

    const/4 p1, 0x2

    iget-object p2, p0, Lorg/telegram/ui/CacheControlActivity$ClearCacheButton;->valueTextView:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
