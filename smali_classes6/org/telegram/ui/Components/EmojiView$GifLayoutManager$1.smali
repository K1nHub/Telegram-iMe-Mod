.class Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

.field final synthetic val$kikliko:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;Lorg/telegram/ui/Components/EmojiView;Z)V
    .locals 0

    .line 9423
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->val$kikliko:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 4

    .line 9427
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->val$kikliko:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    .line 9428
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->val$kikliko:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$21400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    .line 9429
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->val$kikliko:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$11800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v2

    .line 9430
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9431
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-ne v0, v1, :cond_3

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9432
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 9434
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getSpanSizeForItem(I)I

    move-result p1

    return p1

    :cond_4
    if-nez p1, :cond_5

    .line 9437
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$12200(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->val$kikliko:Z

    if-eqz v0, :cond_6

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$16400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_6
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9438
    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 9440
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager$1;->this$1:Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$12200(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getSpanSizeForItem(I)I

    move-result p1

    return p1
.end method
