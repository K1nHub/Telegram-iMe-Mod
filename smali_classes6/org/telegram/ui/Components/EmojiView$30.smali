.class Lorg/telegram/ui/Components/EmojiView$30;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLandroid/content/Context;ZLorg/telegram/tgnet/TLRPC$ChatFull;Landroid/view/ViewGroup;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
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

    .line 2861
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 2864
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 2865
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p4}, Lorg/telegram/ui/Components/EmojiView;->access$11800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p4

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$11800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$4100(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I

    move-result p3

    if-ne p2, p3, :cond_0

    .line 2866
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    if-nez p2, :cond_2

    .line 2869
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$11800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$9600(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 2876
    :cond_1
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 2870
    :cond_2
    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2871
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2872
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$11900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->isFirstRow(I)Z

    move-result p3

    const/4 p4, 0x2

    if-eqz p3, :cond_3

    move p3, v0

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    :goto_1
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 2873
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 2874
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$11900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$30;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$11800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->access$9600(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->isLastInRow(I)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    :goto_2
    iput v0, p1, Landroid/graphics/Rect;->right:I

    :goto_3
    return-void
.end method
