.class Lorg/telegram/ui/Components/SuggestEmojiView$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SuggestEmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SuggestEmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SuggestEmojiView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SuggestEmojiView;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$Adapter;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 888
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$Adapter;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$700(Lorg/telegram/ui/Components/SuggestEmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$Adapter;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$700(Lorg/telegram/ui/Components/SuggestEmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object p1, p1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 883
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$Adapter;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->access$700(Lorg/telegram/ui/Components/SuggestEmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object p2, p2, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;->access$800(Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 878
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$Adapter;->this$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Components/SuggestEmojiView$EmojiImageView;-><init>(Lorg/telegram/ui/Components/SuggestEmojiView;Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
