.class Lorg/telegram/ui/Components/EmojiView$19;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
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

    .line 2718
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3

    .line 2721
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$10100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_0

    .line 2723
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$10600(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result p1

    return p1

    .line 2725
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$10700(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 2726
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$10800(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2727
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$10800(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_2

    :cond_1
    return v2

    .line 2731
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$10600(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result p1

    return p1

    .line 2733
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$10900(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 2734
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$11000(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2735
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;->access$11000(Lorg/telegram/ui/Components/EmojiView$StickersSearchGridAdapter;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_5

    :cond_4
    return v2

    .line 2739
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$19;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$10300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->access$10600(Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;)I

    move-result p1

    return p1
.end method
