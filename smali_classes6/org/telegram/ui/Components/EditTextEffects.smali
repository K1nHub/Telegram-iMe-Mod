.class public Lorg/telegram/ui/Components/EditTextEffects;
.super Landroid/widget/EditText;
.source "EditTextEffects.java"


# static fields
.field private static final SPOILER_TIMEOUT:I = 0x2710


# instance fields
.field private animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field protected animatedEmojiOffsetX:I

.field protected animatedEmojiRawDraw:Z

.field protected animatedEmojiRawDrawFps:I

.field private clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

.field private clipToPadding:Z

.field private isSpoilersRevealed:Z

.field private lastLayout:Landroid/text/Layout;

.field private lastRippleX:F

.field private lastRippleY:F

.field private lastTextLength:I

.field private path:Landroid/graphics/Path;

.field private postedSpoilerTimeout:Z

.field private rect:Landroid/graphics/Rect;

.field private selEnd:I

.field private selStart:I

.field private shouldRevealSpoilersByTouch:Z

.field private spoilerTimeout:Ljava/lang/Runnable;

.field private spoilers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private spoilersPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private suppressOnTextChanged:Z


# direct methods
.method public static synthetic $r8$lambda$JHgOyuzHtkHaYduuZEgh17aNYz8(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Nnzf0lg5CJRFprOAHjN7YagRi7k(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$RKntzLrhLu07iuPMWBhE4HF8HfI(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$onSpoilerClicked$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$UmqOGgjNDOSt7J8k6p03seMojxg(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$onSpoilerClicked$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$atCebbmYW8pml9_1p_LtNWsVFsI(Lorg/telegram/ui/Components/EditTextEffects;Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EditTextEffects;->onSpoilerClicked(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$v6JNPigf6SD5bhGaaj9rWF1815s(Lorg/telegram/ui/Components/EditTextEffects;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->lambda$new$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 33
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/EditTextEffects;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    .line 51
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->shouldRevealSpoilersByTouch:Z

    .line 56
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastLayout:Landroid/text/Layout;

    .line 73
    new-instance p1, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    .line 86
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    .line 92
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 93
    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    new-instance p3, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;-><init>(Landroid/view/View;Ljava/util/List;Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Components/EditTextEffects;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method private checkSpoilerTimeout()V
    .locals 10

    .line 135
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    instance-of v1, v0, Landroid/text/Spannable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 137
    check-cast v0, Landroid/text/Spannable;

    .line 138
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v4, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v0, v3, v1, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/TextStyleSpan;

    .line 139
    array-length v4, v1

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    .line 140
    invoke-interface {v0, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 141
    invoke-virtual {v6}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    iget v6, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    if-le v7, v6, :cond_1

    iget v9, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    if-lt v8, v9, :cond_3

    :cond_1
    if-le v6, v7, :cond_2

    if-lt v6, v8, :cond_3

    :cond_2
    iget v6, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    if-le v6, v7, :cond_4

    if-ge v6, v8, :cond_4

    .line 144
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 145
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    move v3, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 152
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    if-eqz v0, :cond_6

    if-nez v3, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    if-nez v0, :cond_6

    .line 153
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method private invalidateSpoilers()V
    .locals 2

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 350
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 356
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 358
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->recordPositions(Z)V

    .line 360
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/widget/TextView;Ljava/util/Stack;Ljava/util/List;)V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 362
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->recordPositions(Z)V

    .line 365
    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setSpoilersRevealed(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 80
    new-instance v0, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 6

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    .line 75
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    .line 77
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    new-instance v1, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    .line 81
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 82
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 83
    iget v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleX:F

    iget v4, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleY:F

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v0, v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFFZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$onSpoilerClicked$3()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->checkSpoilerTimeout()V

    return-void
.end method

.method private synthetic lambda$onSpoilerClicked$4()V
    .locals 1

    .line 107
    new-instance v0, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onSpoilerClicked(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 6

    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    iput p2, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleX:F

    .line 101
    iput p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleY:F

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    .line 104
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    .line 106
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setSpoilersRevealed(ZZ)V

    .line 107
    new-instance v0, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result p1

    int-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 114
    invoke-virtual {v1, p2, p3, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 239
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->shouldRevealSpoilersByTouch:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 242
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 243
    invoke-super {p0, v0}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 244
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 248
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public incrementFrames(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->incrementFrames(I)V

    :cond_0
    return-void
.end method

.method public invalidateEffects()V
    .locals 5

    .line 334
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 336
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/TextStyleSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/TextStyleSpan;

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    .line 337
    invoke-virtual {v2}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/TextStyleSpan;->setSpoilerRevealed(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 160
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v11, p1

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 278
    iget-boolean v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->clipToPadding:Z

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v11, v12, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 281
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 282
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 283
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 284
    iget-object v3, v0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v2

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 287
    invoke-virtual {p0, v12}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    .line 288
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 289
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v13, 0x0

    if-eqz v1, :cond_3

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 291
    iget v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiOffsetX:I

    int-to-float v1, v1

    invoke-virtual {v11, v1, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 292
    iget-boolean v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiRawDraw:Z

    const/4 v2, 0x6

    if-eqz v1, :cond_2

    .line 293
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/EditText;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v7, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->computeVerticalScrollExtent()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v8, v1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    iget v14, v0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiRawDrawFps:I

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v14

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawRawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFI)V

    goto :goto_1

    .line 295
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/EditText;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v7, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->computeVerticalScrollExtent()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v8, v1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 297
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 299
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 302
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v11, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 303
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 304
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 305
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v2, v0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    .line 306
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v11, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 307
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v11, v13, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 311
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v12, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 313
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    invoke-virtual {v11, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 314
    iget-object v1, v0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 315
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 316
    iget-object v4, v0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v6, :cond_6

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_7

    :cond_6
    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v4, :cond_5

    if-lt v6, v5, :cond_5

    .line 317
    :cond_7
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 318
    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 321
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 225
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 226
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 119
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 121
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    .line 125
    iput p2, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->checkSpoilerTimeout()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 179
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateEffects()V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 185
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-nez v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateEffects()V

    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 190
    instance-of p1, p1, Landroid/text/Spannable;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    .line 192
    invoke-virtual {v0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p2

    float-to-int p2, p2

    .line 193
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 196
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int/2addr p4, p3

    .line 198
    iget p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    add-int/2addr p3, p4

    iput p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    .line 199
    iget p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    add-int/2addr p3, p4

    iput p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    int-to-float p2, p2

    int-to-float p1, p1

    .line 200
    invoke-direct {p0, v1, p2, p1}, Lorg/telegram/ui/Components/EditTextEffects;->onSpoilerClicked(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 206
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 209
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    .line 210
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public recycleEmojis()V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .line 369
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->clipToPadding:Z

    return-void
.end method

.method public setShouldRevealSpoilersByTouch(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->shouldRevealSpoilersByTouch:Z

    return-void
.end method

.method public setSpoilersRevealed(ZZ)V
    .locals 7

    .line 255
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    .line 256
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 258
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/TextStyleSpan;

    .line 259
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 260
    invoke-virtual {v5}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    invoke-virtual {v5, p1}, Lorg/telegram/ui/Components/TextStyleSpan;->setSpoilerRevealed(Z)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    .line 266
    sget-object p1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 267
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 268
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-eqz p2, :cond_2

    .line 271
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 215
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 220
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public updateAnimatedEmoji(Z)V
    .locals 5

    .line 325
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez p1, :cond_2

    .line 326
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastLayout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-ne p1, v2, :cond_2

    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastTextLength:I

    if-eq p1, v0, :cond_3

    .line 327
    :cond_2
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getCacheTypeForEnterView()I

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1, p0, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 328
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastLayout:Landroid/text/Layout;

    .line 329
    iput v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastTextLength:I

    :cond_3
    return-void
.end method
