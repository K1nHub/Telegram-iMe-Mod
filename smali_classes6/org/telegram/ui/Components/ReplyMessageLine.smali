.class public Lorg/telegram/ui/Components/ReplyMessageLine;
.super Ljava/lang/Object;
.source "ReplyMessageLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;
    }
.end annotation


# instance fields
.field private backgroundColor:I

.field public final backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

.field private backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final backgroundPath:Landroid/graphics/Path;

.field private final clipPath:Landroid/graphics/Path;

.field private color1:I

.field public final color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final color1Paint:Landroid/graphics/Paint;

.field private color2:I

.field public final color2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final color2Paint:Landroid/graphics/Paint;

.field private color2Path:Landroid/graphics/Path;

.field private color3:I

.field public final color3Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final color3Animated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final color3Paint:Landroid/graphics/Paint;

.field private color3Path:Landroid/graphics/Path;

.field private emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private emojiDocumentId:J

.field private emojiLoaded:Z

.field public final emojiLoadedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field public hasColor2:Z

.field public hasColor3:Z

.field private iconCoords:[Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

.field private lastHasColor3:Z

.field private lastHeight:F

.field private lastLoadingTTime:J

.field private final lineClipPath:Landroid/graphics/Path;

.field private loading:Z

.field public final loadingStateT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private loadingT:F

.field private loadingTranslationT:F

.field private nameColor:I

.field public final nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

.field private final parentView:Landroid/view/View;

.field public final radii:[F

.field private final rectF:Landroid/graphics/RectF;

.field private reversedOut:Z

.field public final switchStateT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private switchedCount:I

.field private wasColorId:I

.field private wasMessageId:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 9

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->clipPath:Landroid/graphics/Path;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 37
    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lineClipPath:Landroid/graphics/Path;

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPath:Landroid/graphics/Path;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    .line 47
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    .line 65
    iput-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    .line 66
    new-instance v0, Lorg/telegram/ui/Components/ReplyMessageLine$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ReplyMessageLine$1;-><init>(Lorg/telegram/ui/Components/ReplyMessageLine;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 81
    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x190

    move-object v1, v0

    move-object v2, p1

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 82
    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 83
    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 84
    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Animated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 85
    new-instance v0, Lorg/telegram/ui/Components/AnimatedColor;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedColor;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    .line 86
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 87
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 88
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v5, 0x1b8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoadedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 89
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v5, 0x140

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 90
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ReplyMessageLine;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method

.method private checkColorPathes(F)V
    .locals 10

    .line 572
    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastHeight:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastHasColor3:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eq v0, v2, :cond_4

    .line 573
    :cond_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    const v2, 0x40ca8f5c    # 6.33f

    .line 574
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    .line 575
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    const v3, 0x40551eb8    # 3.33f

    .line 576
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float v4, v3, v1

    .line 579
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    move v5, v4

    :cond_1
    :goto_0
    cmpg-float v6, v5, p1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-gez v6, :cond_2

    .line 581
    iget-object v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    add-float v9, v0, v8

    sub-float v8, v5, v8

    invoke-virtual {v6, v9, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 582
    iget-object v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    add-float v8, v5, v2

    invoke-virtual {v6, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 583
    iget-object v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    add-float/2addr v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 584
    iget-object v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    add-float v8, v5, v1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 585
    iget-object v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    add-float v6, v2, v1

    add-float/2addr v6, v3

    add-float/2addr v5, v6

    .line 588
    iget-boolean v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v6, :cond_1

    add-float/2addr v5, v2

    goto :goto_0

    .line 593
    :cond_2
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v5, :cond_3

    add-float/2addr v4, v2

    .line 595
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    :goto_1
    cmpg-float v5, v4, p1

    if-gez v5, :cond_3

    .line 597
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    add-float v6, v0, v8

    sub-float v9, v4, v8

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 598
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    add-float v9, v4, v2

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 599
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    add-float/2addr v9, v1

    invoke-virtual {v5, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 600
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    add-float v6, v4, v1

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 601
    iget-object v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    add-float v5, v2, v1

    add-float/2addr v5, v3

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    goto :goto_1

    .line 607
    :cond_3
    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastHeight:F

    .line 608
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastHasColor3:Z

    :cond_4
    return-void
.end method

.method private incrementLoadingT()V
    .locals 8

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 339
    iget-object v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    .line 340
    iget v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingT:F

    iget-wide v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastLoadingTTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1e

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingT:F

    .line 341
    iget v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingTranslationT:F

    iget-wide v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastLoadingTTime:J

    sub-long v4, v0, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingTranslationT:F

    .line 342
    iput-wide v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lastLoadingTTime:J

    return-void
.end method

.method private isEmojiLoaded()Z
    .locals 3

    .line 525
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 528
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 530
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoaded:Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private resolveColor(Lorg/telegram/messenger/MessageObject;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    .line 108
    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasColorId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p2, :cond_2

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 110
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasMessageId:I

    if-ne v0, v3, :cond_1

    .line 111
    iget v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    .line 113
    :cond_1
    iput p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasColorId:I

    .line 114
    iput v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->wasMessageId:I

    :cond_2
    if-ltz p2, :cond_3

    const/4 v0, 0x7

    if-ge p2, v0, :cond_3

    .line 117
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget p1, p1, p2

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 118
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 121
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    goto :goto_1

    :cond_4
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 122
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    if-gez p2, :cond_5

    goto :goto_2

    .line 123
    :cond_5
    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v3

    :cond_6
    :goto_2
    if-nez v3, :cond_8

    if-eqz p1, :cond_7

    .line 125
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    goto :goto_3

    :cond_7
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    :goto_3
    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 126
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    return-void

    .line 129
    :cond_8
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 130
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    .line 131
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor3()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    .line 132
    iget p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iget p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    if-eq p2, p3, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    if-eq p1, p3, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    .line 133
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v1, :cond_b

    .line 136
    iput p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    .line 137
    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    :cond_b
    return-void
.end method


# virtual methods
.method public check(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    .line 142
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    const-wide/16 v6, 0x0

    .line 143
    iput-wide v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    const v8, 0x3df5c28f    # 0.12f

    const v9, 0x3dcccccd    # 0.1f

    if-nez v1, :cond_1

    .line 145
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    iput-boolean v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    .line 146
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 147
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    .line 148
    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v1

    return v1

    :cond_1
    const/4 v10, -0x1

    const-wide/16 v11, 0x7

    if-nez p5, :cond_19

    .line 149
    iget v13, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    if-gez v13, :cond_7

    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v13, :cond_19

    .line 152
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    if-nez v2, :cond_7

    .line 153
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result v13

    if-eqz v13, :cond_4

    if-nez v3, :cond_7

    .line 154
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->sponsoredChatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;

    if-nez v13, :cond_7

    .line 155
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v13

    if-eqz v13, :cond_6

    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->sponsoredChatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v13, :cond_6

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v13, :cond_7

    :cond_6
    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v13, :cond_19

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v13, :cond_19

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v13, :cond_19

    :cond_7
    const/4 v13, 0x5

    .line 160
    iget v14, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    if-ltz v14, :cond_8

    goto/16 :goto_8

    .line 162
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v14

    if-eqz v14, :cond_9

    iget-object v14, v1, Lorg/telegram/messenger/MessageObject;->sponsoredChatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    instance-of v15, v14, Lorg/telegram/tgnet/TLRPC$TL_chatInvite;

    if-eqz v15, :cond_9

    .line 163
    iget v14, v14, Lorg/telegram/tgnet/TLRPC$ChatInvite;->color:I

    goto/16 :goto_8

    .line 164
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v14

    if-eqz v14, :cond_b

    iget-object v14, v1, Lorg/telegram/messenger/MessageObject;->sponsoredChatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v14, :cond_b

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$ChatInvite;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v14, :cond_b

    .line 165
    iget v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_a

    .line 166
    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Chat;->color:I

    goto/16 :goto_8

    .line 168
    :cond_a
    iget-wide v2, v14, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    rem-long/2addr v2, v11

    :goto_1
    long-to-int v14, v2

    goto/16 :goto_8

    .line 170
    :cond_b
    iget-object v14, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v14, :cond_10

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v14, :cond_10

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v14, :cond_10

    .line 171
    invoke-static {v14}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    cmp-long v14, v2, v6

    if-gez v14, :cond_d

    .line 173
    iget v14, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 175
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_c

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->color:I

    goto :goto_3

    :cond_c
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    rem-long/2addr v2, v11

    :goto_2
    long-to-int v2, v2

    :goto_3
    move v13, v2

    goto :goto_4

    .line 178
    :cond_d
    iget v14, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 180
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_e

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->color:I

    goto :goto_3

    :cond_e
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    rem-long/2addr v2, v11

    goto :goto_2

    :cond_f
    :goto_4
    move v14, v13

    goto/16 :goto_8

    .line 183
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v13

    if-eqz v13, :cond_14

    if-eqz v2, :cond_14

    .line 184
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-eqz v3, :cond_11

    iget v3, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    goto :goto_5

    :cond_11
    move-object v3, v2

    :goto_5
    if-nez v3, :cond_12

    goto :goto_6

    :cond_12
    move-object v2, v3

    .line 186
    :goto_6
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_13

    .line 187
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->color:I

    goto :goto_7

    .line 189
    :cond_13
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    rem-long/2addr v2, v11

    long-to-int v2, v2

    :goto_7
    move v14, v2

    goto :goto_8

    .line 191
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v13

    if-eqz v13, :cond_16

    if-eqz v2, :cond_16

    .line 192
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_15

    .line 193
    iget v14, v2, Lorg/telegram/tgnet/TLRPC$User;->color:I

    goto :goto_8

    .line 195
    :cond_15
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    rem-long/2addr v2, v11

    goto/16 :goto_1

    .line 197
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v3, :cond_18

    .line 198
    iget v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_17

    .line 199
    iget v14, v3, Lorg/telegram/tgnet/TLRPC$Chat;->color:I

    goto :goto_8

    .line 201
    :cond_17
    iget-wide v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    rem-long/2addr v2, v11

    goto/16 :goto_1

    :cond_18
    move v14, v5

    .line 206
    :goto_8
    invoke-direct {v0, v1, v14, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveColor(Lorg/telegram/messenger/MessageObject;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 207
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    invoke-static {v2, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    .line 208
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    goto/16 :goto_e

    :cond_19
    if-eqz p5, :cond_26

    .line 209
    iget v3, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    if-gez v3, :cond_1b

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_26

    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v13, :cond_26

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-eqz v3, :cond_26

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v3, :cond_1a

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    .line 213
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_1a
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v13, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v13, :cond_26

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v13, :cond_26

    .line 216
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 217
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 218
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 221
    :cond_1b
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isReplyColorsEnabled:Z

    if-nez v3, :cond_1c

    move v3, v10

    goto/16 :goto_d

    .line 224
    :cond_1c
    iget v3, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    if-ltz v3, :cond_1d

    goto/16 :goto_d

    .line 226
    :cond_1d
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 227
    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    :cond_1e
    if-eqz v2, :cond_25

    .line 229
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v13, v3, 0x80

    if-eqz v13, :cond_1f

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$User;->color:I

    goto :goto_9

    :cond_1f
    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    rem-long/2addr v13, v11

    long-to-int v11, v13

    :goto_9
    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_20

    .line 231
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->background_emoji_id:J

    iput-wide v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    :cond_20
    :goto_a
    move v3, v11

    goto/16 :goto_d

    .line 236
    :cond_21
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 237
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 239
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$User;->flags2:I

    and-int/lit16 v13, v3, 0x80

    if-eqz v13, :cond_22

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$User;->color:I

    goto :goto_b

    :cond_22
    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    rem-long/2addr v13, v11

    long-to-int v11, v13

    :goto_b
    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_20

    .line 241
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->background_emoji_id:J

    iput-wide v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto :goto_a

    .line 246
    :cond_23
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isFromChannel()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 247
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v13, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 249
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit8 v13, v3, 0x40

    if-eqz v13, :cond_24

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$Chat;->color:I

    goto :goto_c

    :cond_24
    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    rem-long/2addr v13, v11

    long-to-int v11, v13

    :goto_c
    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_20

    .line 251
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->background_emoji_id:J

    iput-wide v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    goto :goto_a

    :cond_25
    move v3, v5

    .line 259
    :goto_d
    iget-object v2, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/Components/ReplyMessageLine;->resolveColor(Lorg/telegram/messenger/MessageObject;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 260
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    invoke-static {v2, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    .line 261
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    goto :goto_e

    .line 263
    :cond_26
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    .line 264
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    .line 265
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 266
    invoke-static {v2, v9}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    .line 267
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    .line 269
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->shouldDrawWithoutBackground()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    .line 270
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    .line 271
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    .line 272
    iput v10, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v10, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v10, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 273
    iput v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    .line 274
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerReplyNameText:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    goto :goto_13

    .line 275
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 276
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    if-nez v2, :cond_29

    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v2, :cond_28

    goto :goto_f

    :cond_28
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    goto :goto_10

    :cond_29
    :goto_f
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine2:I

    :goto_10
    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 277
    iget-boolean v10, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v10, :cond_2a

    .line 278
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    const v10, 0x3e4ccccd    # 0.2f

    .line 279
    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 280
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    goto :goto_11

    .line 281
    :cond_2a
    iget-boolean v10, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    if-eqz v10, :cond_2b

    .line 282
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    const v10, 0x3eb33333    # 0.35f

    .line 283
    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 285
    :cond_2b
    :goto_11
    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v10

    if-eqz v10, :cond_2c

    goto :goto_12

    :cond_2c
    move v8, v9

    :goto_12
    invoke-static {v2, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    .line 286
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    :cond_2d
    :goto_13
    if-eqz p5, :cond_2e

    .line 288
    iget-wide v1, v1, Lorg/telegram/messenger/MessageObject;->overrideLinkEmoji:J

    const-wide/16 v8, -0x1

    cmp-long v4, v1, v8

    if-eqz v4, :cond_2e

    .line 289
    iput-wide v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    .line 291
    :cond_2e
    iget-wide v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_30

    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v1, :cond_30

    .line 292
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/16 v6, 0xd

    invoke-direct {v1, v2, v5, v4, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;ZII)V

    iput-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 293
    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_2f

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isCellAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_14

    :cond_2f
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 294
    :goto_14
    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    .line 297
    :cond_30
    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v1, :cond_31

    .line 298
    iget-wide v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiDocumentId:J

    invoke-virtual {v1, v6, v7, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 299
    iput-boolean v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoaded:Z

    .line 302
    :cond_31
    iget-object v1, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v1

    return v1
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFF)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 432
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/ReplyMessageLine;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFZZ)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFFZZ)V
    .locals 6

    .line 436
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 437
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x3

    aput p4, p3, v0

    const/4 v0, 0x2

    aput p4, p3, v0

    .line 438
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x5

    aput p4, p3, v0

    const/4 v0, 0x4

    aput p4, p3, v0

    .line 439
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget p4, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float p4, p4

    div-float/2addr p4, v2

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p4, v0

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    const/4 p5, 0x7

    aput p4, p3, p5

    const/4 p5, 0x6

    aput p4, p3, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p6

    move v4, p7

    move v5, p8

    .line 440
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/ReplyMessageLine;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZZ)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FZZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez p5, :cond_0

    .line 466
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 467
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 469
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v5, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p3

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 471
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPath:Landroid/graphics/Path;

    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 474
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v3, :cond_6

    .line 475
    iget-object v3, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emojiLoadedT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ReplyMessageLine;->isEmojiLoaded()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_6

    .line 478
    iget-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->iconCoords:[Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3e99999a    # 0.3f

    const/4 v8, 0x0

    if-nez v4, :cond_1

    const/16 v4, 0xb

    new-array v4, v4, [Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    .line 479
    new-instance v9, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v10, 0x40800000    # 4.0f

    const v11, -0x3f3570a4    # -6.33f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12, v12}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    aput-object v9, v4, v8

    new-instance v9, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v10, 0x41f00000    # 30.0f

    const/high16 v11, 0x40400000    # 3.0f

    const v13, 0x3f47ae14    # 0.78f

    const v14, 0x3f666666    # 0.9f

    invoke-direct {v9, v10, v11, v13, v14}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    const/4 v10, 0x1

    aput-object v9, v4, v10

    const/4 v9, 0x2

    new-instance v10, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v11, 0x42380000    # 46.0f

    const/high16 v15, -0x3e780000    # -17.0f

    const v8, 0x3f19999a    # 0.6f

    invoke-direct {v10, v11, v15, v8, v8}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    aput-object v10, v4, v9

    const/4 v8, 0x3

    new-instance v9, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const v10, 0x428b51ec    # 69.66f

    const v11, -0x40d58106    # -0.666f

    const v15, 0x3f5eb852    # 0.87f

    const v5, 0x3f333333    # 0.7f

    invoke-direct {v9, v10, v11, v15, v5}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    aput-object v9, v4, v8

    const/4 v8, 0x4

    new-instance v9, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v10, 0x42d60000    # 107.0f

    const v11, -0x3eb66666    # -12.6f

    const v15, 0x3f83d70a    # 1.03f

    invoke-direct {v9, v10, v11, v15, v7}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    aput-object v9, v4, v8

    const/4 v8, 0x5

    new-instance v9, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v10, 0x424c0000    # 51.0f

    const/high16 v11, 0x41c00000    # 24.0f

    invoke-direct {v9, v10, v11, v12, v6}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    aput-object v9, v4, v8

    const/4 v8, 0x6

    new-instance v9, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const v10, 0x40ca8f5c    # 6.33f

    const/high16 v11, 0x41a00000    # 20.0f

    const v15, 0x3f451eb8    # 0.77f

    invoke-direct {v9, v10, v11, v15, v5}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    aput-object v9, v4, v8

    const/4 v5, 0x7

    new-instance v8, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v17, -0x3e680000    # -19.0f

    const/high16 v18, 0x41400000    # 12.0f

    const v19, 0x3f4ccccd    # 0.8f

    const v20, 0x3f19999a    # 0.6f

    const/16 v21, 0x1

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v21}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFFZ)V

    aput-object v8, v4, v5

    const/16 v5, 0x8

    new-instance v8, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v9, 0x41d00000    # 26.0f

    const/high16 v10, 0x42280000    # 42.0f

    invoke-direct {v8, v9, v10, v13, v14}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    aput-object v8, v4, v5

    const/16 v5, 0x9

    new-instance v8, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v17, -0x3e500000    # -22.0f

    const/high16 v18, 0x42100000    # 36.0f

    const v19, 0x3f333333    # 0.7f

    const/high16 v20, 0x3f000000    # 0.5f

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v21}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFFZ)V

    aput-object v8, v4, v5

    new-instance v5, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x42400000    # 48.0f

    const v10, 0x3ecccccd    # 0.4f

    invoke-direct {v5, v8, v9, v12, v10}, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;-><init>(FFFF)V

    const/16 v8, 0xa

    aput-object v5, v4, v8

    iput-object v4, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->iconCoords:[Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    .line 494
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 495
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 497
    iget v4, v2, Landroid/graphics/RectF;->right:F

    const/16 v5, 0xf

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    if-eqz p4, :cond_2

    const/16 v5, 0xc

    .line 499
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 501
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget v8, v2, Landroid/graphics/RectF;->top:F

    const/16 v9, 0x15

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 503
    iget-object v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReplyMessageLine;->getColor()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 504
    iget-object v8, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v9, v9, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/16 v10, 0x8c

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v2, v2, v10

    if-gez v2, :cond_3

    move v6, v7

    :cond_3
    mul-float/2addr v9, v6

    float-to-int v2, v9

    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    const/4 v8, 0x0

    .line 505
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->iconCoords:[Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;

    array-length v6, v2

    if-ge v8, v6, :cond_5

    .line 506
    aget-object v2, v2, v8

    .line 507
    iget-boolean v6, v2, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->q:Z

    if-eqz v6, :cond_4

    if-nez p4, :cond_4

    const/16 v9, 0xa

    goto :goto_1

    .line 510
    :cond_4
    iget-object v6, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/high16 v7, 0x42990000    # 76.5f

    iget v9, v2, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->a:F

    mul-float/2addr v9, v7

    float-to-int v7, v9

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    .line 511
    iget v6, v2, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->x:F

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v4, v6

    .line 512
    iget v7, v2, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->y:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    const/16 v9, 0xa

    .line 513
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget v2, v2, Lorg/telegram/ui/Components/ReplyMessageLine$IconCoords;->s:F

    mul-float/2addr v10, v2

    mul-float/2addr v10, v3

    .line 514
    iget-object v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    sub-float v11, v6, v10

    float-to-int v11, v11

    sub-float v12, v7, v10

    float-to-int v12, v12

    add-float/2addr v6, v10

    float-to-int v6, v6

    add-float/2addr v7, v10

    float-to-int v7, v7

    invoke-virtual {v2, v11, v12, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 515
    iget-object v2, v0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 518
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return-void
.end method

.method public drawLine(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 346
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/ReplyMessageLine;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public drawLine(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 11

    .line 350
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 353
    sget v0, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 354
    iget-object v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    mul-int/lit8 v6, v0, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->clipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v0, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 357
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v1

    invoke-static {v1, p3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v1

    invoke-static {v1, p3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(I)I

    move-result v1

    invoke-static {v1, p3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 364
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result p3

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 365
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    if-nez v1, :cond_0

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 369
    iget-object v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 370
    iget-object v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    int-to-float v4, v1

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 371
    iget-object v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 372
    iget-object v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 374
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReplyMessageLine;->incrementLoadingT()V

    .line 376
    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingT:F

    const/high16 v3, 0x43700000    # 240.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v1, v3

    float-to-double v4, v1

    const-wide v6, 0x3feb333340000000L    # 0.8500000238418579

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    .line 377
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3fc00000    # 1.5f

    add-float/2addr v4, v5

    const/high16 v6, 0x40600000    # 3.5f

    rem-float/2addr v4, v6

    mul-float/2addr v4, v3

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v4, v0, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    add-float/2addr v1, v5

    rem-float/2addr v1, v6

    sub-float/2addr v1, v5

    mul-float/2addr v1, v3

    .line 378
    invoke-static {v1, v0, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 380
    iget-object v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    iget v5, p2, Landroid/graphics/RectF;->left:F

    iget v6, p2, Landroid/graphics/RectF;->top:F

    .line 382
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v8

    sget-object v9, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v9, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    sub-float v4, v7, v4

    invoke-static {v0, v4, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    mul-float/2addr v8, v4

    add-float/2addr v6, v8

    iget v4, p2, Landroid/graphics/RectF;->left:F

    const/4 v8, 0x6

    .line 383
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    iget v8, p2, Landroid/graphics/RectF;->top:F

    .line 384
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v9

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v10, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float v1, v7, v1

    invoke-static {v7, v1, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p3

    mul-float/2addr v9, p3

    add-float/2addr v8, v9

    .line 380
    invoke-virtual {v3, v5, v6, v4, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 386
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lineClipPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->rewind()V

    .line 387
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lineClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->rectF:Landroid/graphics/RectF;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p3, v1, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 388
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->lineClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 p3, 0x1

    .line 391
    iget-object v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    move p3, v2

    .line 393
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 394
    iget-object v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v1

    cmpl-float v3, v1, v0

    if-lez v3, :cond_3

    .line 396
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 397
    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 398
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReplyMessageLine;->incrementLoadingT()V

    .line 400
    iget-object v3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v3

    .line 402
    iget-boolean v4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor3:Z

    if-eqz v4, :cond_1

    .line 403
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    const v6, 0x4197eb85    # 18.99f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/ReplyMessageLine$$ExternalSyntheticBackport0;->m(II)I

    move-result v5

    goto :goto_1

    .line 405
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    const v6, 0x414a8f5c    # 12.66f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/ReplyMessageLine$$ExternalSyntheticBackport0;->m(II)I

    move-result v5

    :goto_1
    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 408
    iget v5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingTranslationT:F

    iget-object v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchStateT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v7, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->switchedCount:I

    mul-int/lit16 v7, v7, 0x1a9

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v6

    add-float/2addr v5, v6

    iget-boolean v6, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    if-eqz v6, :cond_2

    const/16 v2, 0x64

    :cond_2
    int-to-float v2, v2

    add-float/2addr v5, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v5, v2

    const/16 v2, 0x1e

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v5, v2

    rem-float/2addr v5, v4

    neg-float v2, v5

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 410
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ReplyMessageLine;->checkColorPathes(F)V

    .line 411
    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 416
    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p2

    .line 417
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    int-to-float v1, p2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 418
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color3Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 421
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    if-eqz p3, :cond_4

    .line 425
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 428
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawLoadingBackground(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFF)V
    .locals 5

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget v1, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v3, 0x0

    aput p3, v0, v3

    .line 539
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x3

    aput p4, p3, v0

    const/4 v0, 0x2

    aput p4, p3, v0

    .line 540
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x5

    aput p4, p3, v0

    const/4 v0, 0x4

    aput p4, p3, v0

    .line 541
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    sget p4, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    int-to-float p4, p4

    div-float/2addr p4, v2

    float-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p4, v2

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    const/4 p5, 0x7

    aput p4, p3, p5

    const/4 p5, 0x6

    aput p4, p3, p5

    .line 543
    iget-boolean p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/telegram/ui/Components/LoadingDrawable;->isDisappearing()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz p1, :cond_3

    .line 567
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    goto :goto_1

    .line 544
    :cond_1
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-nez p3, :cond_2

    .line 545
    new-instance p3, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {p3}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    .line 546
    invoke-virtual {p3, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    .line 547
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 p4, 0x40600000    # 3.5f

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/LoadingDrawable;->setGradientScale(F)V

    .line 548
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/LoadingDrawable;->setSpeed(F)V

    .line 551
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget p4, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const p5, 0x3dcccccd    # 0.1f

    .line 552
    invoke-static {p4, p5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p4

    iget p5, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const v0, 0x3e99999a    # 0.3f

    .line 553
    invoke-static {p5, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p5

    iget v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    .line 554
    invoke-static {v2, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const/high16 v3, 0x3fa00000    # 1.25f

    .line 555
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v2

    .line 551
    invoke-virtual {p3, p4, p5, v0, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(IIII)V

    .line 558
    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/LoadingDrawable;->setBounds(Landroid/graphics/RectF;)V

    .line 559
    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object p3, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->radii:[F

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadii([F)V

    .line 560
    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object p2, p2, Lorg/telegram/ui/Components/LoadingDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 562
    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p6, p3

    float-to-int p3, p6

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/LoadingDrawable;->setAlpha(I)V

    .line 563
    iget-object p2, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/LoadingDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 565
    iget-object p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->parentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 98
    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->reversedOut:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    :goto_0
    return v0
.end method

.method public resetAnimation()V
    .locals 3

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color1:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Animated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->color2Alpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->hasColor2:Z

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->nameColor:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColorAnimated:Lorg/telegram/ui/Components/AnimatedColor;

    iget v1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedColor;->set(IZ)I

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->emoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->resetAnimation()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 102
    iput p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundColor:I

    return-void
.end method

.method public setLoading(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 322
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 323
    iput v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loadingT:F

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->disappear()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 327
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    if-nez v0, :cond_1

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->resetDisappear()V

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->backgroundLoadingDrawable:Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoadingDrawable;->reset()V

    .line 333
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReplyMessageLine;->loading:Z

    return-void
.end method
