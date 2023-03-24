.class Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;
.super Landroid/widget/FrameLayout;
.source "TranslateAlert2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TranslateAlert2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderView"
.end annotation


# instance fields
.field private arrowView:Landroid/widget/ImageView;

.field private backButton:Landroid/widget/ImageView;

.field private backgroundView:Landroid/view/View;

.field private fromLanguageTextView:Landroid/widget/TextView;

.field private shadow:Landroid/view/View;

.field private subtitleView:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lorg/telegram/ui/Components/TranslateAlert2;

.field private titleTextView:Landroid/widget/TextView;

.field private toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public static synthetic $r8$lambda$XCMXqGs3_SkujWL0la2r1Tlj5hE(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->lambda$openLanguagesSelect$3(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uKAvr4ShU99d9XRNTASbGgXK63s(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;[Ljava/lang/Runnable;Lorg/telegram/messenger/LocaleController$LocaleInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->lambda$openLanguagesSelect$2([Ljava/lang/Runnable;Lorg/telegram/messenger/LocaleController$LocaleInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xzw-oXUEUF8jjKlS4mgCDlXKs0A(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zx3AMxE-e3I18PTrwnYjrIdYz6o(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 697
    iput-object v1, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    .line 698
    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 700
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backgroundView:Landroid/view/View;

    const-string v4, "dialogBackground"

    .line 701
    invoke-static {v1, v4}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1100(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 702
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backgroundView:Landroid/view/View;

    const/4 v4, -0x1

    const/16 v5, 0x2c

    const/16 v6, 0x37

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    .line 705
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 706
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 707
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const-string v5, "dialogTextBlack"

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1200(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 708
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    const-string v4, "listSelectorSDK21"

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1300(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 709
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 710
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    new-instance v6, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    const/16 v6, 0x36

    const/16 v7, 0x36

    const/16 v8, 0x30

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    new-instance v3, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$1;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$1;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;Lorg/telegram/ui/Components/TranslateAlert2;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    .line 722
    invoke-static {v1, v5}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1500(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 723
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 724
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 725
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->AutomaticTranslation:I

    const-string v7, "AutomaticTranslation"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPivotX(F)V

    .line 727
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPivotY(F)V

    .line 728
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/16 v8, 0x37

    const/16 v9, 0x16

    const/16 v10, 0x14

    const/16 v11, 0x16

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 730
    new-instance v3, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$2;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$2;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;Lorg/telegram/ui/Components/TranslateAlert2;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    .line 739
    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v7, 0x5

    if-eqz v6, :cond_0

    .line 740
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 742
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 743
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 744
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1700(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v6, "player_actionBarSubtitle"

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v3, :cond_1

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1700(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v3

    const-string v10, "und"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 745
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    .line 746
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 747
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1800(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 748
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v3, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 749
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1700(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v3, v9, v5, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 753
    :cond_1
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    .line 754
    sget v5, Lorg/telegram/messenger/R$drawable;->search_arrow:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 755
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1900(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)I

    move-result v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 756
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_2

    .line 757
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 760
    :cond_2
    new-instance v3, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;Lorg/telegram/ui/Components/TranslateAlert2;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 805
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_3

    .line 806
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 808
    :cond_3
    iget-object v10, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/high16 v11, 0x3e800000    # 0.25f

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x15e

    sget-object v16, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 809
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2300(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 810
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v5, 0xe

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 811
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2400(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 813
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v5, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v5, 0x3

    if-eqz v3, :cond_5

    .line 816
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v7, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_4

    move v15, v5

    goto :goto_0

    :cond_4
    move v15, v9

    :goto_0
    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    .line 818
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    const/4 v6, -0x2

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 822
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 823
    iget-object v6, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 824
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->arrowView:Landroid/widget/ImageView;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v6, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x10

    iget-object v7, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->fromLanguageTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_7

    move v13, v5

    goto :goto_1

    :cond_7
    move v13, v9

    :goto_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    :cond_8
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/16 v7, 0x37

    const/16 v8, 0x16

    const/16 v9, 0x2b

    const/16 v10, 0x16

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    const-string v2, "dialogShadowLine"

    .line 832
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2500(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 833
    iget-object v1, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 834
    iget-object v1, v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    const/4 v2, -0x1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getShadowHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    div-float/2addr v3, v4

    const/16 v4, 0x37

    const/4 v5, 0x0

    const/high16 v6, 0x42600000    # 56.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)Landroid/widget/TextView;
    .locals 0

    .line 684
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 684
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;)Lorg/telegram/ui/Components/AnimatedTextView;
    .locals 0

    .line 684
    iget-object p0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 710
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 813
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->openLanguagesSelect()V

    return-void
.end method

.method private synthetic lambda$openLanguagesSelect$2([Ljava/lang/Runnable;Lorg/telegram/messenger/LocaleController$LocaleInfo;Landroid/view/View;)V
    .locals 1

    const/4 p3, 0x0

    .line 869
    aget-object v0, p1, p3

    if-eqz v0, :cond_0

    .line 870
    aget-object p1, p1, p3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 873
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2400(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 877
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2900(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->access$3000(Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p3}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3100(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/widget/FrameLayout;

    move-result-object p3

    if-ne p1, p3, :cond_2

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2400(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3202(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)Ljava/lang/String;

    .line 880
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    iget-object p2, p2, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {p3, p2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2402(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2900(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$3300(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/Components/TranslateAlert2$LoadingTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/TranslateAlert2$PaddedAdapter;->updateMainView(Landroid/view/View;)V

    .line 882
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2400(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->setToLanguage(Ljava/lang/String;)V

    .line 883
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->translate()V

    return-void
.end method

.method private static synthetic lambda$openLanguagesSelect$3(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 891
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 936
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x4e

    .line 937
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 935
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public openLanguagesSelect()V
    .locals 14

    .line 838
    new-instance v0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$4;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$4;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;)V

    .line 847
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 848
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    const-string v4, "actionBarDefaultSubmenuBackground"

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2600(Lorg/telegram/ui/Components/TranslateAlert2;Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 849
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Runnable;

    .line 853
    invoke-static {}, Lorg/telegram/messenger/TranslateController;->getLocales()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    move v9, v1

    move v5, v4

    .line 855
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 856
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 858
    iget-object v6, v12, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    .line 859
    invoke-static {v7}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1700(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v12, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    const-string v7, "remote"

    .line 860
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 865
    :cond_0
    new-instance v13, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ne v5, v6, :cond_1

    move v10, v1

    goto :goto_1

    :cond_1
    move v10, v4

    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2700(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    move-object v6, v13

    invoke-direct/range {v6 .. v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 866
    iget-object v6, v12, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v6, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v6}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2400(Lorg/telegram/ui/Components/TranslateAlert2;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v13, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 868
    new-instance v6, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v2, v12}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;[Ljava/lang/Runnable;Lorg/telegram/messenger/LocaleController$LocaleInfo;)V

    invoke-virtual {v13, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    invoke-virtual {v0, v13}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    move v9, v4

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 890
    :cond_3
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v5, -0x2

    invoke-direct {v3, v0, v5, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    .line 891
    new-instance v5, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3}, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    aput-object v5, v2, v4

    .line 892
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    const/16 v2, 0xdc

    .line 893
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 894
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 895
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 896
    sget v2, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 897
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 899
    iget-object v5, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 900
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->measure(II)V

    .line 901
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 902
    aget v5, v2, v1

    int-to-float v5, v5

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    int-to-float v7, v0

    sub-float/2addr v6, v7

    cmpl-float v5, v5, v6

    const/16 v6, 0x8

    if-lez v5, :cond_4

    aget v1, v2, v1

    sub-int/2addr v1, v0

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_3

    :cond_4
    aget v0, v2, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->toLanguageTextView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, v0, v1

    .line 903
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->access$2800(Lorg/telegram/ui/Components/TranslateAlert2;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v5, 0x33

    aget v2, v2, v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v3, v0, v5, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 5

    .line 908
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 910
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 911
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$600(Lorg/telegram/ui/Components/TranslateAlert2;)Z

    move-result v2

    if-nez v2, :cond_0

    move p1, v1

    .line 914
    :cond_0
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result p1

    .line 916
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const v3, 0x3f59999a    # 0.85f

    invoke-static {v3, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 917
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    invoke-static {v3, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 918
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const/high16 v3, -0x3ec00000    # -12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 919
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_1

    .line 920
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->titleTextView:Landroid/widget/TextView;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v4, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 921
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 924
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->subtitleView:Landroid/widget/LinearLayout;

    const/high16 v3, -0x3e500000    # -22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v3, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 926
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    const/high16 v3, -0x3e380000    # -25.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v0, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 927
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->backButton:Landroid/widget/ImageView;

    sub-float/2addr v1, p1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 929
    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-static {v0, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 930
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->shadow:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
