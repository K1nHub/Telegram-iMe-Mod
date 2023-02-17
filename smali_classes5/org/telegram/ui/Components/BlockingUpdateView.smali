.class public Lorg/telegram/ui/Components/BlockingUpdateView;
.super Landroid/widget/FrameLayout;
.source "BlockingUpdateView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# instance fields
.field private acceptButton:Landroid/widget/FrameLayout;

.field private acceptTextView:Landroid/widget/TextView;

.field private accountNum:I

.field private appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

.field private fileName:Ljava/lang/String;

.field gradientDrawableBottom:Landroid/graphics/drawable/Drawable;

.field gradientDrawableTop:Landroid/graphics/drawable/Drawable;

.field private pressCount:I

.field private progressAnimation:Landroid/animation/AnimatorSet;

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress;

.field private radialProgressView:Landroid/widget/FrameLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$3gKD8YT5i-SngKLGJNV6jjoBmdI(Lorg/telegram/ui/Components/BlockingUpdateView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BlockingUpdateView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9TXbzaqZo91bxm7vXF1k5fAf-TE(Lorg/telegram/ui/Components/BlockingUpdateView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BlockingUpdateView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KPCVUyHzXCP1c_YyvMy2CdZps8U(Lorg/telegram/ui/Components/BlockingUpdateView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BlockingUpdateView;->lambda$show$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hr64MOfxVm_oi7TLiRGnA5G9s2I(Lorg/telegram/ui/Components/BlockingUpdateView;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/BlockingUpdateView;->lambda$show$2(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 64
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 358
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v4, 0x2

    new-array v5, v4, [I

    const-string/jumbo v6, "windowBackgroundWhite"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    aput v7, v5, v8

    const/4 v7, 0x1

    aput v8, v5, v7

    invoke-direct {v2, v3, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->gradientDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 359
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v4, [I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    aput v9, v5, v8

    aput v8, v5, v7

    invoke-direct {v2, v3, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->gradientDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 67
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v5

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 69
    :goto_0
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0xb0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    if-lt v2, v3, :cond_1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v10, v2

    const/4 v2, -0x1

    invoke-direct {v9, v2, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v3, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    .line 73
    sget v9, Lorg/telegram/messenger/R$raw;->qr_code_logo:I

    const/16 v10, 0x6c

    invoke-virtual {v3, v9, v10, v10}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 74
    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 75
    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 76
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v9, 0xe

    .line 77
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v3, v8, v8, v8, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x11

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v13, v5

    .line 78
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v6, Lorg/telegram/ui/Components/BlockingUpdateView$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lorg/telegram/ui/Components/BlockingUpdateView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BlockingUpdateView;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v6, Landroid/widget/ScrollView;

    invoke-direct {v6, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->scrollView:Landroid/widget/ScrollView;

    const-string v9, "actionBarDefault"

    .line 90
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v6, v9}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 91
    iget-object v6, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->scrollView:Landroid/widget/ScrollView;

    const/16 v9, 0x10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v6, v8, v10, v8, v9}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 92
    iget-object v6, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 93
    iget-object v6, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->scrollView:Landroid/widget/ScrollView;

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/16 v11, 0x33

    const/16 v12, 0x1b

    add-int/lit16 v13, v5, 0xb2

    const/16 v14, 0x1b

    const/16 v15, 0x82

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v5, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 98
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v6, "windowBackgroundWhiteBlackText"

    .line 99
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v9, 0x41a00000    # 20.0f

    .line 100
    invoke-virtual {v5, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v9, 0x31

    .line 101
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    const-string v10, "fonts/rmedium.ttf"

    .line 102
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    sget v11, Lorg/telegram/messenger/R$string;->UpdateTelegram:I

    const-string v12, "UpdateTelegram"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, -0x2

    .line 104
    invoke-static {v11, v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v5, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->textView:Landroid/widget/TextView;

    .line 107
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v5, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->textView:Landroid/widget/TextView;

    const-string/jumbo v6, "windowBackgroundWhiteLinkText"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 109
    iget-object v5, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->textView:Landroid/widget/TextView;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 110
    iget-object v5, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->textView:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v6}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 111
    iget-object v5, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->textView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    iget-object v5, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->textView:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 113
    iget-object v4, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->textView:Landroid/widget/TextView;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x33

    const/4 v15, 0x0

    const/16 v16, 0x2c

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v3, Lorg/telegram/ui/Components/BlockingUpdateView$1;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/BlockingUpdateView$1;-><init>(Lorg/telegram/ui/Components/BlockingUpdateView;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptButton:Landroid/widget/FrameLayout;

    const/16 v4, 0x22

    .line 143
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v3, v5, v8, v6, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 144
    iget-object v3, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptButton:Landroid/widget/FrameLayout;

    new-array v5, v7, [F

    const/high16 v6, 0x40800000    # 4.0f

    aput v6, v5, v8

    const-string v6, "featuredStickers_addButton"

    invoke-static {v6, v5}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(Ljava/lang/String;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v3, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptButton:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v5, v8, v4, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 146
    iget-object v3, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptButton:Landroid/widget/FrameLayout;

    const/16 v13, 0x2e

    const/16 v14, 0x51

    const/16 v16, 0x0

    const/16 v18, 0x2d

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v3, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptButton:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/Components/BlockingUpdateView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/BlockingUpdateView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/BlockingUpdateView;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    .line 162
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 163
    iget-object v3, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    iget-object v3, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v3, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 166
    iget-object v3, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptButton:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    invoke-static {v11, v11, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v3, Lorg/telegram/ui/Components/BlockingUpdateView$2;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/BlockingUpdateView$2;-><init>(Lorg/telegram/ui/Components/BlockingUpdateView;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    .line 185
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 186
    iget-object v1, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 187
    iget-object v1, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 188
    iget-object v1, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 189
    iget-object v1, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 190
    new-instance v1, Lorg/telegram/ui/Components/RadialProgress;

    iget-object v3, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/RadialProgress;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    const/4 v3, 0x0

    .line 191
    invoke-virtual {v1, v3, v7, v8}, Lorg/telegram/ui/Components/RadialProgress;->setBackground(Landroid/graphics/drawable/Drawable;ZZ)V

    .line 192
    iget-object v1, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgress;->setProgressColor(I)V

    .line 193
    iget-object v1, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptButton:Landroid/widget/FrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    const/16 v3, 0x24

    invoke-static {v3, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/BlockingUpdateView;)Lorg/telegram/ui/Components/RadialProgress;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/BlockingUpdateView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->progressAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/BlockingUpdateView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->progressAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/BlockingUpdateView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/BlockingUpdateView;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static checkApkInstallPermissions(Landroid/content/Context;)Z
    .locals 2

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 232
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createApkRestrictedDialog(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 80
    iget p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->pressCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->pressCount:I

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 p1, 0x8

    .line 82
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BlockingUpdateView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 83
    sput-object p1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 84
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 4

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BlockingUpdateView;->checkApkInstallPermissions(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BlockingUpdateView;->openApkInstall(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 153
    iget p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->accountNum:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x3

    const-string/jumbo v2, "update"

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v1, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 154
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/BlockingUpdateView;->showProgress(Z)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$show$2(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 346
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    if-eqz v0, :cond_0

    .line 347
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 348
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->can_not_skip:Z

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 349
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BlockingUpdateView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 350
    sput-object p1, Lorg/telegram/messenger/SharedConfig;->pendingAppUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 351
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$show$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 345
    new-instance p2, Lorg/telegram/ui/Components/BlockingUpdateView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/BlockingUpdateView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/BlockingUpdateView;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static openApkInstall(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;)Z
    .locals 5

    const/4 v0, 0x0

    .line 241
    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    .line 242
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 247
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x18

    const-string v4, "application/vnd.android.package-archive"

    if-lt v2, v3, :cond_0

    .line 248
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 250
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/16 p1, 0x1f4

    .line 253
    :try_start_2
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 255
    :try_start_3
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 259
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v0
.end method

.method private showProgress(Z)V
    .locals 14

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->progressAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 268
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->progressAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x6

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_1

    .line 270
    iget-object v10, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 271
    iget-object v10, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptButton:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 272
    iget-object v10, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->progressAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    iget-object v11, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    sget-object v12, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v13, v8, [F

    aput v6, v13, v9

    .line 273
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v5, v9

    iget-object v11, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v13, v8, [F

    aput v6, v13, v9

    .line 274
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v8, [F

    aput v3, v12, v9

    .line 275
    invoke-static {v6, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v4

    iget-object v3, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v8, [F

    aput v7, v6, v9

    .line 276
    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v8, [F

    aput v7, v4, v9

    .line 277
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    aput v7, v3, v9

    .line 278
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v5, v0

    .line 272
    invoke-virtual {v10, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v10, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v10, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptButton:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 282
    iget-object v10, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->progressAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v5, [Landroid/animation/Animator;

    iget-object v11, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    sget-object v12, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v13, v8, [F

    aput v6, v13, v9

    .line 283
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v5, v9

    iget-object v11, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    sget-object v12, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v13, v8, [F

    aput v6, v13, v9

    .line 284
    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgressView:Landroid/widget/FrameLayout;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v8, [F

    aput v3, v12, v9

    .line 285
    invoke-static {v6, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v4

    iget-object v3, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v8, [F

    aput v7, v6, v9

    .line 286
    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v5, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v8, [F

    aput v7, v4, v9

    .line 287
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    aput v7, v3, v9

    .line 288
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v5, v0

    .line 282
    invoke-virtual {v10, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 291
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->progressAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/BlockingUpdateView$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/BlockingUpdateView$3;-><init>(Lorg/telegram/ui/Components/BlockingUpdateView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->progressAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 311
    iget-object p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->progressAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 208
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 209
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 210
    iget-object p2, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->fileName:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 211
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/BlockingUpdateView;->showProgress(Z)V

    .line 212
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p2, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BlockingUpdateView;->openApkInstall(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;)Z

    goto :goto_0

    .line 214
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    if-ne p1, p2, :cond_1

    .line 215
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 216
    iget-object p2, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->fileName:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 217
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/BlockingUpdateView;->showProgress(Z)V

    goto :goto_0

    .line 219
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne p1, p2, :cond_2

    .line 220
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 221
    iget-object p2, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->fileName:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 222
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Long;

    const/4 v0, 0x2

    .line 223
    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Long;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 224
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p2, v1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float p3, v1

    div-float/2addr p2, p3

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 225
    iget-object p3, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->radialProgress:Lorg/telegram/ui/Components/RadialProgress;

    invoke-virtual {p3, p2, p1}, Lorg/telegram/ui/Components/RadialProgress;->setProgress(FZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 363
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->gradientDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getTop()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getTop()I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->gradientDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->gradientDrawableBottom:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getBottom()I

    move-result v2

    const/16 v3, 0x12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getRight()I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->gradientDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 198
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 200
    iget p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->accountNum:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 201
    iget p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->accountNum:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 202
    iget p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->accountNum:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    return-void
.end method

.method public show(ILorg/telegram/tgnet/TLRPC$TL_help_appUpdate;Z)V
    .locals 7

    const/4 v0, 0x0

    .line 315
    iput v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->pressCount:I

    .line 316
    iput-object p2, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->appUpdate:Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;

    .line 317
    iput p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->accountNum:I

    .line 318
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v1, :cond_0

    .line 319
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->fileName:Ljava/lang/String;

    .line 321
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 322
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/BlockingUpdateView;->setVisibility(I)V

    .line 324
    :cond_1
    new-instance p1, Landroid/text/SpannableStringBuilder;

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->text:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->entities:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/MessageObject;->addEntitiesToText(Ljava/lang/CharSequence;Ljava/util/ArrayList;ZZZZ)Z

    .line 326
    iget-object v1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_document;

    const-string v1, "Update"

    if-eqz p1, :cond_2

    .line 328
    iget-object p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lorg/telegram/messenger/R$string;->Update:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v0

    const-string p2, " (%1$s)"

    invoke-static {v1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 330
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->acceptTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->Update:I

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :goto_0
    iget p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->accountNum:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 333
    iget p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->accountNum:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadFailed:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 334
    iget p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->accountNum:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    if-eqz p3, :cond_4

    .line 336
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_help_getAppUpdate;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_help_getAppUpdate;-><init>()V

    .line 338
    :try_start_0
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    sget-object p3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_getAppUpdate;->source:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 342
    :goto_1
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_getAppUpdate;->source:Ljava/lang/String;

    if-nez p2, :cond_3

    const-string p2, ""

    .line 343
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_getAppUpdate;->source:Ljava/lang/String;

    .line 345
    :cond_3
    iget p2, p0, Lorg/telegram/ui/Components/BlockingUpdateView;->accountNum:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Components/BlockingUpdateView$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/BlockingUpdateView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/BlockingUpdateView;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    return-void
.end method
