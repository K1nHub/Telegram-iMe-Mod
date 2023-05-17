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

.field public height:I

.field private isInCall:Z

.field private overrideAlpha:F

.field private overrideSize:I

.field private paint:Landroid/graphics/Paint;

.field parent:Landroid/view/View;

.field random:Ljava/util/Random;

.field private showSavedMessages:Z

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

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    .line 39
    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    new-array v1, v0, [Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    .line 40
    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    iput v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    .line 47
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    .line 48
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    .line 61
    iput v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideAlpha:F

    const-wide/16 v1, 0xdc

    .line 62
    iput-wide v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionDuration:J

    .line 63
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 248
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->random:Ljava/util/Random;

    .line 251
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 253
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    new-instance v4, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;-><init>(Lorg/telegram/ui/Components/AvatarsDrawable$1;)V

    aput-object v4, v3, v2

    .line 254
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    new-instance v4, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v4, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$902(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/messenger/ImageReceiver;)Lorg/telegram/messenger/ImageReceiver;

    .line 255
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 256
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    new-instance v6, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-static {v3, v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Components/AvatarDrawable;)Lorg/telegram/ui/Components/AvatarDrawable;

    .line 257
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 259
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    new-instance v6, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;-><init>(Lorg/telegram/ui/Components/AvatarsDrawable$1;)V

    aput-object v6, v3, v2

    .line 260
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    new-instance v5, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v5, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$902(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/messenger/ImageReceiver;)Lorg/telegram/messenger/ImageReceiver;

    .line 261
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 262
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    new-instance v5, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v5}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    invoke-static {v3, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Components/AvatarDrawable;)Lorg/telegram/ui/Components/AvatarDrawable;

    .line 263
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 265
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->isInCall:Z

    .line 266
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 267
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AvatarsDrawable;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AvatarsDrawable;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void
.end method

.method private getSize()I
    .locals 2

    .line 545
    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSize:I

    if-eqz v0, :cond_0

    return v0

    .line 548
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

    .line 549
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method private invalidate()V
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$commitTransition$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 142
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    .line 143
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void
.end method

.method private swapStates()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v2, v1, v0

    .line 174
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v3, v0

    aput-object v4, v1, v0

    .line 175
    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public animateFromState(Lorg/telegram/ui/Components/AvatarsDrawable;IZ)V
    .locals 5

    .line 203
    iget-object v0, p1, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 205
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    if-eqz v0, :cond_0

    .line 206
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    .line 207
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    :cond_0
    const/4 v0, 0x3

    new-array v2, v0, [Lorg/telegram/tgnet/TLObject;

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 212
    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$700(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    aput-object v4, v2, v3

    .line 213
    iget-object v4, p1, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v3

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$700(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/tgnet/TLObject;

    move-result-object v4

    invoke-virtual {p0, v3, p2, v4}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(Z)V

    :goto_1
    if-ge v1, v0, :cond_2

    .line 217
    aget-object p1, v2, v1

    invoke-virtual {p0, v1, p2, p1}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 219
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    .line 220
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(ZZ)V

    return-void
.end method

.method public commitTransition(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(ZZ)V

    return-void
.end method

.method public commitTransition(ZZ)V
    .locals 10

    .line 83
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

    .line 92
    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v7, v6, v3

    aput-object v7, v0, v3

    .line 93
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

    .line 96
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

    .line 100
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

    .line 106
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

    .line 108
    aput-object v6, v0, v4

    if-ne v1, v4, :cond_4

    .line 110
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v1

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$202(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;I)I

    .line 111
    iget-object v3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v3

    .line 112
    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v1

    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    .line 113
    iget-object v4, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v4, v4, v1

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    goto :goto_4

    .line 115
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v6, v6, v1

    invoke-static {v6, v3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$202(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;I)I

    .line 116
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

    .line 122
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

    .line 127
    aget-object v4, v0, v1

    if-eqz v4, :cond_9

    .line 128
    aget-object v4, v0, v1

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$202(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;I)I

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 131
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_b

    .line 132
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 133
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    if-eqz p1, :cond_b

    .line 134
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    .line 135
    iput-boolean v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    :cond_b
    const/4 p1, 0x0

    .line 138
    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    if-eqz p2, :cond_c

    new-array p1, v3, [F

    .line 140
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    .line 141
    new-instance p2, Lorg/telegram/ui/Components/AvatarsDrawable$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AvatarsDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AvatarsDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/AvatarsDrawable$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/AvatarsDrawable$1;-><init>(Lorg/telegram/ui/Components/AvatarsDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_7

    .line 166
    :cond_c
    iput-boolean v5, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    .line 168
    :goto_7
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void

    .line 84
    :cond_d
    :goto_8
    iput v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    .line 85
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 570
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->attached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 573
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->attached:Z

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 575
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 576
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

    .line 555
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 558
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->attached:Z

    .line 559
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 561
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 562
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v0, v1, :cond_2

    .line 565
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getFragmentContextViewWavesDrawable()Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setAmplitude(F)V

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/4 v9, 0x1

    .line 353
    iput-boolean v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->wasDraw:Z

    .line 354
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

    .line 355
    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->getSize()I

    move-result v14

    .line 357
    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/16 v15, 0xb

    if-ne v1, v15, :cond_2

    const/16 v1, 0xc

    .line 358
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :goto_2
    move/from16 v16, v1

    goto :goto_4

    .line 359
    :cond_2
    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSize:I

    if-eqz v1, :cond_3

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_2

    :cond_3
    if-eqz v13, :cond_4

    const/16 v1, 0x18

    goto :goto_3

    :cond_4
    const/16 v1, 0x14

    .line 362
    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_2

    :goto_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const-wide/16 v3, 0x0

    const/4 v7, 0x3

    if-ge v1, v7, :cond_6

    .line 366
    iget-object v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 370
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

    .line 371
    :goto_7
    iget-boolean v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    const/16 v18, 0x8

    const/4 v6, 0x2

    if-eqz v1, :cond_a

    iget v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v2, v2, v16

    sub-int/2addr v1, v2

    if-eqz v13, :cond_9

    move/from16 v2, v18

    goto :goto_8

    :cond_9
    move v2, v11

    :goto_8
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v6

    move/from16 v19, v1

    goto :goto_9

    :cond_a
    move/from16 v19, v17

    .line 372
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

    .line 373
    :goto_a
    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v2, v11, :cond_c

    .line 374
    iget-object v1, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_c

    :cond_c
    if-eq v2, v7, :cond_e

    .line 376
    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_d

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallMutedBackground:I

    goto :goto_b

    :cond_d
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_returnToCallBackground:I

    :goto_b
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_e
    :goto_c
    const/4 v1, 0x0

    const/16 v20, 0x0

    :goto_d
    if-ge v1, v7, :cond_10

    .line 381
    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v21

    cmp-long v2, v21, v3

    if-eqz v2, :cond_f

    add-int/lit8 v20, v20, 0x1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 385
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

    const/16 v23, 0x0

    if-eqz v21, :cond_14

    if-ne v1, v10, :cond_13

    .line 387
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_10

    :cond_13
    move/from16 v1, v23

    :goto_10
    neg-float v3, v1

    .line 388
    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    int-to-float v2, v2

    add-float v4, v2, v1

    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    int-to-float v2, v2

    add-float v24, v2, v1

    const/16 v25, 0xff

    const/16 v26, 0x1f

    move-object/from16 v1, p1

    move v2, v3

    move v12, v5

    move/from16 v5, v24

    move v12, v6

    move/from16 v6, v25

    move/from16 v7, v26

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_11

    :cond_14
    move v12, v6

    :goto_11
    move v6, v12

    :goto_12
    if-ltz v6, :cond_3c

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v12, :cond_3b

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_15

    .line 392
    iget v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_15

    :goto_14
    const/4 v9, 0x5

    goto/16 :goto_2b

    :cond_15
    if-nez v1, :cond_16

    .line 395
    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    goto :goto_15

    :cond_16
    iget-object v3, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    :goto_15
    if-ne v1, v9, :cond_17

    .line 398
    iget v4, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_17

    aget-object v4, v3, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v4

    if-eq v4, v9, :cond_17

    goto :goto_14

    .line 401
    :cond_17
    aget-object v4, v3, v6

    invoke-static {v4}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    .line 402
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->hasImageSet()Z

    move-result v5

    if-nez v5, :cond_18

    goto :goto_14

    :cond_18
    if-nez v1, :cond_1b

    .line 406
    iget-boolean v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v5, :cond_1a

    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v7, v20, v16

    sub-int/2addr v5, v7

    if-eqz v13, :cond_19

    move/from16 v7, v18

    goto :goto_16

    :cond_19
    move v7, v11

    :goto_16
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v5, v7

    div-int/2addr v5, v12

    goto :goto_17

    :cond_1a
    move/from16 v5, v17

    :goto_17
    mul-int v7, v16, v6

    add-int/2addr v5, v7

    .line 407
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageX(I)V

    goto :goto_18

    :cond_1b
    mul-int v5, v16, v6

    add-int v5, v19, v5

    .line 409
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageX(I)V

    .line 412
    :goto_18
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v5, :cond_1e

    if-eq v5, v10, :cond_1e

    if-ne v5, v15, :cond_1c

    goto :goto_1a

    :cond_1c
    if-ne v5, v11, :cond_1d

    move/from16 v5, v18

    goto :goto_19

    :cond_1d
    const/4 v5, 0x6

    .line 415
    :goto_19
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    goto :goto_1b

    .line 413
    :cond_1e
    :goto_1a
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    sub-int/2addr v5, v14

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageY(F)V

    .line 420
    :goto_1b
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_25

    .line 421
    aget-object v5, v3, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v5

    if-ne v5, v9, :cond_1f

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 423
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    sub-float v15, v2, v5

    sub-float v5, v2, v5

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v7

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v10

    invoke-virtual {v8, v15, v5, v7, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 425
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    sub-float v5, v2, v5

    :goto_1c
    move v7, v9

    goto/16 :goto_21

    .line 426
    :cond_1f
    aget-object v5, v3, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v5

    if-nez v5, :cond_20

    .line 427
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 428
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v7

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v10

    invoke-virtual {v8, v5, v5, v7, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 429
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    goto :goto_1c

    .line 431
    :cond_20
    aget-object v5, v3, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v5

    if-ne v5, v12, :cond_23

    .line 432
    iget-boolean v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v5, :cond_22

    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v7, v20, v16

    sub-int/2addr v5, v7

    if-eqz v13, :cond_21

    move/from16 v7, v18

    goto :goto_1d

    :cond_21
    move v7, v11

    :goto_1d
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v5, v7

    div-int/2addr v5, v12

    goto :goto_1e

    :cond_22
    move/from16 v5, v17

    :goto_1e
    mul-int v7, v16, v6

    add-int/2addr v5, v7

    .line 434
    aget-object v7, v3, v6

    invoke-static {v7}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$400(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v7

    mul-int v7, v7, v16

    add-int v7, v19, v7

    int-to-float v5, v5

    .line 435
    iget v10, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    mul-float/2addr v5, v10

    int-to-float v7, v7

    sub-float v10, v2, v10

    mul-float/2addr v7, v10

    add-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageX(I)V

    goto :goto_20

    .line 436
    :cond_23
    aget-object v5, v3, v6

    invoke-static {v5}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$200(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_25

    iget-boolean v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    if-eqz v5, :cond_25

    .line 437
    iget v5, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    mul-int v7, v20, v16

    sub-int/2addr v5, v7

    if-eqz v13, :cond_24

    move/from16 v7, v18

    goto :goto_1f

    :cond_24
    move v7, v11

    :goto_1f
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v5, v7

    div-int/2addr v5, v12

    mul-int v7, v16, v6

    add-int/2addr v5, v7

    add-int v7, v19, v7

    int-to-float v5, v5

    .line 440
    iget v10, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    mul-float/2addr v5, v10

    int-to-float v7, v7

    sub-float v10, v2, v10

    mul-float/2addr v7, v10

    add-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageX(I)V

    :cond_25
    :goto_20
    move v5, v2

    const/4 v7, 0x0

    .line 443
    :goto_21
    iget v10, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideAlpha:F

    mul-float/2addr v5, v10

    .line 446
    array-length v10, v3

    sub-int/2addr v10, v9

    if-eq v6, v10, :cond_38

    .line 447
    iget v10, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/16 v27, 0x15

    const/16 v28, 0x11

    const/high16 v29, 0x42990000    # 76.5f

    if-eq v10, v9, :cond_31

    const/4 v15, 0x3

    if-eq v10, v15, :cond_31

    const/4 v15, 0x5

    if-ne v10, v15, :cond_26

    goto/16 :goto_25

    :cond_26
    if-eq v10, v11, :cond_2a

    const/16 v15, 0xa

    if-ne v10, v15, :cond_27

    goto :goto_22

    .line 510
    :cond_27
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->getSize()I

    move-result v3

    int-to-float v3, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v3, v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v3, v10

    if-eqz v21, :cond_28

    .line 512
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v10

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v15

    iget-object v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    invoke-virtual {v8, v10, v15, v3, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_28

    .line 514
    :cond_28
    iget-object v10, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    move-result v10

    cmpl-float v11, v5, v2

    if-eqz v11, :cond_29

    .line 516
    iget-object v15, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v12, v10

    mul-float/2addr v12, v5

    float-to-int v12, v12

    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 518
    :cond_29
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v12

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v15

    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v12, v15, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    if-eqz v11, :cond_38

    .line 520
    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_28

    .line 476
    :cond_2a
    :goto_22
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v2

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v10

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 477
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 478
    aget-object v2, v3, v6

    new-instance v10, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-direct {v10, v11, v12}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;-><init>(II)V

    invoke-static {v2, v10}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    .line 480
    :cond_2b
    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/16 v10, 0xa

    if-ne v2, v10, :cond_2c

    .line 481
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    mul-float v11, v5, v29

    float-to-int v11, v11

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setColor(I)V

    goto :goto_23

    .line 483
    :cond_2c
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v10

    mul-float v11, v5, v29

    float-to-int v11, v11

    invoke-static {v10, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v2, v10}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setColor(I)V

    .line 485
    :goto_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 486
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1100(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v27

    sub-long v27, v10, v27

    const-wide/16 v30, 0x64

    cmp-long v2, v27, v30

    if-lez v2, :cond_30

    .line 487
    aget-object v2, v3, v6

    invoke-static {v2, v10, v11}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    .line 488
    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/16 v10, 0xa

    if-ne v2, v10, :cond_2e

    .line 489
    aget-object v2, v3, v6

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v2, :cond_2d

    aget-object v2, v3, v6

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->amplitude:F

    cmpl-float v2, v2, v23

    if-lez v2, :cond_2d

    .line 490
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    iget-object v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    invoke-virtual {v2, v9, v11}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    .line 491
    aget-object v2, v3, v6

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->amplitude:F

    const/high16 v11, 0x41700000    # 15.0f

    mul-float/2addr v2, v11

    .line 492
    aget-object v11, v3, v6

    invoke-static {v11}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v11

    float-to-double v9, v2

    invoke-virtual {v11, v9, v10}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    goto :goto_24

    .line 494
    :cond_2d
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    goto :goto_24

    .line 497
    :cond_2e
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    int-to-long v9, v2

    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$100(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)J

    move-result-wide v27

    sub-long v9, v9, v27

    const-wide/16 v27, 0x5

    cmp-long v2, v9, v27

    if-gtz v2, :cond_2f

    .line 498
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    .line 499
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->random:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    rem-int/lit8 v9, v9, 0x64

    int-to-double v9, v9

    invoke-virtual {v2, v9, v10}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    goto :goto_24

    .line 501
    :cond_2f
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    .line 502
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    .line 506
    :cond_30
    :goto_24
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->update()V

    .line 507
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v9

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    invoke-virtual {v2, v8, v9, v10, v11}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->draw(Landroid/graphics/Canvas;FFLandroid/view/View;)V

    .line 508
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->getAvatarScale()F

    move-result v2

    const/4 v9, 0x5

    goto/16 :goto_29

    .line 448
    :cond_31
    :goto_25
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v2

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v9

    const/16 v10, 0xd

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->xRefP:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 449
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    if-nez v2, :cond_33

    .line 450
    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/4 v9, 0x5

    if-ne v2, v9, :cond_32

    .line 451
    aget-object v2, v3, v6

    new-instance v9, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    const/16 v10, 0xe

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-direct {v9, v10, v11}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;-><init>(II)V

    invoke-static {v2, v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    goto :goto_26

    .line 453
    :cond_32
    aget-object v2, v3, v6

    new-instance v9, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-direct {v9, v10, v11}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;-><init>(II)V

    invoke-static {v2, v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$302(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    .line 456
    :cond_33
    :goto_26
    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/4 v9, 0x5

    if-ne v2, v9, :cond_34

    .line 457
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_speakingText:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    mul-float v10, v5, v29

    float-to-int v10, v10

    invoke-static {v9, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setColor(I)V

    .line 459
    :cond_34
    aget-object v2, v3, v6

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-eqz v2, :cond_35

    aget-object v2, v3, v6

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->amplitude:F

    cmpl-float v2, v2, v23

    if-lez v2, :cond_35

    .line 460
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v10, 0x1

    invoke-virtual {v2, v10, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    .line 461
    aget-object v2, v3, v6

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->amplitude:F

    const/high16 v9, 0x41700000    # 15.0f

    mul-float/2addr v2, v9

    .line 462
    aget-object v9, v3, v6

    invoke-static {v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v9

    float-to-double v11, v2

    invoke-virtual {v9, v11, v12}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setAmplitude(D)V

    const/4 v11, 0x0

    goto :goto_27

    :cond_35
    const/4 v10, 0x1

    .line 464
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    iget-object v9, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v9}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->setShowWaves(ZLandroid/view/View;)V

    .line 466
    :goto_27
    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/4 v9, 0x5

    if-ne v2, v9, :cond_36

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27

    aget-object v2, v3, v6

    iget-object v2, v2, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastSpeakTime:J

    sub-long v27, v27, v10

    const-wide/16 v9, 0x1f4

    cmp-long v2, v27, v9

    if-lez v2, :cond_36

    .line 467
    iget-object v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->updateDelegate:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 469
    :cond_36
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->update()V

    .line 470
    iget v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    const/4 v9, 0x5

    if-ne v2, v9, :cond_37

    .line 471
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v10

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v11

    iget-object v15, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    invoke-virtual {v2, v8, v10, v11, v15}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->draw(Landroid/graphics/Canvas;FFLandroid/view/View;)V

    .line 472
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    .line 474
    :cond_37
    aget-object v2, v3, v6

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$300(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/GroupCallUserCell$AvatarWavesDrawable;->getAvatarScale()F

    move-result v2

    goto :goto_29

    :cond_38
    :goto_28
    const/4 v9, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    .line 525
    :goto_29
    invoke-virtual {v4, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_39

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 528
    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v3

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v5

    invoke-virtual {v8, v2, v2, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 529
    invoke-virtual {v4, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 530
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2a

    .line 532
    :cond_39
    invoke-virtual {v4, v8}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :goto_2a
    if-eqz v7, :cond_3a

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3a
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x1

    const/16 v10, 0xa

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/16 v15, 0xb

    goto/16 :goto_13

    :cond_3b
    const/4 v9, 0x5

    add-int/lit8 v6, v6, -0x1

    const/4 v9, 0x1

    const/16 v10, 0xa

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/16 v15, 0xb

    goto/16 :goto_12

    :cond_3c
    if-eqz v21, :cond_3d

    .line 540
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3d
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 592
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    .line 593
    invoke-virtual {p0, v0, v0, v2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 224
    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideAlpha:F

    return-void
.end method

.method public setAvatarsTextSize(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 272
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setTextSize(I)V

    .line 275
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 276
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

    .line 581
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->centered:Z

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 585
    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->count:I

    .line 586
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->parent:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 587
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDelegate(Ljava/lang/Runnable;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->updateDelegate:Ljava/lang/Runnable;

    return-void
.end method

.method public setObject(IILorg/telegram/tgnet/TLObject;)V
    .locals 12

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v0, v0, p1

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v3, v0, p1

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    if-nez p3, :cond_0

    .line 285
    aget-object p1, v0, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 286
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void

    .line 291
    :cond_0
    aget-object v0, v0, p1

    const-wide/16 v5, -0x1

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v0, v0, p1

    invoke-static {v0, p3}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$702(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLObject;

    .line 293
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    const/4 v3, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    .line 294
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v0, v0, p1

    iput-object p3, v0, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    .line 296
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    .line 297
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 299
    iget-object v9, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v9, v9, p1

    invoke-static {v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_0

    .line 301
    :cond_1
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 302
    iget-object v9, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object v9, v9, p1

    invoke-static {v9}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 304
    :goto_0
    iget v9, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-ne v9, v5, :cond_4

    .line 305
    invoke-static {p2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    cmp-long p2, v7, v9

    if-nez p2, :cond_2

    .line 306
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    goto :goto_1

    .line 308
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->isInCall:Z

    if-eqz p2, :cond_3

    .line 309
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    iget-wide v1, p3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->lastActiveDate:J

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    goto :goto_1

    .line 311
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    iget p3, p3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    int-to-long v1, p3

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    goto :goto_1

    .line 315
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    iget p3, p3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    int-to-long v1, p3

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$102(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    .line 317
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2, v7, v8}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    move-object p3, v0

    goto/16 :goto_3

    .line 318
    :cond_5
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$User;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_7

    .line 319
    check-cast p3, Lorg/telegram/tgnet/TLRPC$User;

    .line 320
    iget-boolean p2, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->showSavedMessages:Z

    if-eqz p2, :cond_6

    .line 321
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 322
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    goto :goto_2

    .line 324
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    invoke-virtual {p2, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 325
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 326
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 328
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    move-object v11, v4

    move-object v4, p3

    move-object p3, v11

    goto :goto_3

    .line 330
    :cond_7
    check-cast p3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 331
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    invoke-virtual {p2, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 332
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    .line 333
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$1000(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/ui/Components/AvatarDrawable;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 334
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$002(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;J)J

    :goto_3
    if-eqz v4, :cond_9

    .line 337
    iget-boolean p2, v4, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p2, :cond_8

    iget-boolean p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->showSavedMessages:Z

    if-eqz p2, :cond_8

    .line 338
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

    .line 340
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

    .line 343
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

    .line 345
    :goto_4
    iget p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    if-eq p2, v5, :cond_b

    const/16 p3, 0xa

    if-ne p2, p3, :cond_a

    goto :goto_5

    :cond_a
    move v3, v6

    .line 346
    :cond_b
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    if-eqz v3, :cond_c

    const/16 p3, 0x10

    goto :goto_6

    :cond_c
    const/16 p3, 0xc

    :goto_6
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 347
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->getSize()I

    move-result p2

    .line 348
    iget-object p3, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->animatingStates:[Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;

    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;->access$900(Lorg/telegram/ui/Components/AvatarsDrawable$DrawingState;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 349
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void
.end method

.method public setShowSavedMessages(Z)V
    .locals 0

    .line 598
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->showSavedMessages:Z

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 199
    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->overrideSize:I

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    .line 188
    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->currentStyle:I

    .line 189
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->invalidate()V

    return-void
.end method

.method public setTransitionProgress(F)V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    if-eqz v0, :cond_0

    .line 72
    iget v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 73
    iput p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/Components/AvatarsDrawable;->swapStates()V

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionInProgress:Z

    :cond_0
    return-void
.end method

.method public updateAfterTransitionEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AvatarsDrawable;->updateAfterTransition:Z

    return-void
.end method
