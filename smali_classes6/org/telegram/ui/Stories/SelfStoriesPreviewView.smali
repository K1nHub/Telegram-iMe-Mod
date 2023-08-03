.class public abstract Lorg/telegram/ui/Stories/SelfStoriesPreviewView;
.super Landroid/view/View;
.source "SelfStoriesPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;
    }
.end annotation


# instance fields
.field checkScroll:Z

.field childPadding:I

.field gestureDetector:Landroid/view/GestureDetector;

.field imageReceiversTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;",
            ">;"
        }
    .end annotation
.end field

.field public imagesFromH:I

.field public imagesFromW:I

.field public imagesFromY:I

.field private isAttachedToWindow:Z

.field private lastClosestPosition:I

.field lastDrawnImageReceivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;",
            ">;"
        }
    .end annotation
.end field

.field maxScroll:F

.field minScroll:F

.field progressToOpen:F

.field scrollAnimator:Landroid/animation/ValueAnimator;

.field private scrollToPositionInLayout:I

.field scrollX:F

.field scroller:Landroid/widget/Scroller;

.field storyItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;",
            ">;"
        }
    .end annotation
.end field

.field topPadding:F

.field private viewH:I

.field private viewW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 112
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollToPositionInLayout:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->storyItems:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->imageReceiversTmp:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastDrawnImageReceivers:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$1;-><init>(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->gestureDetector:Landroid/view/GestureDetector;

    .line 113
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scroller:Landroid/widget/Scroller;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)I
    .locals 0

    .line 22
    iget p0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastClosestPosition:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->isAttachedToWindow:Z

    return p0
.end method

.method private findOrCreateImageReceiver(ILjava/util/ArrayList;)Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;",
            ">;)",
            "Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 228
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 230
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    iget v1, v1, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->position:I

    if-ne v1, p1, :cond_0

    .line 231
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    new-instance p2, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;-><init>(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)V

    .line 235
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->onBind(I)V

    .line 236
    iput p1, p2, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->position:I

    return-object p2
.end method

.method private scrollToClosest()V
    .locals 2

    .line 222
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastClosestPosition:I

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    .line 223
    invoke-virtual {p0, v0, v1, v1}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollToPosition(IZZ)V

    :cond_0
    return-void
.end method

.method private updateScrollParams()V
    .locals 4

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->minScroll:F

    .line 133
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->childPadding:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->childPadding:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->maxScroll:F

    return-void
.end method


# virtual methods
.method public abortScroll()V
    .locals 3

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 324
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastClosestPosition:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollToPosition(IZZ)V

    return-void
.end method

.method public getCenteredImageReciever()Lorg/telegram/messenger/ImageReceiver;
    .locals 3

    const/4 v0, 0x0

    .line 310
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastDrawnImageReceivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 311
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastDrawnImageReceivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    iget v1, v1, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->position:I

    iget v2, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastClosestPosition:I

    if-ne v1, v2, :cond_0

    .line 312
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastDrawnImageReceivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClosestPosition()I
    .locals 1

    .line 306
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastClosestPosition:I

    return v0
.end method

.method public getFinalHeight()F
    .locals 1

    const/16 v0, 0xb4

    .line 328
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 395
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->isAttachedToWindow:Z

    return-void
.end method

.method public onCenteredImageTap()V
    .locals 0

    return-void
.end method

.method public onClosestPositionChanged(I)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 401
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 402
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->isAttachedToWindow:Z

    .line 403
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastDrawnImageReceivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 404
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastDrawnImageReceivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->onDetach()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastDrawnImageReceivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method abstract onDragging()V
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 139
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollX:F

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x1

    .line 148
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->checkScroll:Z

    goto :goto_0

    .line 149
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->checkScroll:Z

    if-eqz v1, :cond_1

    .line 150
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollToClosest()V

    .line 152
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 153
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->imageReceiversTmp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 154
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->imageReceiversTmp:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastDrawnImageReceivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v3, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastDrawnImageReceivers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/high16 v3, 0x4f000000

    const/4 v5, -0x1

    move v7, v5

    const/4 v6, 0x0

    .line 158
    :goto_1
    iget-object v8, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_c

    .line 159
    iget v8, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollX:F

    neg-float v8, v8

    iget v9, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    iget v10, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->childPadding:I

    add-int/2addr v10, v9

    mul-int/2addr v10, v6

    int-to-float v10, v10

    add-float/2addr v8, v10

    int-to-float v9, v9

    div-float/2addr v9, v2

    add-float/2addr v9, v8

    sub-float/2addr v9, v1

    .line 161
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 164
    iget v11, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    int-to-float v11, v11

    cmpg-float v11, v10, v11

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    if-gez v11, :cond_2

    .line 165
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v14, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    int-to-float v14, v14

    div-float/2addr v11, v14

    sub-float v11, v13, v11

    const v14, 0x3e4ccccd    # 0.2f

    mul-float/2addr v14, v11

    add-float/2addr v14, v13

    goto :goto_2

    :cond_2
    move v11, v12

    move v14, v13

    :goto_2
    if-eq v7, v5, :cond_3

    cmpg-float v15, v10, v3

    if-gez v15, :cond_4

    :cond_3
    move v7, v6

    move v3, v10

    :cond_4
    cmpg-float v9, v9, v12

    const v10, 0x3dcccccd    # 0.1f

    if-gez v9, :cond_5

    .line 173
    iget v9, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    int-to-float v9, v9

    mul-float/2addr v9, v10

    sub-float v10, v13, v11

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    goto :goto_3

    .line 175
    :cond_5
    iget v9, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    int-to-float v9, v9

    mul-float/2addr v9, v10

    sub-float v10, v13, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 177
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-gtz v9, :cond_b

    iget v9, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    int-to-float v9, v9

    add-float/2addr v9, v8

    cmpg-float v9, v9, v12

    if-gez v9, :cond_6

    goto/16 :goto_8

    .line 180
    :cond_6
    iget-object v9, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->imageReceiversTmp:Ljava/util/ArrayList;

    invoke-direct {v0, v6, v9}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->findOrCreateImageReceiver(ILjava/util/ArrayList;)Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    move-result-object v9

    .line 181
    iget v10, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    int-to-float v11, v10

    mul-float/2addr v11, v14

    .line 182
    iget v15, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewH:I

    int-to-float v4, v15

    mul-float/2addr v4, v14

    int-to-float v10, v10

    sub-float v10, v11, v10

    div-float/2addr v10, v2

    sub-float/2addr v8, v10

    .line 184
    iget v10, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->topPadding:F

    int-to-float v14, v15

    sub-float v14, v4, v14

    div-float/2addr v14, v2

    sub-float/2addr v10, v14

    .line 185
    iget v14, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->progressToOpen:F

    cmpl-float v12, v14, v12

    if-eqz v12, :cond_8

    iget v12, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastClosestPosition:I

    if-ne v6, v12, :cond_7

    goto :goto_4

    :cond_7
    sub-int v12, v6, v12

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    mul-int/2addr v12, v14

    int-to-float v12, v12

    .line 189
    iget v14, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->imagesFromY:I

    int-to-float v14, v14

    .line 190
    iget v15, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->imagesFromH:I

    int-to-float v15, v15

    .line 191
    iget v2, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->imagesFromW:I

    int-to-float v2, v2

    .line 192
    iget-object v5, v9, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    iget v13, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->progressToOpen:F

    .line 193
    invoke-static {v12, v8, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    iget v12, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->progressToOpen:F

    .line 194
    invoke-static {v14, v10, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    iget v12, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->progressToOpen:F

    .line 195
    invoke-static {v2, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget v11, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->progressToOpen:F

    .line 196
    invoke-static {v15, v4, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    .line 192
    invoke-virtual {v5, v8, v10, v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_5

    .line 186
    :cond_8
    :goto_4
    iget-object v2, v9, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v8, v10, v11, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 199
    :goto_5
    iget v2, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->progressToOpen:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_a

    iget v2, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastClosestPosition:I

    if-eq v6, v2, :cond_9

    goto :goto_6

    :cond_9
    move-object/from16 v4, p1

    goto :goto_7

    .line 200
    :cond_a
    :goto_6
    iget-object v2, v9, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->receiver:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 202
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastDrawnImageReceivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    :goto_8
    move-object/from16 v4, p1

    :goto_9
    add-int/lit8 v6, v6, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, -0x1

    goto/16 :goto_1

    .line 204
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_d

    iget v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastClosestPosition:I

    if-eq v1, v7, :cond_d

    .line 205
    iput v7, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastClosestPosition:I

    .line 206
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->onClosestPositionChanged(I)V

    :cond_d
    const/4 v4, 0x0

    .line 208
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->imageReceiversTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_e

    .line 209
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->imageReceiversTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$ImageHolder;->onDetach()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 211
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->imageReceiversTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 118
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/16 p1, 0x8

    .line 119
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->childPadding:I

    const/16 p1, 0xb4

    .line 120
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3f99999a    # 1.2f

    div-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewH:I

    int-to-float p2, p2

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x41100000    # 9.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 121
    iput p2, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    .line 122
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewH:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/16 p2, 0x14

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->topPadding:F

    .line 123
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->updateScrollParams()V

    .line 124
    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollToPositionInLayout:I

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, -0x1

    .line 125
    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastClosestPosition:I

    .line 126
    iget p2, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollToPositionInLayout:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollToPosition(IZZ)V

    .line 127
    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollToPositionInLayout:I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 289
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollToClosest()V

    :cond_1
    return v1
.end method

.method public scrollToPosition(IZZ)V
    .locals 3

    .line 242
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastClosestPosition:I

    if-ne v0, p1, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    if-gtz p3, :cond_2

    :cond_1
    return-void

    .line 245
    :cond_2
    iget p3, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastClosestPosition:I

    if-eq p3, p1, :cond_3

    .line 246
    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->lastClosestPosition:I

    .line 247
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->onClosestPositionChanged(I)V

    .line 249
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 p3, 0x0

    .line 250
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->checkScroll:Z

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 252
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-nez p2, :cond_5

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    iget p3, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    int-to-float v1, p3

    div-float/2addr v1, v0

    add-float/2addr p2, v1

    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->childPadding:I

    add-int/2addr p3, v0

    mul-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollX:F

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 260
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    int-to-float v2, v1

    div-float/2addr v2, v0

    add-float/2addr p2, v2

    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->childPadding:I

    add-int/2addr v1, v0

    mul-int/2addr v1, p1

    int-to-float p1, v1

    add-float/2addr p2, p1

    .line 261
    iget p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollX:F

    cmpl-float v0, p2, p1

    if-nez v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p1, v0, p3

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 264
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 265
    new-instance p2, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$2;-><init>(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView$3;-><init>(Lorg/telegram/ui/Stories/SelfStoriesPreviewView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 280
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method public scrollToPositionWithOffset(IF)V
    .locals 6

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 341
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 348
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    int-to-float v3, v2

    div-float/2addr v3, v1

    add-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->childPadding:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p1

    int-to-float v2, v2

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpl-float v3, p2, v2

    if-lez v3, :cond_2

    .line 352
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    int-to-float v5, v4

    div-float/2addr v5, v1

    add-float/2addr v3, v5

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->childPadding:I

    add-int/2addr v4, v1

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr v4, p1

    int-to-float p1, v4

    add-float/2addr v3, p1

    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v4, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->viewW:I

    int-to-float v5, v4

    div-float/2addr v5, v1

    add-float/2addr v3, v5

    iget v1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->childPadding:I

    add-int/2addr v4, v1

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr v4, p1

    int-to-float p1, v4

    add-float/2addr v3, p1

    neg-float p2, p2

    :goto_0
    cmpl-float p1, p2, v2

    if-nez p1, :cond_3

    .line 358
    iput v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollX:F

    goto :goto_1

    .line 360
    :cond_3
    invoke-static {v0, v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollX:F

    :goto_1
    const/4 p1, 0x0

    .line 362
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->checkScroll:Z

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setItems(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/SelfStoryViewsView$StoryItemInternal;",
            ">;I)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->storyItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 297
    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->updateScrollParams()V

    .line 298
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 299
    invoke-virtual {p0, p2, p1, p1}, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollToPosition(IZZ)V

    goto :goto_0

    .line 301
    :cond_0
    iput p2, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->scrollToPositionInLayout:I

    :goto_0
    return-void
.end method

.method public setProgressToOpen(F)V
    .locals 1

    .line 332
    iget v0, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->progressToOpen:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/SelfStoriesPreviewView;->progressToOpen:F

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
