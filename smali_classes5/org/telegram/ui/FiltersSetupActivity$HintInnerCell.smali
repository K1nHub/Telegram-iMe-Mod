.class public Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;
.super Landroid/widget/FrameLayout;
.source "FiltersSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FiltersSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HintInnerCell"
.end annotation


# instance fields
.field private imageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private messageTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$qW3vYAmxc8eTvUrUDGgWZSzrrv0(Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;ILjava/lang/CharSequence;)V
    .locals 7

    .line 344
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 346
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, p2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 348
    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v0, Lorg/telegram/messenger/R$raw;->fork_topics:I

    const/16 v1, 0x6e

    invoke-virtual {p3, v0, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v1, 0x5a

    invoke-virtual {v0, p3, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 352
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 353
    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p3}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 354
    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 356
    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 357
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v0, 0x6e

    const/16 v1, 0x6e

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 359
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v0, 0x5a

    const/16 v1, 0x5a

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance p3, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    .line 368
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    const/4 p2, 0x1

    const/high16 p3, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 370
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 371
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x31

    const/16 v3, 0x28

    const/16 v4, 0x79

    const/16 v5, 0x28

    const/16 v6, 0x18

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 361
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    .line 362
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setProgress(F)V

    .line 363
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 377
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
