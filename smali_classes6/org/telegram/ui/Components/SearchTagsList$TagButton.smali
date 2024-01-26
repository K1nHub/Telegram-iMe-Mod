.class Lorg/telegram/ui/Components/SearchTagsList$TagButton;
.super Landroid/view/View;
.source "SearchTagsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SearchTagsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagButton"
.end annotation


# instance fields
.field private attached:Z

.field private chosen:Z

.field private count:I

.field private progress:Lorg/telegram/ui/Components/AnimatedFloat;

.field public reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

.field final synthetic this$0:Lorg/telegram/ui/Components/SearchTagsList;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SearchTagsList;Landroid/content/Context;)V
    .locals 7

    .line 309
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    .line 310
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 395
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x104

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->progress:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 311
    invoke-static {p0}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/SearchTagsList$TagButton;)Z
    .locals 0

    .line 306
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->chosen:Z

    return p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 406
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 407
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->attached:Z

    if-nez v0, :cond_1

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    :cond_0
    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->attached:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 417
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 418
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->attached:Z

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->detach()V

    :cond_0
    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->attached:Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget v4, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float v4, v1, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->progress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->draw(Landroid/graphics/Canvas;FFFFZ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const p1, 0x410ab852    # 8.67f

    .line 391
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz p2, :cond_0

    iget p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    goto :goto_0

    :cond_0
    const p2, 0x423151ec    # 44.33f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    :goto_0
    add-int/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 v0, 0x28

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/TLRPC$Reaction;Ljava/lang/Integer;)V
    .locals 9

    .line 316
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_reactionCount;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_reactionCount;-><init>()V

    .line 317
    iput-object p1, v8, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    move p2, p1

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    iput p2, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->count:I

    iput p2, v8, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    .line 320
    new-instance p2, Lorg/telegram/ui/Components/SearchTagsList$TagButton$1;

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchTagsList;->access$300(Lorg/telegram/ui/Components/SearchTagsList;)I

    move-result v3

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchTagsList;->access$400(Lorg/telegram/ui/Components/SearchTagsList;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object v0, p2

    move-object v1, p0

    move-object v4, p0

    move-object v5, v8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/SearchTagsList$TagButton$1;-><init>(Lorg/telegram/ui/Components/SearchTagsList$TagButton;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;ILandroid/view/View;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    const v0, 0x423151ec    # 44.33f

    .line 342
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    .line 343
    iget-object p2, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    .line 344
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object p2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    if-eqz p2, :cond_1

    iget v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    if-lez v0, :cond_1

    .line 345
    iget v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v0, v0

    iget-object p2, p2, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->countText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    add-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    .line 347
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    const/16 p2, 0x1c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    .line 348
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-boolean p2, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->chosen:Z

    iput-boolean p2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    .line 349
    iget-boolean p2, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->attached:Z

    if-eqz p2, :cond_2

    .line 350
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attach()V

    :cond_2
    return-void
.end method

.method public setChosen(ZZ)Z
    .locals 2

    .line 356
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->chosen:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 357
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->chosen:Z

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 359
    iput-boolean p1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    if-eqz p2, :cond_1

    .line 362
    iget p1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    iput p1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromTextColor:I

    .line 363
    iget p1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnBackgroundColor:I

    iput p1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromBackgroundColor:I

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->progress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    goto :goto_0

    .line 366
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->progress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 368
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return v1
.end method

.method public setCount(I)Z
    .locals 4

    .line 374
    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->count:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    if-eqz v0, :cond_1

    .line 375
    iget v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    iput v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromWidth:I

    .line 376
    iput p1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    const v1, 0x423151ec    # 44.33f

    .line 377
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->reactionButton:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    iget-object v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    if-eqz v0, :cond_0

    iget v2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    if-lez v2, :cond_0

    .line 380
    iget v2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    int-to-float v2, v2

    iget-object v0, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v3, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->countText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    .line 382
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->progress:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 383
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
