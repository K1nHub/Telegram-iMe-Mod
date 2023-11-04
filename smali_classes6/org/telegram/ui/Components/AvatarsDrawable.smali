.class public Lorg/telegram/ui/Components/AvatarsDrawable;
.super Ljava/lang/Object;
.source "AvatarsDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;
    }
.end annotation


# instance fields
.field animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

.field private attached:Z

.field centered:Z

.field public count:I

.field currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

.field currentStyle:I

.field public drawStoriesCircle:Z

.field public height:I

.field private isInCall:Z

.field private overrideAlpha:F

.field private overrideSize:I

.field private overrideSizeStepFactor:F

.field private paint:Landroid/graphics/Paint;

.field parent:Landroid/view/View;

.field random:Ljava/util/Random;

.field private showSavedMessages:Z

.field storiesTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

.field public transitionDuration:J

.field private transitionInProgress:Z

.field transitionProgress:F

.field transitionProgressAnimator:Landroid/animation/ValueAnimator;

.field updateAfterTransition:Z

.field updateDelegate:Ljava/lang/Runnable;

.field wasDraw:Z

.field public width:I

.field private xRefP:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$Ons5rEvKr5AQTzejEeUZU-U8MvE(Lorg/telegram/ui/Components/AvatarsDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->lambda$commitTransition$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 7

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    .line 40
    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    new-array v1, v0, [Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    .line 41
    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 44
    iput v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    .line 48
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    .line 49
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    const v2, 0x3f4ccccd    # 0.8f

    .line 62
    iput v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSizeStepFactor:F

    .line 63
    iput v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideAlpha:F

    const-wide/16 v1, 0xdc

    .line 64
    iput-wide v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionDuration:J

    .line 65
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 257
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->random:Ljava/util/Random;

    .line 260
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 262
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    new-instance v4, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;-><init>(Lorg/telegram/ui/Components/AvatarsDrawable$1;)V

    aput-object v4, v3, v2

    .line 263
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    new-instance v4, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v4, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$902(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/messenger/ImageReceiver;)Lorg/telegram/messenger/ImageReceiver;

    .line 264
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 265
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-static {v3, v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Components/AvatarDrawable;)Lorg/telegram/ui/Components/AvatarDrawable;

    .line 266
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 268
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    new-instance v6, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;-><init>(Lorg/telegram/ui/Components/AvatarsDrawable$1;)V

    aput-object v6, v3, v2

    .line 269
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    new-instance v5, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v5, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$902(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/messenger/ImageReceiver;)Lorg/telegram/messenger/ImageReceiver;

    .line 270
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 271
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    new-instance v5, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Components/AvatarDrawable;)Lorg/telegram/ui/Components/AvatarDrawable;

    .line 272
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 274
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->isInCall:Z

    .line 275
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AvatarsDrawable;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AvatarsDrawable;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void
.end method

.method private invalidate()V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$commitTransition$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 147
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    .line 148
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void
.end method

.method private swapStates()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 178
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v2, v1, v0

    .line 179
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v3, v0

    aput-object v4, v1, v0

    .line 180
    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public animateFromState(Lorg/telegram/ui/Components/AvatarsDrawable;IZ)V
    .locals 5

    .line 212
    iget-object v0, p1, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 214
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    if-eqz v0, :cond_0

    .line 215
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    .line 216
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    :cond_0
    const/4 v0, 0x3

    new-array v2, v0, [Lorg/telegram/tgnet/TLObject;

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 221
    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$700(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    aput-object v4, v2, v3

    .line 222
    iget-object v4, p1, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$700(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    invoke-virtual {p0, v3, p2, v4}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(Z)V

    :goto_1
    if-ge v1, v0, :cond_2

    .line 226
    aget-object p1, v2, v1

    invoke-virtual {p0, v1, p2, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    .line 229
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(ZZ)V

    return-void
.end method

.method public commitTransition(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(ZZ)V

    return-void
.end method

.method public commitTransition(ZZ)V
    .locals 10

    .line 87
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 p1, 0x3

    new-array v0, p1, [Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, p1, :cond_2

    .line 96
    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v7, v6, v3

    aput-object v7, v0, v3

    .line 97
    aget-object v6, v6, v3

    invoke-static {v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v6

    iget-object v8, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v8, v8, v3

    invoke-static {v8}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 100
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v5, v5, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, v3

    invoke-static {v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$100(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 104
    iput v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    return-void

    :cond_3
    move v1, v2

    :goto_2
    const/4 v3, 0x2

    if-ge v1, p1, :cond_8

    move v4, v2

    :goto_3
    if-ge v4, p1, :cond_6

    .line 110
    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, v4

    invoke-static {v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v6

    iget-object v8, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v8, v8, v1

    invoke-static {v8}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    const/4 v6, 0x0

    .line 112
    aput-object v6, v0, v4

    if-ne v1, v4, :cond_4

    .line 114
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v1

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$202(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;I)I

    .line 115
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    .line 117
    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    goto :goto_4

    .line 119
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, v1

    invoke-static {v6, v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$202(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;I)I

    .line 120
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$402(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;I)I

    :goto_4
    move v3, v5

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_5
    if-nez v3, :cond_7

    .line 126
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$202(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;I)I

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_6
    if-ge v1, p1, :cond_a

    .line 131
    aget-object v4, v0, v1

    if-eqz v4, :cond_9

    .line 132
    aget-object v4, v0, v1

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$202(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;I)I

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 135
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_b

    .line 136
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 138
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    if-eqz p1, :cond_b

    .line 139
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    .line 140
    iput-boolean v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    :cond_b
    const/4 p1, 0x0

    .line 143
    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    if-eqz p2, :cond_c

    new-array p1, v3, [F

    .line 145
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    .line 146
    new-instance p2, Lorg/telegram/ui/Components/AvatarsDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AvatarsDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AvatarsDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/AvatarsDrawable$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AvatarsDrawable$1;-><init>(Lorg/telegram/ui/Components/AvatarsDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 169
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_7

    .line 171
    :cond_c
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    .line 173
    :goto_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void

    .line 88
    :cond_d
    :goto_8
    iput v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    .line 89
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getSize()I
    .locals 2

    .line 623
    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSize:I

    if-eqz v0, :cond_0

    return v0

    .line 626
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    const/16 v0, 0x20

    goto :goto_2

    :cond_3
    const/16 v0, 0x18

    .line 627
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 648
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->attached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 651
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->attached:Z

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 653
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 654
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 633
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 636
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->attached:Z

    .line 637
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 639
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 640
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v0, v1, :cond_2

    .line 643
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setAmplitude(F)V

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/4 v9, 0x1

    .line 361
    iput-boolean v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    .line 362
    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/16 v10, 0xa

    const/4 v11, 0x4

    if-eq v1, v11, :cond_1

    if-ne v1, v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v13, v9

    .line 363
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->getSize()I

    move-result v14

    .line 365
    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/16 v2, 0x14

    const/16 v15, 0xb

    if-ne v1, v15, :cond_2

    const/16 v1, 0xc

    .line 366
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :goto_2
    move/from16 v16, v1

    goto :goto_4

    .line 367
    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSize:I

    if-eqz v1, :cond_3

    int-to-float v1, v1

    .line 368
    iget v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSizeStepFactor:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_2

    :cond_3
    if-eqz v13, :cond_4

    const/16 v1, 0x18

    goto :goto_3

    :cond_4
    move v1, v2

    .line 370
    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_2

    :goto_4
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_5
    const-wide/16 v4, 0x0

    const/4 v7, 0x3

    if-ge v1, v7, :cond_6

    .line 374
    iget-object v6, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 378
    :cond_6
    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-eqz v1, :cond_8

    if-eq v1, v10, :cond_8

    if-ne v1, v15, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    move/from16 v17, v1

    goto :goto_7

    :cond_8
    :goto_6
    const/16 v17, 0x0

    .line 379
    :goto_7
    iget-boolean v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    const/16 v18, 0x8

    const/4 v6, 0x2

    if-eqz v1, :cond_a

    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v3, v3, v16

    sub-int/2addr v1, v3

    if-eqz v13, :cond_9

    move/from16 v3, v18

    goto :goto_8

    :cond_9
    move v3, v11

    :goto_8
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    div-int/2addr v1, v6

    move/from16 v19, v1

    goto :goto_9

    :cond_a
    move/from16 v19, v17

    .line 380
    :goto_9
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v9

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    .line 381
    :goto_a
    iget v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v3, v11, :cond_c

    .line 382
    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_c

    :cond_c
    if-eq v3, v7, :cond_e

    .line 384
    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_d

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallMutedBackground:I

    goto :goto_b

    :cond_d
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallBackground:I

    :goto_b
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_e
    :goto_c
    const/4 v1, 0x0

    const/16 v20, 0x0

    :goto_d
    if-ge v1, v7, :cond_10

    .line 389
    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v21

    cmp-long v3, v21, v4

    if-eqz v3, :cond_f

    add-int/lit8 v20, v20, 0x1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 393
    :cond_10
    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/4 v5, 0x5

    if-eqz v1, :cond_12

    if-eq v1, v9, :cond_12

    if-eq v1, v7, :cond_12

    if-eq v1, v11, :cond_12

    if-eq v1, v5, :cond_12

    if-eq v1, v10, :cond_12

    if-ne v1, v15, :cond_11

    goto :goto_e

    :cond_11
    const/16 v21, 0x0

    goto :goto_f

    :cond_12
    :goto_e
    move/from16 v21, v9

    :goto_f
    const/16 v22, 0x10

    const/4 v4, 0x0

    if-eqz v21, :cond_15

    if-ne v1, v10, :cond_13

    .line 395
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_10

    :cond_13
    move v1, v4

    .line 396
    :goto_10
    iget-boolean v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->drawStoriesCircle:Z

    if-eqz v3, :cond_14

    .line 397
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    :cond_14
    neg-float v3, v1

    .line 399
    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    int-to-float v2, v2

    add-float v23, v2, v1

    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    int-to-float v2, v2

    add-float v24, v2, v1

    const/16 v25, 0xff

    const/16 v26, 0x1f

    move-object/from16 v1, p1

    move v2, v3

    move v12, v4

    move/from16 v4, v23

    move/from16 v5, v24

    move v12, v6

    move/from16 v6, v25

    move/from16 v7, v26

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_11

    :cond_15
    move v12, v6

    .line 401
    :goto_11
    iget-boolean v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->drawStoriesCircle:Z

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2a

    move v6, v12

    :goto_12
    if-ltz v6, :cond_2a

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v12, :cond_29

    if-nez v1, :cond_16

    .line 404
    iget v7, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v7, v7, v5

    if-nez v7, :cond_16

    goto/16 :goto_21

    :cond_16
    if-nez v1, :cond_17

    .line 407
    iget-object v7, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    goto :goto_14

    :cond_17
    iget-object v7, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    :goto_14
    if-ne v1, v9, :cond_18

    .line 409
    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_18

    aget-object v2, v7, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v2

    if-eq v2, v9, :cond_18

    goto/16 :goto_21

    .line 412
    :cond_18
    aget-object v2, v7, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    .line 413
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result v25

    if-nez v25, :cond_19

    goto/16 :goto_21

    :cond_19
    if-nez v1, :cond_1c

    .line 417
    iget-boolean v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v4, :cond_1b

    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v26, v20, v16

    sub-int v4, v4, v26

    if-eqz v13, :cond_1a

    move/from16 v26, v18

    goto :goto_15

    :cond_1a
    move/from16 v26, v11

    :goto_15
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v26

    sub-int v4, v4, v26

    div-int/2addr v4, v12

    goto :goto_16

    :cond_1b
    move/from16 v4, v17

    :goto_16
    mul-int v26, v16, v6

    add-int v4, v4, v26

    int-to-float v4, v4

    .line 418
    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    goto :goto_17

    :cond_1c
    mul-int v4, v16, v6

    add-int v4, v19, v4

    int-to-float v4, v4

    .line 420
    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    .line 423
    :goto_17
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-eqz v4, :cond_1f

    if-eq v4, v10, :cond_1f

    if-ne v4, v15, :cond_1d

    goto :goto_19

    :cond_1d
    if-ne v4, v11, :cond_1e

    move/from16 v4, v18

    goto :goto_18

    :cond_1e
    const/4 v4, 0x6

    .line 426
    :goto_18
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    goto :goto_1a

    .line 424
    :cond_1f
    :goto_19
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    sub-int/2addr v4, v14

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    .line 431
    :goto_1a
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_26

    .line 432
    aget-object v4, v7, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    if-ne v4, v9, :cond_20

    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 434
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    sub-float v7, v5, v4

    sub-float v4, v5, v4

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v15

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v10

    invoke-virtual {v8, v7, v4, v15, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 436
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    sub-float v4, v5, v4

    :goto_1b
    move v7, v9

    goto/16 :goto_20

    .line 437
    :cond_20
    aget-object v4, v7, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    if-nez v4, :cond_21

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 439
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v7

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v10

    invoke-virtual {v8, v4, v4, v7, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 440
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    goto :goto_1b

    .line 442
    :cond_21
    aget-object v4, v7, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    if-ne v4, v12, :cond_24

    .line 443
    iget-boolean v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v4, :cond_23

    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v10, v20, v16

    sub-int/2addr v4, v10

    if-eqz v13, :cond_22

    move/from16 v10, v18

    goto :goto_1c

    :cond_22
    move v10, v11

    :goto_1c
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v4, v10

    div-int/2addr v4, v12

    goto :goto_1d

    :cond_23
    move/from16 v4, v17

    :goto_1d
    mul-int v10, v16, v6

    add-int/2addr v4, v10

    .line 445
    aget-object v7, v7, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$400(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v7

    mul-int v7, v7, v16

    add-int v7, v19, v7

    int-to-float v4, v4

    .line 446
    iget v10, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    mul-float/2addr v4, v10

    int-to-float v7, v7

    sub-float v10, v5, v10

    mul-float/2addr v7, v10

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    goto :goto_1f

    .line 447
    :cond_24
    aget-object v4, v7, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_26

    iget-boolean v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v4, :cond_26

    .line 448
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v7, v20, v16

    sub-int/2addr v4, v7

    if-eqz v13, :cond_25

    move/from16 v7, v18

    goto :goto_1e

    :cond_25
    move v7, v11

    :goto_1e
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v4, v7

    div-int/2addr v4, v12

    mul-int v7, v16, v6

    add-int/2addr v4, v7

    add-int v7, v19, v7

    int-to-float v4, v4

    .line 451
    iget v10, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    mul-float/2addr v4, v10

    int-to-float v7, v7

    sub-float v10, v5, v10

    mul-float/2addr v7, v10

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    :cond_26
    :goto_1f
    move v4, v5

    const/4 v7, 0x0

    .line 454
    :goto_20
    iget v10, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideAlpha:F

    mul-float/2addr v4, v10

    .line 455
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->getSize()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v10, v15

    .line 456
    iget-object v15, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->storiesTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    if-nez v15, :cond_27

    .line 457
    new-instance v15, Lorg/telegram/ui/Stories/StoriesGradientTools;

    invoke-direct {v15}, Lorg/telegram/ui/Stories/StoriesGradientTools;-><init>()V

    iput-object v15, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->storiesTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    .line 459
    :cond_27
    iget-object v15, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->storiesTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/16 v27, 0x28

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    const/4 v9, 0x0

    invoke-virtual {v15, v9, v9, v3, v11}, Lorg/telegram/ui/Components/GradientTools;->setBounds(FFFF)V

    .line 460
    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->storiesTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v3, v3, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v4, v9

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 461
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v3

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->storiesTools:Lorg/telegram/ui/Stories/StoriesGradientTools;

    iget-object v4, v4, Lorg/telegram/ui/Components/GradientTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v2, v10, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v7, :cond_28

    .line 463
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_28
    :goto_21
    add-int/lit8 v1, v1, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/16 v10, 0xa

    const/4 v11, 0x4

    const/16 v15, 0xb

    goto/16 :goto_13

    :cond_29
    add-int/lit8 v6, v6, -0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/16 v10, 0xa

    const/4 v11, 0x4

    const/16 v15, 0xb

    goto/16 :goto_12

    :cond_2a
    move v6, v12

    :goto_22
    if-ltz v6, :cond_56

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v12, :cond_55

    if-nez v1, :cond_2b

    .line 470
    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2b

    :goto_24
    const/4 v11, 0x0

    goto/16 :goto_3f

    :cond_2b
    if-nez v1, :cond_2c

    .line 473
    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    goto :goto_25

    :cond_2c
    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    :goto_25
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2d

    .line 476
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2d

    aget-object v4, v2, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    if-eq v4, v3, :cond_2d

    goto :goto_24

    .line 479
    :cond_2d
    aget-object v3, v2, v6

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    .line 480
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result v4

    if-nez v4, :cond_2e

    goto :goto_24

    :cond_2e
    if-nez v1, :cond_31

    .line 484
    iget-boolean v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v4, :cond_30

    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v7, v20, v16

    sub-int/2addr v4, v7

    if-eqz v13, :cond_2f

    move/from16 v7, v18

    goto :goto_26

    :cond_2f
    const/4 v7, 0x4

    :goto_26
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v4, v7

    div-int/2addr v4, v12

    goto :goto_27

    :cond_30
    move/from16 v4, v17

    :goto_27
    mul-int v7, v16, v6

    add-int/2addr v4, v7

    int-to-float v4, v4

    .line 485
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    goto :goto_28

    :cond_31
    mul-int v4, v16, v6

    add-int v4, v19, v4

    int-to-float v4, v4

    .line 487
    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    .line 490
    :goto_28
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-eqz v4, :cond_34

    const/16 v7, 0xa

    if-eq v4, v7, :cond_34

    const/16 v7, 0xb

    if-ne v4, v7, :cond_32

    goto :goto_2a

    :cond_32
    const/4 v9, 0x4

    if-ne v4, v9, :cond_33

    move/from16 v4, v18

    goto :goto_29

    :cond_33
    const/4 v4, 0x6

    .line 493
    :goto_29
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    goto :goto_2b

    :cond_34
    const/16 v7, 0xb

    .line 491
    :goto_2a
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    sub-int/2addr v4, v14

    int-to-float v4, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    .line 498
    :goto_2b
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3b

    .line 499
    aget-object v4, v2, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_35

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 501
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    sub-float v9, v5, v4

    sub-float v4, v5, v4

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v10

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v11

    invoke-virtual {v8, v9, v4, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 503
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    sub-float v4, v5, v4

    :goto_2c
    move v10, v4

    const/4 v4, 0x1

    const/4 v9, -0x1

    goto/16 :goto_32

    .line 504
    :cond_35
    aget-object v4, v2, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    if-nez v4, :cond_36

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 506
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v9

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v10

    invoke-virtual {v8, v4, v4, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 507
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    goto :goto_2c

    .line 509
    :cond_36
    aget-object v4, v2, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    if-ne v4, v12, :cond_39

    .line 510
    iget-boolean v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v4, :cond_38

    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v9, v20, v16

    sub-int/2addr v4, v9

    if-eqz v13, :cond_37

    move/from16 v9, v18

    goto :goto_2d

    :cond_37
    const/4 v9, 0x4

    :goto_2d
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v4, v9

    div-int/2addr v4, v12

    goto :goto_2e

    :cond_38
    move/from16 v4, v17

    :goto_2e
    mul-int v9, v16, v6

    add-int/2addr v4, v9

    .line 512
    aget-object v9, v2, v6

    invoke-static {v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$400(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v9

    mul-int v9, v9, v16

    add-int v9, v19, v9

    int-to-float v4, v4

    .line 513
    iget v10, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    mul-float/2addr v4, v10

    int-to-float v9, v9

    sub-float v10, v5, v10

    mul-float/2addr v9, v10

    add-float/2addr v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    goto :goto_30

    .line 514
    :cond_39
    aget-object v4, v2, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_3c

    iget-boolean v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v4, :cond_3c

    .line 515
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v10, v20, v16

    sub-int/2addr v4, v10

    if-eqz v13, :cond_3a

    move/from16 v10, v18

    goto :goto_2f

    :cond_3a
    const/4 v10, 0x4

    :goto_2f
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v4, v10

    div-int/2addr v4, v12

    mul-int v10, v16, v6

    add-int/2addr v4, v10

    add-int v10, v19, v10

    int-to-float v4, v4

    .line 518
    iget v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    mul-float/2addr v4, v11

    int-to-float v10, v10

    sub-float v11, v5, v11

    mul-float/2addr v10, v11

    add-float/2addr v4, v10

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageX(F)V

    goto :goto_31

    :cond_3b
    :goto_30
    const/4 v9, -0x1

    :cond_3c
    :goto_31
    move v10, v5

    const/4 v4, 0x0

    .line 521
    :goto_32
    iget v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideAlpha:F

    mul-float/2addr v10, v11

    .line 524
    array-length v11, v2

    const/4 v15, 0x1

    sub-int/2addr v11, v15

    if-ne v6, v11, :cond_3e

    iget-boolean v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->drawStoriesCircle:Z

    if-eqz v11, :cond_3d

    goto :goto_33

    :cond_3d
    const/4 v7, 0x5

    goto :goto_34

    .line 525
    :cond_3e
    :goto_33
    iget v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/high16 v15, 0x41700000    # 15.0f

    const/16 v25, 0x15

    const/16 v26, 0x11

    const/high16 v28, 0x42990000    # 76.5f

    const/4 v7, 0x1

    if-eq v11, v7, :cond_4b

    const/4 v7, 0x3

    if-eq v11, v7, :cond_4b

    const/4 v7, 0x5

    if-ne v11, v7, :cond_3f

    move v12, v10

    goto/16 :goto_39

    :cond_3f
    const/4 v9, 0x4

    if-eq v11, v9, :cond_44

    const/16 v9, 0xa

    if-ne v11, v9, :cond_40

    goto :goto_36

    .line 588
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->getSize()I

    move-result v2

    int-to-float v2, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v2, v9

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v2, v11

    if-eqz v21, :cond_41

    .line 590
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v11

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v15

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v15, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_34

    .line 592
    :cond_41
    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v9

    cmpl-float v11, v10, v5

    if-eqz v11, :cond_42

    .line 594
    iget-object v15, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v12, v9

    mul-float/2addr v12, v10

    float-to-int v12, v12

    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 596
    :cond_42
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v12

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v15

    iget-object v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v12, v15, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v11, :cond_43

    .line 598
    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_43
    :goto_34
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_35
    const/4 v11, 0x0

    goto/16 :goto_3d

    .line 554
    :cond_44
    :goto_36
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v9

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    invoke-virtual {v8, v5, v9, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 555
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    if-nez v5, :cond_45

    .line 556
    aget-object v5, v2, v6

    new-instance v9, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-direct {v9, v11, v12}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;-><init>(II)V

    invoke-static {v5, v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    .line 558
    :cond_45
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/16 v9, 0xa

    if-ne v5, v9, :cond_46

    .line 559
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    mul-float v11, v10, v28

    float-to-int v11, v11

    invoke-static {v9, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setColor(I)V

    goto :goto_37

    .line 561
    :cond_46
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    mul-float v11, v10, v28

    float-to-int v11, v11

    invoke-static {v9, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setColor(I)V

    .line 563
    :goto_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 564
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1100(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v25

    sub-long v25, v11, v25

    const-wide/16 v29, 0x64

    cmp-long v5, v25, v29

    if-lez v5, :cond_4a

    .line 565
    aget-object v5, v2, v6

    invoke-static {v5, v11, v12}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    .line 566
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/16 v9, 0xa

    if-ne v5, v9, :cond_48

    .line 567
    aget-object v5, v2, v6

    iget-object v5, v5, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v5, :cond_47

    aget-object v5, v2, v6

    iget-object v5, v5, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->amplitude:F

    const/4 v11, 0x0

    cmpl-float v5, v5, v11

    if-lez v5, :cond_47

    .line 568
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    iget-object v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v12, 0x1

    invoke-virtual {v5, v12, v11}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    .line 569
    aget-object v5, v2, v6

    iget-object v5, v5, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->amplitude:F

    mul-float/2addr v5, v15

    .line 570
    aget-object v11, v2, v6

    invoke-static {v11}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v11

    move v12, v10

    float-to-double v9, v5

    invoke-virtual {v11, v9, v10}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    goto :goto_38

    :cond_47
    move v12, v10

    .line 572
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    goto :goto_38

    :cond_48
    move v12, v10

    .line 575
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    int-to-long v9, v5

    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$100(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v25

    sub-long v9, v9, v25

    const-wide/16 v25, 0x5

    cmp-long v5, v9, v25

    if-gtz v5, :cond_49

    .line 576
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v10, 0x1

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    .line 577
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->random:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    rem-int/lit8 v9, v9, 0x64

    int-to-double v9, v9

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    goto :goto_38

    .line 579
    :cond_49
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    .line 580
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v9, v10}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    goto :goto_38

    :cond_4a
    move v12, v10

    .line 584
    :goto_38
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->update()V

    .line 585
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v9

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    invoke-virtual {v5, v8, v9, v10, v11}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->draw(Landroid/graphics/Canvas;FFLandroid/view/View;)V

    .line 586
    aget-object v2, v2, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->getAvatarScale()F

    move-result v2

    move v10, v12

    goto/16 :goto_35

    :cond_4b
    move v12, v10

    const/4 v7, 0x5

    .line 526
    :goto_39
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v9

    const/16 v10, 0xd

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    invoke-virtual {v8, v5, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 527
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    if-nez v5, :cond_4d

    .line 528
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v5, v7, :cond_4c

    .line 529
    aget-object v5, v2, v6

    new-instance v9, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    const/16 v10, 0xe

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-direct {v9, v10, v11}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;-><init>(II)V

    invoke-static {v5, v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    goto :goto_3a

    .line 531
    :cond_4c
    aget-object v5, v2, v6

    new-instance v9, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-direct {v9, v10, v11}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;-><init>(II)V

    invoke-static {v5, v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    .line 534
    :cond_4d
    :goto_3a
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v5, v7, :cond_4e

    .line 535
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    mul-float v10, v12, v28

    float-to-int v10, v10

    invoke-static {v9, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    invoke-virtual {v5, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setColor(I)V

    .line 537
    :cond_4e
    aget-object v5, v2, v6

    iget-object v5, v5, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v5, :cond_50

    aget-object v5, v2, v6

    iget-object v5, v5, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->amplitude:F

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-lez v5, :cond_4f

    .line 538
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    iget-object v10, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v11, 0x1

    invoke-virtual {v5, v11, v10}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    .line 539
    aget-object v5, v2, v6

    iget-object v5, v5, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->amplitude:F

    mul-float/2addr v5, v15

    .line 540
    aget-object v10, v2, v6

    invoke-static {v10}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v10

    move v15, v12

    float-to-double v11, v5

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    const/4 v11, 0x0

    goto :goto_3c

    :cond_4f
    move v15, v12

    goto :goto_3b

    :cond_50
    move v15, v12

    const/4 v9, 0x0

    .line 542
    :goto_3b
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    iget-object v10, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    .line 544
    :goto_3c
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v5, v7, :cond_51

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    aget-object v5, v2, v6

    iget-object v5, v5, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastSpeakTime:J

    sub-long v25, v25, v9

    const-wide/16 v9, 0x1f4

    cmp-long v5, v25, v9

    if-lez v5, :cond_51

    .line 545
    iget-object v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->updateDelegate:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 547
    :cond_51
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->update()V

    .line 548
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v5, v7, :cond_52

    .line 549
    aget-object v5, v2, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v5

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v9

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v10

    iget-object v7, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    invoke-virtual {v5, v8, v9, v10, v7}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->draw(Landroid/graphics/Canvas;FFLandroid/view/View;)V

    .line 550
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    .line 552
    :cond_52
    aget-object v2, v2, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->getAvatarScale()F

    move-result v2

    move v10, v15

    .line 603
    :goto_3d
    invoke-virtual {v3, v10}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v7, v2, v5

    if-eqz v7, :cond_53

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 606
    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v7

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v9

    invoke-virtual {v8, v2, v2, v7, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 607
    invoke-virtual {v3, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3e

    .line 610
    :cond_53
    invoke-virtual {v3, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :goto_3e
    if-eqz v4, :cond_54

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_54
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    const/4 v12, 0x2

    goto/16 :goto_23

    :cond_55
    const/4 v11, 0x0

    add-int/lit8 v6, v6, -0x1

    const/4 v12, 0x2

    goto/16 :goto_22

    :cond_56
    if-eqz v21, :cond_57

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_57
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 670
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    .line 671
    invoke-virtual {p0, v0, v0, v2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 233
    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideAlpha:F

    return-void
.end method

.method public setAvatarsTextSize(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 281
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 284
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setCentered(Z)V
    .locals 0

    .line 659
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 663
    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->count:I

    .line 664
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 665
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDelegate(Ljava/lang/Runnable;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->updateDelegate:Ljava/lang/Runnable;

    return-void
.end method

.method public setObject(IILorg/telegram/tgnet/TLObject;)V
    .locals 10

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v0, v0, p1

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v0, p1

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-nez p3, :cond_0

    .line 294
    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 295
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void

    .line 300
    :cond_0
    aget-object v0, v0, p1

    const-wide/16 v5, -0x1

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v0, v0, p1

    invoke-static {v0, p3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$702(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLObject;

    .line 302
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v0, :cond_5

    .line 303
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v0, v0, p1

    iput-object p3, v0, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 305
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    .line 306
    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 308
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    move-object v9, v4

    move-object v4, v0

    move-object v0, v9

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 311
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, p1

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 313
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/4 v7, 0x4

    if-ne v3, v7, :cond_4

    .line 314
    invoke-static {p2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long p2, v5, v7

    if-nez p2, :cond_2

    .line 315
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    goto :goto_1

    .line 317
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->isInCall:Z

    if-eqz p2, :cond_3

    .line 318
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    iget-wide v1, p3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastActiveDate:J

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    goto :goto_1

    .line 320
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    iget p3, p3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    int-to-long v1, p3

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    goto :goto_1

    .line 324
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    iget p3, p3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    int-to-long v1, p3

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    .line 326
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2, v5, v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    move-object p3, v0

    goto/16 :goto_3

    .line 327
    :cond_5
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$User;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    .line 328
    check-cast p3, Lorg/telegram/tgnet/TLRPC$User;

    .line 329
    iget-boolean p2, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->showSavedMessages:Z

    if-eqz p2, :cond_6

    .line 330
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 331
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    goto :goto_2

    .line 333
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 334
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 335
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 337
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    move-object v9, v4

    move-object v4, p3

    move-object p3, v9

    goto :goto_3

    .line 339
    :cond_7
    check-cast p3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 340
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 341
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 342
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 343
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    :goto_3
    if-eqz v4, :cond_9

    .line 346
    iget-boolean p2, v4, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p2, :cond_8

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->showSavedMessages:Z

    if-eqz p2, :cond_8

    .line 347
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p3, p3, p1

    invoke-static {p3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 349
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p3, p3, p1

    invoke-static {p3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p3

    invoke-virtual {p2, v4, p3}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 352
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/telegram/messenger/ImageReceiver;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Landroid/graphics/drawable/Drawable;)V

    .line 354
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->getSize()I

    move-result p2

    .line 355
    iget-object p3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p3, p3, p1

    invoke-static {p3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p3

    div-int/lit8 v0, p2, 0x2

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 356
    iget-object p3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 357
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void
.end method

.method public setShowSavedMessages(Z)V
    .locals 0

    .line 676
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->showSavedMessages:Z

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 204
    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSize:I

    return-void
.end method

.method public setStepFactor(F)V
    .locals 0

    .line 208
    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSizeStepFactor:F

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    .line 193
    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    .line 194
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void
.end method

.method public setTransitionProgress(F)V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    if-eqz v0, :cond_0

    .line 76
    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 77
    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    :cond_0
    return-void
.end method

.method public updateAfterTransitionEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->updateAfterTransition:Z

    return-void
.end method
