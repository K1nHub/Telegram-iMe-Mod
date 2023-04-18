.class Lorg/telegram/ui/PhotoViewer$41;
.super Lorg/telegram/ui/Components/spoilers/SpoilersTextView;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->createCaptionTextView()Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private lastLayout:Landroid/text/Layout;

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/ui/Components/LinkSpanDrawable<",
            "Landroid/text/style/ClickableSpan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public static synthetic $r8$lambda$8s2bUIeNlRIsHvoFxYyr68Fwtxc(Lorg/telegram/ui/PhotoViewer$41;Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer$41;->lambda$onTouchEvent$1(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nQnaDTw65Dv8559sZv90aE2Nz-o(Lorg/telegram/ui/PhotoViewer$41;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$41;->lambda$onTouchEvent$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 0

    .line 7281
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;)V

    .line 7284
    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    return-void
.end method

.method private synthetic lambda$onTouchEvent$0()V
    .locals 1

    .line 7325
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$1(Lorg/telegram/ui/Components/LinkSpanDrawable;)V
    .locals 2

    .line 7324
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-ne p1, v0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    instance-of p1, p1, Landroid/text/style/URLSpan;

    if-eqz p1, :cond_0

    .line 7325
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Landroid/text/style/URLSpan;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$41$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$41$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$41;)V

    invoke-static {p1, v0, p0, v1}, Lorg/telegram/ui/PhotoViewer;->access$21200(Lorg/telegram/ui/PhotoViewer;Landroid/text/style/URLSpan;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 7326
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 7392
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7393
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7394
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7395
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 7396
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$41;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v4, p1

    invoke-static/range {v4 .. v12}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 7397
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 7380
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 7381
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 7363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7364
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7365
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7366
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7368
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 7369
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7370
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->lastLayout:Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 7371
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v2, p0, p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 7372
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->lastLayout:Landroid/text/Layout;

    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 7386
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 7387
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/text/Layout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-static {p4, p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$41;->animatedEmojiDrawables:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 7288
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7292
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 7340
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 7341
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 7342
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    :goto_0
    move v0, v3

    goto/16 :goto_3

    :cond_2
    move v0, v1

    goto/16 :goto_3

    .line 7293
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 7294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 7296
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-nez v5, :cond_4

    return v1

    .line 7300
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    .line 7301
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    int-to-float v0, v0

    invoke-virtual {v6, v5, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 7302
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    cmpg-float v8, v7, v0

    if-gtz v8, :cond_6

    .line 7305
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    add-float/2addr v7, v5

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_6

    if-ltz v4, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-gt v4, v0, :cond_6

    .line 7306
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7307
    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v6, v6, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ClickableSpan;

    .line 7308
    array-length v5, v4

    if-eqz v5, :cond_6

    .line 7309
    aget-object v5, v4, v1

    .line 7310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    .line 7312
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$41;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 7313
    new-instance v6, Lorg/telegram/ui/Components/LinkSpanDrawable;

    aget-object v4, v4, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {v6, v4, v2, v7, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    iput-object v6, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    const v4, 0x6662a9e3

    .line 7314
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->setColor(I)V

    .line 7315
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$41;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 7316
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 7317
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 7318
    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v6

    .line 7319
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v4, v8}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 7320
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v4, v0, v6}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 7322
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 7323
    new-instance v4, Lorg/telegram/ui/PhotoViewer$41$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0}, Lorg/telegram/ui/PhotoViewer$41$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PhotoViewer$41;Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 7328
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v6, v0

    .line 7323
    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    move-object v5, v2

    .line 7332
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_8

    .line 7333
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 7334
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    if-ne v0, v5, :cond_7

    .line 7335
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v4

    check-cast v4, Landroid/text/style/ClickableSpan;

    invoke-static {v0, v4, p0}, Lorg/telegram/ui/PhotoViewer;->access$21100(Lorg/telegram/ui/PhotoViewer;Landroid/text/style/ClickableSpan;Landroid/widget/TextView;)V

    .line 7337
    :cond_7
    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer$41;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    goto/16 :goto_0

    :cond_8
    :goto_3
    if-nez v0, :cond_a

    .line 7346
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    move p1, v1

    goto :goto_5

    :cond_a
    :goto_4
    move p1, v3

    .line 7347
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$41;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$11000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    move v1, v3

    :cond_b
    return v1
.end method

.method public setPressed(Z)V
    .locals 1

    .line 7352
    invoke-virtual {p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7353
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    if-eqz v0, :cond_1

    .line 7355
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method
