.class Lorg/telegram/ui/Components/EmojiView$9;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .line 1925
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanGroupIndex(II)I
    .locals 0

    .line 1952
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    return p1
.end method

.method public getSpanSize(I)I
    .locals 3

    .line 1928
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    if-ne p1, v2, :cond_3

    .line 1929
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 1931
    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$2000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->access$6900(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$2000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->access$7000(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1933
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$7100(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 1936
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 1937
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7200(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 1938
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$7300(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 1939
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$7400(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 1940
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$7500(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 1941
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$7600(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 1942
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->access$7700(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_3

    goto :goto_0

    :cond_3
    return v2

    .line 1944
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$7100(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
