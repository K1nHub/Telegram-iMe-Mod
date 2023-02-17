.class public Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;
.super Landroid/view/View;
.source "DrawerProfileCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/DrawerProfileCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimatedStatusView"
.end annotation


# instance fields
.field private animationUniq:I

.field private animations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private color:Ljava/lang/Integer;

.field private effectsSize:I

.field private renderedEffectsSize:I

.field private stateSize:I

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 424
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 422
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animations:Ljava/util/ArrayList;

    .line 425
    iput p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->stateSize:I

    .line 426
    iput p3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->effectsSize:I

    .line 427
    iput p3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->renderedEffectsSize:I

    return-void
.end method

.method private detach()V
    .locals 3

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 499
    instance-of v2, v1, Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_1

    .line 500
    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    goto :goto_0

    .line 501
    :cond_1
    instance-of v2, v1, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v2, :cond_0

    .line 502
    check-cast v1, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 506
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public animateChange(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 10

    if-nez p1, :cond_0

    .line 511
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->detach()V

    return-void

    .line 517
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 518
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 521
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v3, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 523
    invoke-static {v2, v1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 525
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    :cond_2
    move-object v8, v0

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v8, v0

    :goto_1
    const/4 v0, 0x0

    if-nez v1, :cond_4

    if-eqz v8, :cond_4

    .line 530
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    .line 531
    invoke-virtual {p1, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 532
    iget v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animationUniq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animationUniq:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setUniqKeyPrefix(Ljava/lang/String;)V

    .line 533
    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->effectsSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->effectsSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_nolimit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x1

    const-string v7, "tgs"

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 534
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    .line 535
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :cond_4
    const/4 v2, 0x2

    if-nez v1, :cond_5

    .line 541
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v3, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v2, v1, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    goto :goto_2

    .line 543
    :cond_5
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2, p1, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    .line 545
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->color:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 546
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->color:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 548
    :cond_6
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColor()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->createFrom(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;ZZ)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    move-result-object p1

    .line 549
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setView(Landroid/view/View;)V

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_3
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 456
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->renderedEffectsSize:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 457
    iget v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->effectsSize:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    .line 458
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 459
    iget-object v3, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 460
    instance-of v4, v3, Lorg/telegram/messenger/ImageReceiver;

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_0

    .line 461
    check-cast v3, Lorg/telegram/messenger/ImageReceiver;

    .line 463
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v5

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v1

    int-to-float v6, v6

    div-float/2addr v6, v5

    int-to-float v5, v1

    .line 462
    invoke-virtual {v3, v4, v6, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 468
    invoke-virtual {v3, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_1

    .line 473
    :cond_0
    instance-of v4, v3, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v4, :cond_1

    .line 474
    check-cast v3, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    .line 476
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 477
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v0

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    int-to-float v7, v7

    div-float/2addr v7, v5

    float-to-int v7, v7

    .line 479
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v0

    int-to-float v8, v8

    div-float/2addr v8, v5

    float-to-int v5, v8

    .line 475
    invoke-virtual {v3, v4, v6, v7, v5}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setBounds(IIII)V

    .line 481
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->draw(Landroid/graphics/Canvas;)V

    .line 482
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->done()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 483
    invoke-virtual {v3, p0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    .line 484
    iget-object v4, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 492
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 493
    invoke-direct {p0}, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->detach()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 438
    iget p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->renderedEffectsSize:I

    iget p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->stateSize:I

    iget v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->effectsSize:I

    .line 439
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->renderedEffectsSize:I

    iget v1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->stateSize:I

    iget v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->effectsSize:I

    .line 440
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 438
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setColor(I)V
    .locals 4

    .line 557
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->color:Ljava/lang/Integer;

    .line 558
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 559
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 p1, 0x0

    .line 560
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 561
    iget-object v2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->animations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 562
    instance-of v3, v2, Lorg/telegram/messenger/ImageReceiver;

    if-eqz v3, :cond_0

    .line 563
    check-cast v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/ImageReceiver;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 564
    :cond_0
    instance-of v3, v2, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v3, :cond_1

    .line 565
    check-cast v2, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public translate(FF)V
    .locals 2

    .line 446
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 447
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    sub-float/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->y1:F

    iget p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->y2:F

    add-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public translateY2(F)V
    .locals 1

    .line 451
    iget v0, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->y1:F

    iput p1, p0, Lorg/telegram/ui/Cells/DrawerProfileCell$AnimatedStatusView;->y2:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
