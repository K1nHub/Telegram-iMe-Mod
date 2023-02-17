.class public Lorg/telegram/ui/Cells/DrawerActionCell;
.super Landroid/widget/FrameLayout;
.source "DrawerActionCell.java"


# instance fields
.field private currentId:I

.field private currentLottieId:I

.field private imageView:Landroid/widget/ImageView;

.field private lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private rect:Landroid/graphics/RectF;

.field private textView:Lorg/telegram/ui/Components/AnimatedTextView;


# direct methods
.method public static synthetic $r8$lambda$HJFoXVEhibt7nvsIvy5jHgnwdIs(Lorg/telegram/ui/Cells/DrawerActionCell;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/DrawerActionCell;->lambda$updateIcon$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x18

    const/16 v2, 0x18

    const/16 v3, 0x33

    const/16 v4, 0x13

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 79
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "chats_menuItemIcon"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const/16 v4, 0x33

    const/16 v5, 0x11

    const/16 v6, 0xa

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x1

    invoke-direct {v3, p1, v0, v0, v0}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object v3, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    .line 89
    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const v4, 0x3f19999a    # 0.6f

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x15e

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/AnimatedTextView;->setAnimationProperties(FJJLandroid/animation/TimeInterpolator;)V

    .line 90
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v2, "chats_menuItemText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v2, 0xf

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setIgnoreRTL(Z)V

    .line 94
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x33

    const/16 v5, 0x48

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private synthetic lambda$updateIcon$0(I)V
    .locals 2

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iput p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->currentLottieId:I

    const/16 v1, 0x1c

    invoke-virtual {v0, p1, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 131
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 132
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string v1, "chats_menuItemText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 102
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->currentId:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 105
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->pendingSuggestions:Ljava/util/Set;

    const-string v1, "VALIDATE_PHONE_NUMBER"

    .line 106
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VALIDATE_PASSWORD"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x41480000    # 12.5f

    .line 107
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/16 v1, 0x9

    .line 108
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v1

    const/16 v3, 0x19

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40b00000    # 5.5f

    .line 111
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 112
    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    int-to-float v4, v2

    int-to-float v5, v0

    add-int/2addr v2, v1

    const/16 v1, 0xe

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v1, v2

    const/16 v2, 0x17

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v3, v4, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 113
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_docBackPaint:Landroid/graphics/Paint;

    const-string v1, "chats_archiveBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v2, 0x41380000    # 11.5f

    mul-float v3, v1, v2

    mul-float v1, v1, v2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_docBackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 116
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 117
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 118
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v3, v0

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v4, v1

    float-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float/2addr v5, v0

    float-to-int v0, v5

    iget-object v5, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    add-float/2addr v5, v1

    float-to-int v1, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 176
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/16 v0, 0x10

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x20

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 126
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x30

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setTextAndIcon(ILjava/lang/String;II)V
    .locals 1

    .line 136
    iput p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->currentId:I

    .line 138
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    if-eqz p4, :cond_0

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iput p4, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->currentLottieId:I

    const/16 p2, 0x1c

    invoke-virtual {p1, p4, p2, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 145
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const-string p3, "chats_menuItemIcon"

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p3

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 147
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->clearAnimationDrawable()V

    .line 149
    iput v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->currentLottieId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 152
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setTextAndRectIcon(ILjava/lang/String;III)V
    .locals 0

    .line 50
    iput p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->currentId:I

    .line 52
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0xa

    .line 53
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawableWithIcon(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/CombinedDrawable;

    const/16 p2, 0x20

    .line 54
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/CombinedDrawable;->setCustomSize(II)V

    const/16 p2, 0x14

    .line 55
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    const/4 p2, 0x0

    .line 56
    invoke-static {p1, p4, p2}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    const/4 p2, 0x1

    .line 57
    invoke-static {p1, p5, p2}, Lorg/telegram/ui/ActionBar/Theme;->setCombinedDrawableColor(Landroid/graphics/drawable/Drawable;IZ)V

    .line 58
    iget-object p2, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 60
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public updateIcon(I)V
    .locals 2

    .line 162
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->currentLottieId:I

    if-eq p1, v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v1, Lorg/telegram/ui/Cells/DrawerActionCell$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Cells/DrawerActionCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/DrawerActionCell;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->lottieImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 170
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateText(Ljava/lang/String;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerActionCell;->textView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
