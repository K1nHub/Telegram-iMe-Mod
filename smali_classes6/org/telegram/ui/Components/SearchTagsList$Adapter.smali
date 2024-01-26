.class Lorg/telegram/ui/Components/SearchTagsList$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SearchTagsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SearchTagsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchTagsList;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SearchTagsList;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$Adapter;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$Adapter;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchTagsList;->access$000(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    if-ltz p2, :cond_2

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$Adapter;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchTagsList;->access$000(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 290
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$Adapter;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchTagsList;->access$000(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/SearchTagsList$Item;

    .line 291
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    iget-object v1, p2, Lorg/telegram/ui/Components/SearchTagsList$Item;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->toTLReaction()Lorg/telegram/tgnet/TLRPC$Reaction;

    move-result-object v1

    iget v2, p2, Lorg/telegram/ui/Components/SearchTagsList$Item;->count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->set(Lorg/telegram/tgnet/TLRPC$Reaction;Ljava/lang/Integer;)V

    .line 292
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SearchTagsList$Item;->hash()J

    move-result-wide v0

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchTagsList$Adapter;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {p2}, Lorg/telegram/ui/Components/SearchTagsList;->access$100(Lorg/telegram/ui/Components/SearchTagsList;)J

    move-result-wide v2

    cmp-long p2, v0, v2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->setChosen(ZZ)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 283
    new-instance p1, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchTagsList$Adapter;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/SearchTagsList$TagButton;-><init>(Lorg/telegram/ui/Components/SearchTagsList;Landroid/content/Context;)V

    .line 284
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
