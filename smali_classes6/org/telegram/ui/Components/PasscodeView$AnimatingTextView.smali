.class Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;
.super Landroid/widget/FrameLayout;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PasscodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatingTextView"
.end annotation


# instance fields
.field private characterTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private dotRunnable:Ljava/lang/Runnable;

.field private dotTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 224
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 230
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    .line 231
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x1

    const/high16 v5, 0x42100000    # 36.0f

    .line 232
    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v6, 0x11

    .line 233
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v7, 0x0

    .line 234
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    const/16 v8, 0x19

    .line 235
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setPivotX(F)V

    .line 236
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setPivotY(F)V

    const/16 v9, 0x32

    const/16 v10, 0x33

    .line 237
    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {p0, v2, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v11, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 243
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 244
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    const-string v3, "\u2022"

    .line 245
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotX(F)V

    .line 247
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setPivotY(F)V

    .line 248
    invoke-static {v9, v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Z)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->eraseAllCharacters(Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Ljava/lang/Runnable;
    .locals 0

    .line 214
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Ljava/util/ArrayList;
    .locals 0

    .line 214
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Ljava/util/ArrayList;
    .locals 0

    .line 214
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 214
    iget-object p0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 214
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private eraseAllCharacters(Z)V
    .locals 8

    .line 449
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 453
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 454
    iput-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 456
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 457
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 458
    iput-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 460
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 462
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 465
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 466
    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    const/4 v6, 0x1

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_3

    .line 467
    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v6, [F

    aput v1, v7, v2

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v6, [F

    aput v1, v7, v2

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v6, [F

    aput v1, v7, v2

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 473
    invoke-virtual {v4}, Landroid/widget/TextView;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_4

    .line 474
    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v6, [F

    aput v1, v7, v2

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v6, [F

    aput v1, v7, v2

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v6, [F

    aput v1, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    :cond_5
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 483
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$4;-><init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 491
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_6
    :goto_1
    if-ge v2, v0, :cond_7

    .line 494
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 495
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method private getXForTextView(I)I
    .locals 4

    .line 254
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x1e

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    mul-int v1, v1, v3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    mul-int p1, p1, v1

    add-int/2addr v0, p1

    const/16 p1, 0xa

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public appendCharacter(Ljava/lang/String;)V
    .locals 10

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 262
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 264
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 268
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 270
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 273
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 275
    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v3, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object p1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    fill-array-data v5, :array_1

    invoke-static {v3, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    fill-array-data v5, :array_2

    invoke-static {v3, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object p1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v4, [F

    const/16 v6, 0x14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    aput v7, v5, v8

    const/4 v7, 0x1

    const/4 v9, 0x0

    aput v9, v5, v7

    invoke-static {v3, p1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 280
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 281
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 282
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v4, [F

    fill-array-data v5, :array_3

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v4, [F

    fill-array-data v5, :array_4

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v8

    aput v9, v4, v7

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, v2, 0x1

    :goto_1
    if-ge p1, v1, :cond_3

    .line 287
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 288
    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_1

    .line 289
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v7, [F

    aput v9, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v7, [F

    aput v9, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    aput v9, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 295
    invoke-virtual {v3}, Landroid/widget/TextView;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_2

    .line 296
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v7, [F

    aput v9, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v7, [F

    aput v9, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v7, [F

    aput v9, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 302
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 303
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 305
    :cond_4
    new-instance p1, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;-><init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x5dc

    .line 336
    invoke-static {p1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v2, :cond_5

    .line 339
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 340
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v7, [F

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v7, [F

    aput v9, v4, v8

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v7, [F

    aput v9, v4, v8

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v9, v4, v8

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v7, [F

    aput v9, v4, v8

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 346
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v7, [F

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v7, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v8

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v8

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v8

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v7, [F

    aput v9, v4, v8

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_2

    .line 353
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_6

    .line 354
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 356
    :cond_6
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    .line 357
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 359
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$2;-><init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 367
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public eraseLastCharacter()Z
    .locals 10

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    .line 383
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 385
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 388
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    iget-object v2, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 391
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    move v4, v2

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_4

    .line 395
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 396
    invoke-virtual {v5}, Landroid/widget/TextView;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    .line 397
    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v3, [F

    aput v7, v8, v1

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v3, [F

    aput v7, v8, v1

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    aput v7, v8, v1

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v3, [F

    aput v7, v8, v1

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v3, [F

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v1

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 405
    invoke-virtual {v5}, Landroid/widget/TextView;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_3

    .line 406
    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v3, [F

    aput v7, v8, v1

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v3, [F

    aput v7, v8, v1

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    aput v7, v8, v1

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v3, [F

    aput v7, v8, v1

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v3, [F

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 415
    iget-object v4, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_6

    .line 419
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 420
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v3, [F

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v5, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 422
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v3, [F

    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 425
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    .line 426
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 427
    iput-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 430
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_8

    .line 431
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 433
    :cond_8
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    .line 434
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 435
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$3;-><init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 444
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return v3
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 503
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 504
    iput-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotRunnable:Ljava/lang/Runnable;

    .line 506
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 508
    iput-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->currentAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 512
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 513
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 514
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 515
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 516
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 517
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 518
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 520
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 521
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 522
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 523
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 524
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 525
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->getXForTextView(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    goto :goto_1

    .line 527
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->characterTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 528
    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->dotTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method
