.class public Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
.super Ljava/lang/Object;
.source "AnimatedEmojiSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedEmojiSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiGroupedSpans"
.end annotation


# instance fields
.field backgroundDrawingArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;",
            ">;"
        }
    .end annotation
.end field

.field groupedByLayout:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/text/Layout;",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;",
            ">;"
        }
    .end annotation
.end field

.field public holders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;",
            ">;"
        }
    .end annotation
.end field

.field private rawIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    .line 611
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->backgroundDrawingArray:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)I
    .locals 0

    .line 609
    iget p0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->rawIndex:I

    return p0
.end method

.method static synthetic access$008(Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)I
    .locals 2

    .line 609
    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->rawIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->rawIndex:I

    return v0
.end method


# virtual methods
.method public add(Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)V
    .locals 3

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->access$100(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)Landroid/view/View;

    move-result-object v1

    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->access$200(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)Z

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;-><init>(Landroid/view/View;Landroid/text/Layout;Z)V

    .line 624
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->backgroundDrawingArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_0
    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->add(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)V

    .line 628
    iget-object p1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    return-void
.end method

.method public clearPositions()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 673
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 674
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iput-boolean v0, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->spanDrawn:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public incrementFrames(I)V
    .locals 2

    const/4 v0, 0x0

    .line 679
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 680
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->incrementFrames(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public recordPositions(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 687
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 688
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->access$302(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Z)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    :goto_0
    const/4 v0, 0x0

    .line 666
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 667
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->remove(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 3

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->remove(Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)V

    .line 655
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    iget-object v2, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->backgroundDrawingArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 662
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    return-void

    .line 660
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "!!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replaceLayout(Landroid/text/Layout;Landroid/text/Layout;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    if-eqz p2, :cond_1

    .line 696
    iput-object p1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->layout:Landroid/text/Layout;

    const/4 v0, 0x0

    .line 697
    :goto_0
    iget-object v1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 698
    iget-object v1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iput-object p1, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 700
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->groupedByLayout:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
