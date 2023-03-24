.class public Lorg/telegram/ui/Components/TranslateButton;
.super Landroid/widget/FrameLayout;
.source "TranslateButton.java"


# instance fields
.field private accusative:[Z

.field private final currentAccount:I

.field private final dialogId:J

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private menuView:Landroid/widget/ImageView;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Lorg/telegram/ui/Components/AnimatedTextView;

.field public final translateIcon:Landroid/text/SpannableString;


# direct methods
.method public static synthetic $r8$lambda$6uOXlIU_gWHLHfUyGNgS_ZwLluE(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$2(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C9MciF3C-lpxa18xfkqe5YzWgX8(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$5(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KJp4dUp85v2kMve_zZUzS2sglBw(Lorg/telegram/ui/Components/TranslateButton;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/TranslateButton;->lambda$new$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lyx3Kd43qYdkh6XiKgu96sB5lZ8(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$9(Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OW5gLdUlsM1Qu5GDPKcQO2b4a8c(Lorg/telegram/ui/Components/TranslateButton;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$YDkQLLMEoyJO9ICeXcLqmkRevM4(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$3(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c2LohBYY9EurpJptD8yDkB9rQXs(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$8(Lorg/telegram/messenger/TranslateController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l--uFCs556l36saFI_MiHw66TiU(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$4(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tWJZIhvFMBvZ7bSc1zjTs4My9vY(Lorg/telegram/ui/Components/TranslateButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/TranslateButton;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x4hreemR33qYXMc79RW0JLlO7ho(Lorg/telegram/ui/Components/TranslateButton;Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/TranslateButton;->lambda$onMenuClick$7(Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v1, v0, [Z

    .line 51
    iput-object v1, p0, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    .line 60
    iput p2, p0, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    .line 61
    iput-wide p3, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    .line 62
    iput-object p5, p0, Lorg/telegram/ui/Components/TranslateButton;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 63
    iput-object p6, p0, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 65
    new-instance v2, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 p3, 0x0

    invoke-direct {v2, p1, v0, v0, p3}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v2, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 66
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1c2

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 67
    iget-object p4, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string p5, "chat_addContact"

    invoke-static {p5, p6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p4, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 68
    iget-object p4, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v1, 0xf

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p4, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 69
    iget-object p4, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p4, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    iget-object p4, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p4, v2, p3, v1, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 71
    iget-object p4, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p4, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 72
    iget-object p4, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    xor-int/2addr v1, v0

    invoke-virtual {p4, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setIgnoreRTL(Z)V

    .line 73
    iget-object p4, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    iput-boolean p3, p4, Lorg/telegram/ui/Components/AnimatedTextView;->adaptWidth:Z

    .line 74
    invoke-static {p5, p6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const v2, 0x19ffffff

    and-int/2addr v1, v2

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object p4, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-instance v1, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/TranslateButton;)V

    invoke-virtual {p4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p4, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 79
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p5, p6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v1, -0x8

    .line 80
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {p4, p3, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    new-instance v1, Landroid/text/SpannableString;

    const-string v3, "x"

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/TranslateButton;->translateIcon:Landroid/text/SpannableString;

    .line 82
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, p4, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 p4, 0x21

    invoke-virtual {v1, v3, p3, v0, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 84
    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    .line 85
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_mini_customize:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p5, p6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p4

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 88
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    invoke-static {p5, p6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    and-int/2addr p3, v2

    const/4 p4, 0x7

    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    new-instance p3, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p2}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/TranslateButton;I)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    const/16 v0, 0x20

    const/16 v1, 0x20

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 54
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/TranslateButton;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->onButtonClick()V

    return-void
.end method

.method private synthetic lambda$new$1(ILandroid/view/View;)V
    .locals 0

    .line 90
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->onMenuClick()V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->onCloseClick()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onMenuClick$2(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILandroid/view/View;)V
    .locals 0

    .line 158
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    return-void
.end method

.method private static synthetic lambda$onMenuClick$3(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/view/View;)V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method private synthetic lambda$onMenuClick$4(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 2

    .line 197
    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/TranslateController;->setDialogTranslateTo(JLjava/lang/String;)V

    .line 198
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 199
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->updateText()V

    return-void
.end method

.method private synthetic lambda$onMenuClick$5(Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 2

    .line 217
    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/TranslateController;->setDialogTranslateTo(JLjava/lang/String;)V

    .line 218
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 219
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TranslateButton;->updateText()V

    return-void
.end method

.method private synthetic lambda$onMenuClick$6()V
    .locals 2

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-direct {v1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onMenuClick$7(Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 2

    const/4 p5, 0x1

    .line 245
    invoke-static {p1, p5}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->toggleLanguage(Ljava/lang/String;Z)Z

    .line 246
    invoke-virtual {p2}, Lorg/telegram/messenger/TranslateController;->checkRestrictedLanguagesUpdate()V

    .line 247
    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {p2, v0, v1, p5}, Lorg/telegram/messenger/TranslateController;->setHideTranslateDialog(JZ)V

    .line 249
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_0

    .line 250
    sget p1, Lorg/telegram/messenger/R$string;->AddedToDoNotTranslate:I

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p3, p5, p2

    const-string p2, "AddedToDoNotTranslate"

    invoke-static {p2, p1, p5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 252
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->AddedToDoNotTranslateOther:I

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p3, p5, p2

    const-string p2, "AddedToDoNotTranslateOther"

    invoke-static {p2, p1, p5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 254
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 255
    invoke-static {p1}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 256
    iget-object p2, p0, Lorg/telegram/ui/Components/TranslateButton;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->msg_translate:I

    sget p5, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v0, "Settings"

    .line 259
    invoke-static {v0, p5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/TranslateButton;)V

    .line 256
    invoke-virtual {p2, p3, p1, p5, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 262
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onMenuClick$8(Lorg/telegram/messenger/TranslateController;)V
    .locals 3

    .line 281
    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/TranslateController;->setHideTranslateDialog(JZ)V

    return-void
.end method

.method private synthetic lambda$onMenuClick$9(Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;Landroid/view/View;)V
    .locals 4

    .line 270
    iget-wide v0, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    const/4 p3, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lorg/telegram/messenger/TranslateController;->setHideTranslateDialog(JZ)V

    .line 271
    iget v0, p0, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 275
    sget p3, Lorg/telegram/messenger/R$string;->TranslationBarHiddenForChannel:I

    const-string v0, "TranslationBarHiddenForChannel"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 277
    sget p3, Lorg/telegram/messenger/R$string;->TranslationBarHiddenForGroup:I

    const-string v0, "TranslationBarHiddenForGroup"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 278
    :cond_2
    sget p3, Lorg/telegram/messenger/R$string;->TranslationBarHiddenForChat:I

    const-string v0, "TranslationBarHiddenForChat"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 273
    :goto_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->msg_translate:I

    sget v2, Lorg/telegram/messenger/R$string;->Undo:I

    const-string v3, "Undo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;)V

    invoke-virtual {v0, v1, p3, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 283
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method protected onButtonClick()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method protected onCloseClick()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method protected onMenuClick()V
    .locals 27

    move-object/from16 v6, p0

    .line 108
    iget v0, v6, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v7

    .line 110
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    iget-object v2, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v9, 0x1

    invoke-direct {v8, v0, v1, v2, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 111
    new-instance v10, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, -0x2

    invoke-direct {v10, v8, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    .line 112
    iget-object v0, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "actionBarDefaultSubmenuBackground"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 114
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    new-instance v1, Lorg/telegram/ui/Components/TranslateButton$1;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lorg/telegram/ui/Components/TranslateButton$1;-><init>(Lorg/telegram/ui/Components/TranslateButton;Landroid/content/Context;)V

    .line 148
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 150
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    iput-boolean v9, v8, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->swipeBackGravityRight:Z

    .line 152
    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    move-result v3

    .line 154
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v11, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v12, 0x0

    invoke-direct {v4, v5, v9, v12, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 155
    sget v5, Lorg/telegram/messenger/R$string;->TranslateTo:I

    const-string v11, "TranslateTo"

    invoke-static {v11, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    invoke-virtual {v4, v5, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 156
    iget-wide v13, v6, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v7, v13, v14}, Lorg/telegram/messenger/TranslateController;->getDialogTranslateTo(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSubtext(Ljava/lang/String;)V

    const/16 v5, 0x38

    .line 157
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setItemHeight(I)V

    .line 158
    new-instance v5, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda1;

    invoke-direct {v5, v8, v3}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;I)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {v8, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 161
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v4, v9, v12, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 162
    sget v4, Lorg/telegram/messenger/R$string;->Back:I

    const-string v5, "Back"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 163
    new-instance v4, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda0;

    invoke-direct {v4, v8}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, -0x1

    const/16 v4, 0x1a4

    .line 166
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-wide v0, v6, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v7, v0, v1}, Lorg/telegram/messenger/TranslateController;->getDialogDetectedLanguage(J)Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-static {v4}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    iget-object v0, v6, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v5

    .line 171
    iget-wide v0, v6, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v7, v0, v1}, Lorg/telegram/messenger/TranslateController;->getDialogTranslateTo(J)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lorg/telegram/messenger/TranslateController;->getSuggestedLanguages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 174
    invoke-static {}, Lorg/telegram/messenger/TranslateController;->getLanguages()Ljava/util/ArrayList;

    move-result-object v11

    .line 175
    new-instance v13, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v15, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v13, v14, v15}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v14, 0x8

    invoke-static {v3, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_0

    .line 177
    invoke-static {v0}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/telegram/ui/Components/TranslateAlert2;->capitalFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 179
    new-instance v15, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v12, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v21, v15

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v12, v21

    .line 180
    invoke-virtual {v12, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 181
    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/TranslateController$Language;

    .line 186
    iget-object v13, v12, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    .line 187
    invoke-static {v13, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v15, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v22

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-object v9, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v21, v15

    move-object/from16 v26, v9

    invoke-direct/range {v21 .. v26}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 193
    :goto_1
    invoke-virtual {v15, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 194
    iget-object v12, v12, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    invoke-virtual {v15, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    if-nez v9, :cond_3

    .line 196
    new-instance v9, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda6;

    invoke-direct {v9, v6, v7, v13, v10}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v15, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :cond_3
    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v9, 0x1

    goto :goto_0

    .line 204
    :cond_4
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v12, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v9, v12}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v3, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/TranslateController$Language;

    .line 206
    iget-object v11, v9, Lorg/telegram/messenger/TranslateController$Language;->code:Ljava/lang/String;

    .line 207
    invoke-static {v11, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_2

    .line 211
    :cond_5
    new-instance v12, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v22

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-object v13, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v21, v12

    move-object/from16 v26, v13

    invoke-direct/range {v21 .. v26}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz v0, :cond_6

    .line 212
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    .line 213
    :goto_3
    invoke-virtual {v12, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 214
    iget-object v9, v9, Lorg/telegram/messenger/TranslateController$Language;->displayName:Ljava/lang/String;

    invoke-virtual {v12, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    if-nez v13, :cond_7

    .line 216
    new-instance v9, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda5;

    invoke-direct {v9, v6, v7, v11, v10}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v12, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    :cond_7
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 233
    :cond_8
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v3, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz v5, :cond_a

    .line 236
    new-instance v9, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v9, v0, v3, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 238
    iget-object v0, v6, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_9

    .line 239
    sget v0, Lorg/telegram/messenger/R$string;->DoNotTranslateLanguage:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v5, v1, v2

    const-string v11, "DoNotTranslateLanguage"

    invoke-static {v11, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 241
    :cond_9
    sget v0, Lorg/telegram/messenger/R$string;->DoNotTranslateLanguageOther:I

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v5, v1, v2

    const-string v2, "DoNotTranslateLanguageOther"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_4
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    invoke-virtual {v9, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 244
    new-instance v11, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda4;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v7

    move-object v4, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/TranslateButton;Ljava/lang/String;Lorg/telegram/messenger/TranslateController;Ljava/lang/String;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 267
    :cond_a
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v6, Lorg/telegram/ui/Components/TranslateButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 268
    sget v1, Lorg/telegram/messenger/R$string;->Hide:I

    const-string v2, "Hide"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_cancel:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 269
    new-instance v1, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda7;

    invoke-direct {v1, v6, v7, v10}, Lorg/telegram/ui/Components/TranslateButton$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/TranslateButton;Lorg/telegram/messenger/TranslateController;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 287
    invoke-virtual {v10, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    const/16 v0, 0xdc

    .line 288
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 289
    invoke-virtual {v10, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 290
    invoke-virtual {v10, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 291
    sget v0, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v10, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 292
    invoke-virtual {v10, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v0, 0x2

    .line 293
    invoke-virtual {v10, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 v0, 0x0

    .line 294
    invoke-virtual {v10, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 295
    iget-object v1, v6, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v10, v1, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public updateText()V
    .locals 9

    .line 299
    iget v0, p0, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    .line 300
    iget-wide v1, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/TranslateController;->isTranslatingDialog(J)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, " "

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-array v1, v4, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/telegram/ui/Components/TranslateButton;->translateIcon:Landroid/text/SpannableString;

    aput-object v4, v1, v6

    aput-object v3, v1, v5

    sget v3, Lorg/telegram/messenger/R$string;->ShowOriginalButton:I

    const-string v4, "ShowOriginalButton"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 303
    :cond_0
    iget-wide v7, p0, Lorg/telegram/ui/Components/TranslateButton;->dialogId:J

    invoke-virtual {v0, v7, v8}, Lorg/telegram/messenger/TranslateController;->getDialogTranslateTo(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "en"

    .line 308
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/TranslateAlert2;->languageName(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateButton;->accusative:[Z

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_2

    .line 310
    sget v1, Lorg/telegram/messenger/R$string;->TranslateToButton:I

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v6

    const-string v0, "TranslateToButton"

    invoke-static {v0, v1, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->TranslateToButtonOther:I

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v6

    const-string v0, "TranslateToButtonOther"

    invoke-static {v0, v1, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateButton;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    new-array v4, v4, [Ljava/lang/CharSequence;

    iget-object v7, p0, Lorg/telegram/ui/Components/TranslateButton;->translateIcon:Landroid/text/SpannableString;

    aput-object v7, v4, v6

    aput-object v3, v4, v5

    aput-object v0, v4, v2

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateButton;->menuView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/Components/TranslateButton;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_mini_customize:I

    goto :goto_2

    :cond_3
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_close:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
