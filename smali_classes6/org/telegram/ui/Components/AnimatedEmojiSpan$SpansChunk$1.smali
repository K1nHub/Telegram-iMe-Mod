.class Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;
.super Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;
.source "AnimatedEmojiSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->checkBackgroundRendering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final backgroundHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    invoke-direct {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;-><init>()V

    .line 736
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->backgroundHolders:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public drawInBackground(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    .line 740
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->backgroundHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 741
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->backgroundHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    if-eqz v1, :cond_0

    .line 742
    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->access$400(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 743
    iget-object v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->access$400(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v1, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public drawInUiThread(Landroid/graphics/Canvas;F)V
    .locals 10

    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v0, 0x0

    move v9, v0

    .line 751
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    iget-object v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    iget-object v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    .line 753
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-boolean v1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->spanDrawn:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-wide v2, v7

    move v6, p2

    .line 756
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->draw(Landroid/graphics/Canvas;JFFF)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFrameReady()V
    .locals 3

    const/4 v0, 0x0

    .line 776
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->backgroundHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 777
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->backgroundHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->backgroundHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget v2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->releaseDrawInBackground(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->backgroundHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    iget-object v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    iget-object v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public onPaused()V
    .locals 0

    .line 789
    invoke-super {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onPaused()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    iget-object v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    iget-object v0, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public prepareDraw(J)V
    .locals 3

    .line 762
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->backgroundHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 763
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->backgroundHolders:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->this$0:Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    iget-object v1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 764
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->backgroundHolders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 765
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->backgroundHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    .line 766
    iget-object v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->spanDrawn:Z

    if-nez v2, :cond_0

    .line 767
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk$1;->backgroundHolders:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v2

    goto :goto_1

    .line 770
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    invoke-virtual {v1, p1, p2, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->prepareForBackgroundDraw(JI)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
