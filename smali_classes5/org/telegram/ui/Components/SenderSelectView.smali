.class public Lorg/telegram/ui/Components/SenderSelectView;
.super Landroid/view/View;
.source "SenderSelectView.java"


# static fields
.field private static final MENU_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lorg/telegram/ui/Components/SenderSelectView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImage:Lorg/telegram/messenger/ImageReceiver;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private menuAnimator:Landroid/animation/ValueAnimator;

.field private menuPaint:Landroid/graphics/Paint;

.field private menuProgress:F

.field private menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private scaleIn:Z

.field private scaleOut:Z

.field private selectorDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$4ucH-5ofiE0DGEhk6MpltQuzMuM(Lorg/telegram/ui/Components/SenderSelectView;ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/SenderSelectView;->lambda$setProgress$2(ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$DuKtwsRZ4M_mnr93wvcB2GgMHs0(Lorg/telegram/ui/Components/SenderSelectView;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SenderSelectView;->lambda$setProgress$3(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Me_nYfdEl-KjHUG3acBVUWrhesM(Lorg/telegram/ui/Components/SenderSelectView;F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/SenderSelectView;->lambda$static$1(Lorg/telegram/ui/Components/SenderSelectView;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$QMuyyF9H_57reAf8-zjq89-Y-VA(Lorg/telegram/ui/Components/SenderSelectView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SenderSelectView;->lambda$setProgress$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qftv9Hzx36ARN1JLk143tuMz9TA(Lorg/telegram/ui/Components/SenderSelectView;)F
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/SenderSelectView;->lambda$static$0(Lorg/telegram/ui/Components/SenderSelectView;)F

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    sget-object v1, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda3;

    sget-object v2, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda4;

    const-string v3, "menuProgress"

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Getter;Lorg/telegram/ui/Components/SimpleFloatPropertyCompat$Setter;)V

    const/high16 v1, 0x42c80000    # 100.0f

    .line 36
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;->setMultiplier(F)Lorg/telegram/ui/Components/SimpleFloatPropertyCompat;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/SenderSelectView;->MENU_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    .line 39
    new-instance p1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->backgroundPaint:Landroid/graphics/Paint;

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    .line 52
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    const/16 v1, 0x1c

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 53
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    invoke-direct {p0}, Lorg/telegram/ui/Components/SenderSelectView;->updateColors()V

    .line 57
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrSendAsPeer:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const-string v1, "AccDescrSendAsPeer"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SenderSelectView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/SenderSelectView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private synthetic lambda$setProgress$2(ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p4, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    div-float/2addr p2, p4

    cmpg-float p2, p5, p2

    if-gtz p2, :cond_1

    .line 188
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleIn:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_0
    div-float/2addr p3, p4

    cmpl-float p2, p5, p3

    if-ltz p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleOut:Z

    if-eqz p2, :cond_1

    :goto_0
    xor-int/lit8 p2, p1, 0x1

    .line 189
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleIn:Z

    .line 190
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleOut:Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$setProgress$3(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    const/4 p3, 0x0

    .line 194
    iput-boolean p3, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleIn:Z

    .line 195
    iput-boolean p3, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleOut:Z

    if-nez p2, :cond_0

    .line 198
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 200
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_1
    return-void
.end method

.method private synthetic lambda$setProgress$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 209
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$static$0(Lorg/telegram/ui/Components/SenderSelectView;)F
    .locals 0

    .line 33
    iget p0, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    return p0
.end method

.method private static synthetic lambda$static$1(Lorg/telegram/ui/Components/SenderSelectView;F)V
    .locals 0

    .line 34
    iput p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateColors()V
    .locals 3

    .line 61
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->backgroundPaint:Landroid/graphics/Paint;

    const-string v1, "chat_messagePanelVoiceBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    const-string v1, "chat_messagePanelVoicePressed"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x10

    .line 63
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const-string/jumbo v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 242
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public getProgress()F
    .locals 1

    .line 232
    iget v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 248
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleOut:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 92
    iget v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    sub-float/2addr v1, v0

    goto :goto_0

    .line 93
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleIn:Z

    if-eqz v0, :cond_1

    .line 94
    iget v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    .line 98
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v1, v0, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 100
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 104
    iget v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 105
    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/SenderSelectView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v0, 0x9

    .line 110
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    add-float/2addr v0, v1

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v6, v1, v0

    iget-object v7, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v0

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v5, v1, v0

    iget-object v7, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuPaint:Landroid/graphics/Paint;

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 84
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    return-void
.end method

.method public setAvatar(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 127
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 128
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 130
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v0, :cond_2

    .line 132
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 134
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrSendAsPeer:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "AccDescrSendAsPeer"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLObject;)V

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/SenderSelectView;->setProgress(FZ)V

    return-void
.end method

.method public setProgress(FZ)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/SenderSelectView;->setProgress(FZZ)V

    return-void
.end method

.method public setProgress(FZZ)V
    .locals 4

    if-eqz p2, :cond_4

    .line 164
    iget-object p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 167
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 168
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p2, 0x0

    .line 170
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleIn:Z

    .line 171
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleOut:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    .line 175
    iget p3, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p3, p3, v1

    .line 176
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v3, Lorg/telegram/ui/Components/SenderSelectView;->MENU_PROGRESS:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v2, p0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v2, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v2, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 177
    iget v3, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    const/4 p2, 0x1

    :cond_2
    mul-float p1, p1, v1

    .line 180
    iput-boolean p2, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleIn:Z

    xor-int/lit8 v0, p2, 0x1

    .line 181
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->scaleOut:Z

    .line 183
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 184
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43e10000    # 450.0f

    .line 185
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 186
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 183
    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p3, p1}, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SenderSelectView;ZFF)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SenderSelectView;)V

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 204
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_0

    :cond_3
    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 206
    iget v1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    aput v1, p3, p2

    aput p1, p3, v0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    .line 207
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 208
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/SenderSelectView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SenderSelectView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 212
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/SenderSelectView$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/SenderSelectView$1;-><init>(Lorg/telegram/ui/Components/SenderSelectView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    iget-object p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 223
    :cond_4
    iput p1, p0, Lorg/telegram/ui/Components/SenderSelectView;->menuProgress:F

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 237
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SenderSelectView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
