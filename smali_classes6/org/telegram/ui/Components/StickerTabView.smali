.class public Lorg/telegram/ui/Components/StickerTabView;
.super Landroid/widget/FrameLayout;
.source "StickerTabView.java"


# static fields
.field private static indexPointer:I


# instance fields
.field public dragOffset:F

.field dragOffsetAnimator:Landroid/animation/ValueAnimator;

.field expanded:Z

.field hasSavedLeft:Z

.field iconView:Landroid/widget/ImageView;

.field imageView:Lorg/telegram/ui/Components/BackupImageView;

.field public final index:I

.field public inited:Z

.field public isChatSticker:Z

.field lastLeft:F

.field roundImage:Z

.field public svgThumb:Lorg/telegram/messenger/SvgHelper$SvgDrawable;

.field textView:Landroid/widget/TextView;

.field private textWidth:F

.field public type:I

.field visibleView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$JwRNCNVGJtAiyqBlW5nGCw13Kmc(Lorg/telegram/ui/Components/StickerTabView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Components/StickerTabView;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    iput p2, p0, Lorg/telegram/ui/Components/StickerTabView;->type:I

    .line 62
    sget v0, Lorg/telegram/ui/Components/StickerTabView;->indexPointer:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/telegram/ui/Components/StickerTabView;->indexPointer:I

    iput v0, p0, Lorg/telegram/ui/Components/StickerTabView;->index:I

    const/4 v0, 0x6

    const/16 v1, 0x11

    const/16 v2, 0x1a

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p2, v4, :cond_0

    .line 64
    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 65
    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 66
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 67
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 68
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    goto :goto_1

    :cond_0
    if-eq p2, v3, :cond_2

    const/16 v4, 0x64

    if-ne p2, v4, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p2, v4}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 77
    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 78
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 79
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 80
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->iconView:Landroid/widget/ImageView;

    .line 72
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->iconView:Landroid/widget/ImageView;

    const/16 v0, 0x18

    invoke-static {v0, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->iconView:Landroid/widget/ImageView;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    .line 84
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/StickerTabView$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/StickerTabView$1;-><init>(Lorg/telegram/ui/Components/StickerTabView;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    .line 90
    new-instance p1, Lorg/telegram/ui/Components/StickerTabView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/StickerTabView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickerTabView;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 95
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    const/high16 p2, 0x41300000    # 11.0f

    invoke-virtual {p1, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x51

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v6, 0xa

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StickerTabView;->textWidth:F

    :cond_0
    return-void
.end method


# virtual methods
.method public animateIfPositionChanged(Landroid/view/ViewGroup;)V
    .locals 4

    .line 169
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/StickerTabView;->lastLeft:F

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickerTabView;->hasSavedLeft:Z

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/StickerTabView;->dragOffset:F

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerTabView;->dragOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerTabView;->dragOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 175
    iget v1, p0, Lorg/telegram/ui/Components/StickerTabView;->dragOffset:F

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/StickerTabView;->dragOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 176
    new-instance v1, Lorg/telegram/ui/Components/StickerTabView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/StickerTabView$2;-><init>(Lorg/telegram/ui/Components/StickerTabView;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerTabView;->dragOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/StickerTabView$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/StickerTabView$3;-><init>(Lorg/telegram/ui/Components/StickerTabView;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->dragOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 194
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/StickerTabView;->hasSavedLeft:Z

    return-void
.end method

.method public getTextWidth()F
    .locals 1

    .line 106
    iget v0, p0, Lorg/telegram/ui/Components/StickerTabView;->textWidth:F

    return v0
.end method

.method public saveXPosition()V
    .locals 1

    .line 163
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/StickerTabView;->lastLeft:F

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lorg/telegram/ui/Components/StickerTabView;->hasSavedLeft:Z

    .line 165
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 5

    .line 110
    iget v0, p0, Lorg/telegram/ui/Components/StickerTabView;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 113
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickerTabView;->expanded:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/high16 v2, 0x41c00000    # 24.0f

    goto :goto_0

    :cond_1
    const/high16 v2, 0x41d00000    # 26.0f

    :goto_0
    if-ne v0, v1, :cond_2

    const/high16 v0, 0x42180000    # 38.0f

    goto :goto_1

    :cond_2
    const/high16 v0, 0x42300000    # 44.0f

    .line 117
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz p1, :cond_3

    move v4, v0

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 118
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz p1, :cond_4

    move v2, v0

    :cond_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    const/16 p1, 0x8

    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget p1, p0, Lorg/telegram/ui/Components/StickerTabView;->type:I

    if-eq p1, v1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/ui/Components/StickerTabView;->roundImage:Z

    if-eqz p1, :cond_6

    .line 123
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    :cond_6
    return-void
.end method

.method public setRoundImage()V
    .locals 1

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lorg/telegram/ui/Components/StickerTabView;->roundImage:Z

    return-void
.end method

.method public updateExpandProgress(F)V
    .locals 9

    .line 128
    iget v0, p0, Lorg/telegram/ui/Components/StickerTabView;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 131
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/StickerTabView;->expanded:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/high16 v4, 0x41c00000    # 24.0f

    goto :goto_0

    :cond_1
    const/high16 v4, 0x41d00000    # 26.0f

    :goto_0
    if-ne v0, v1, :cond_2

    const/high16 v0, 0x42180000    # 38.0f

    goto :goto_1

    :cond_2
    const/high16 v0, 0x42300000    # 44.0f

    :goto_1
    const/high16 v1, 0x42040000    # 33.0f

    sub-float/2addr v1, v4

    .line 134
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    const/high16 v6, 0x42100000    # 36.0f

    sub-float/2addr v6, v4

    .line 135
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 136
    sget v7, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->EXPANDED_WIDTH:F

    sub-float/2addr v7, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    const/high16 v8, 0x42ac0000    # 86.0f

    sub-float/2addr v8, v0

    .line 137
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    .line 139
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    sub-float/2addr v6, v8

    sub-float/2addr v2, p1

    mul-float/2addr v6, v2

    const/16 v8, 0x8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, p1

    sub-float/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 140
    iget-object v5, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    sub-float/2addr v1, v7

    mul-float/2addr v1, v2

    invoke-virtual {v5, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 141
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v6, p1, v5

    div-float/2addr v6, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 142
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    const/16 v5, 0x28

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 143
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerTabView;->textView:Landroid/widget/TextView;

    const/16 v5, 0xc

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 146
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 147
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    div-float/2addr v4, v0

    mul-float/2addr v4, v2

    add-float/2addr v4, p1

    .line 150
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 151
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    .line 154
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 155
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 156
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 157
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerTabView;->visibleView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    :goto_2
    return-void
.end method
