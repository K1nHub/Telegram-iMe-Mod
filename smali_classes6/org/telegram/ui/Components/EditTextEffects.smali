.class public Lorg/telegram/ui/Components/EditTextEffects;
.super Landroid/widget/EditText;
.source "EditTextEffects.java"


# static fields
.field private static allowHackingTextCanvasCache:Ljava/lang/Boolean;


# instance fields
.field private animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

.field private animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

.field private clipToPadding:Z

.field public drawAnimatedEmojiDrawables:Z

.field private isSpoilersRevealed:Z

.field private lastLayout:Landroid/text/Layout;

.field private lastRippleX:F

.field private lastRippleY:F

.field private lastText2Length:I

.field private lastTextLength:I

.field protected offsetY:F

.field private path:Landroid/graphics/Path;

.field private postedSpoilerTimeout:Z

.field private quoteBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/QuoteSpan$Block;",
            ">;"
        }
    .end annotation
.end field

.field public quoteColor:I

.field private quoteUpdateLayout:[Z

.field private quoteUpdatesTries:I

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

.field public suppressOnTextChanged:Z

.field public wrapCanvasToFixClipping:Z

.field private wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;


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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    .line 54
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->shouldRevealSpoilersByTouch:Z

    .line 60
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastLayout:Landroid/text/Layout;

    .line 72
    new-instance p1, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    .line 85
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    .line 309
    invoke-static {}, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvas()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrapCanvasToFixClipping:Z

    .line 91
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 92
    new-instance p1, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    iget-object p2, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    new-instance p3, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-direct {p1, p0, p2, p3}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;-><init>(Landroid/view/View;Ljava/util/List;Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector$OnSpoilerClickedListener;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    :cond_0
    return-void
.end method

.method public static allowHackingTextCanvas()Z
    .locals 3

    .line 295
    sget-object v0, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvasCache:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "honor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 299
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 300
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediapad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 296
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvasCache:Ljava/lang/Boolean;

    .line 306
    :cond_3
    sget-object v0, Lorg/telegram/ui/Components/EditTextEffects;->allowHackingTextCanvasCache:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private checkSpoilerTimeout()V
    .locals 10

    .line 134
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

    .line 135
    :goto_0
    instance-of v1, v0, Landroid/text/Spannable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 136
    check-cast v0, Landroid/text/Spannable;

    .line 137
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v4, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v0, v3, v1, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/TextStyleSpan;

    .line 138
    array-length v4, v1

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    .line 139
    invoke-interface {v0, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 140
    invoke-virtual {v6}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 141
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

    .line 143
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 144
    iput-boolean v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    move v3, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 151
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    if-eqz v0, :cond_6

    if-nez v3, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    if-nez v0, :cond_6

    .line 152
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 79
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setSpoilersRevealed(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    .line 79
    new-instance v0, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 6

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    .line 74
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    .line 76
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    new-instance v1, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    .line 80
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

    .line 81
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

    .line 82
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

    .line 107
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    .line 108
    invoke-direct {p0}, Lorg/telegram/ui/Components/EditTextEffects;->checkSpoilerTimeout()V

    return-void
.end method

.method private synthetic lambda$onSpoilerClicked$4()V
    .locals 1

    .line 106
    new-instance v0, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onSpoilerClicked(Lorg/telegram/ui/Components/spoilers/SpoilerEffect;FF)V
    .locals 6

    .line 97
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    iput p2, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleX:F

    .line 100
    iput p3, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastRippleY:F

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->postedSpoilerTimeout:Z

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    .line 105
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/EditTextEffects;->setSpoilersRevealed(ZZ)V

    .line 106
    new-instance v0, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EditTextEffects$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextEffects;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setOnRippleEndCallback(Ljava/lang/Runnable;)V

    .line 111
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

    .line 112
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

    .line 113
    invoke-virtual {v1, p2, p3, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->startRipple(FFF)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 246
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->shouldRevealSpoilersByTouch:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->clickDetector:Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersClickDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 249
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 250
    invoke-super {p0, v0}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 251
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 255
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

.method public getOffsetY()F
    .locals 1

    .line 290
    iget v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    return v0
.end method

.method public invalidateEffects()V
    .locals 5

    .line 420
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 422
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

    .line 423
    invoke-virtual {v2}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 424
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/TextStyleSpan;->setSpoilerRevealed(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 428
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    return-void
.end method

.method public invalidateQuotes(Z)V
    .locals 4

    .line 394
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

    .line 395
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastText2Length:I

    if-eq p1, v0, :cond_3

    :cond_2
    const/4 p1, 0x2

    .line 396
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdatesTries:I

    .line 397
    iput v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastText2Length:I

    .line 399
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdatesTries:I

    if-lez p1, :cond_6

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    const/4 v0, 0x1

    if-nez p1, :cond_4

    new-array p1, v0, [Z

    .line 401
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    .line 403
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    aput-boolean v1, p1, v1

    .line 404
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    invoke-static {p1, v2, v3}, Lorg/telegram/ui/Components/QuoteSpan;->updateQuoteBlocks(Landroid/text/Layout;Ljava/util/ArrayList;[Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    .line 405
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdateLayout:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_5

    .line 406
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->resetFontMetricsCache()V

    .line 408
    :cond_5
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdatesTries:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteUpdatesTries:I

    :cond_6
    return-void
.end method

.method protected invalidateSpoilers()V
    .locals 3

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 433
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 436
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void

    .line 441
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 442
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_3

    .line 443
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 444
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->recordPositions(Z)V

    .line 446
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/widget/TextView;Ljava/util/Stack;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 447
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 448
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->recordPositions(Z)V

    .line 451
    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 171
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 159
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilerTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 315
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->clipToPadding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 316
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v1

    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 318
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 319
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

    .line 320
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 321
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    move v1, v0

    .line 325
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 326
    iget-object v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteBlocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/QuoteSpan$Block;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteColor:I

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/QuoteSpan$Block;->draw(Landroid/graphics/Canvas;FIIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 328
    :cond_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EditTextEffects;->updateAnimatedEmoji(Z)V

    .line 329
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrapCanvasToFixClipping:Z

    if-eqz v1, :cond_4

    .line 330
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    if-nez v1, :cond_3

    .line 331
    new-instance v1, Lorg/telegram/ui/Components/NoClipCanvas;

    invoke-direct {v1}, Lorg/telegram/ui/Components/NoClipCanvas;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    .line 333
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    iput-object p1, v1, Lorg/telegram/ui/Components/NoClipCanvas;->canvas:Landroid/graphics/Canvas;

    .line 334
    invoke-super {p0, v1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 336
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 338
    :goto_2
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v1, :cond_5

    .line 339
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 340
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 341
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/EditText;->computeVerticalScrollOffset()I

    move-result v1

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v8, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->computeVerticalScrollExtent()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v9, v1

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

    move-object v3, p1

    invoke-static/range {v3 .. v12}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    .line 342
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 344
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 346
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 347
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 348
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 349
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 350
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->getRipplePath(Landroid/graphics/Path;)V

    .line 351
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 352
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 353
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrapCanvasToFixClipping:Z

    if-eqz v1, :cond_8

    .line 354
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    if-nez v1, :cond_7

    .line 355
    new-instance v1, Lorg/telegram/ui/Components/NoClipCanvas;

    invoke-direct {v1}, Lorg/telegram/ui/Components/NoClipCanvas;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    .line 357
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->wrappedCanvas:Lorg/telegram/ui/Components/NoClipCanvas;

    iput-object p1, v1, Lorg/telegram/ui/Components/NoClipCanvas;->canvas:Landroid/graphics/Canvas;

    .line 358
    invoke-super {p0, v1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 360
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 362
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 364
    iget-object v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v2

    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    invoke-super {p0}, Landroid/widget/EditText;->getExtendedPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 368
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 369
    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextEffects;->rect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_a

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_b

    :cond_a
    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_9

    if-lt v5, v4, :cond_9

    .line 370
    :cond_b
    iget-boolean v2, v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->insideQuote:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lorg/telegram/ui/Components/EditTextEffects;->quoteColor:I

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    :goto_5
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 371
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 374
    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 232
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1

    .line 118
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 120
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    .line 124
    iput p2, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    .line 126
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
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateQuotes(Z)V

    .line 211
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public recycleEmojis()V
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected resetFontMetricsCache()V
    .locals 3

    .line 414
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    const/4 v2, 0x0

    .line 415
    invoke-virtual {p0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 416
    invoke-virtual {p0, v2, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .line 455
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->clipToPadding:Z

    return-void
.end method

.method public setOffsetY(F)V
    .locals 0

    .line 285
    iput p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->offsetY:F

    .line 286
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setShouldRevealSpoilersByTouch(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->shouldRevealSpoilersByTouch:Z

    return-void
.end method

.method public setSpoilersRevealed(ZZ)V
    .locals 7

    .line 262
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    .line 263
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 265
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/TextStyleSpan;

    .line 266
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 267
    invoke-virtual {v5}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 268
    invoke-virtual {v5, p1}, Lorg/telegram/ui/Components/TextStyleSpan;->setSpoilerRevealed(Z)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 272
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    .line 273
    sget-object p1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Components/EditTextEffects;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 274
    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->selStart:I

    iget v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->selEnd:I

    invoke-virtual {p0, p1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 275
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-eqz p2, :cond_2

    .line 278
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEffects;->invalidateSpoilers()V

    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 216
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->suppressOnTextChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->isSpoilersRevealed:Z

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->spoilersPool:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 221
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 226
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 227
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->animatedEmojiColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public updateAnimatedEmoji(Z)V
    .locals 5

    .line 378
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->drawAnimatedEmojiDrawables:Z

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-nez p1, :cond_3

    .line 382
    iget-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastLayout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-ne p1, v2, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastTextLength:I

    if-eq p1, v0, :cond_4

    .line 383
    :cond_3
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

    .line 384
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastLayout:Landroid/text/Layout;

    .line 385
    iput v0, p0, Lorg/telegram/ui/Components/EditTextEffects;->lastTextLength:I

    :cond_4
    return-void
.end method
