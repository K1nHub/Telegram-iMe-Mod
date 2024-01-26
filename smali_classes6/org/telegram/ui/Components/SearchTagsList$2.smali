.class Lorg/telegram/ui/Components/SearchTagsList$2;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SearchTagsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchTagsList;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchTagsList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchTagsList;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$2;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z
    .locals 6

    .line 117
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_2

    .line 118
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList$2;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v1}, Lorg/telegram/ui/Components/SearchTagsList;->access$000(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 119
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList$2;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v1}, Lorg/telegram/ui/Components/SearchTagsList;->access$000(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchTagsList$Item;

    .line 120
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    .line 121
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchTagsList$2;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v2}, Lorg/telegram/ui/Components/SearchTagsList;->access$100(Lorg/telegram/ui/Components/SearchTagsList;)J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchTagsList$Item;->hash()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->setChosen(ZZ)Z

    move-result v2

    .line 122
    iget v0, v0, Lorg/telegram/ui/Components/SearchTagsList$Item;->count:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->setCount(I)Z

    move-result v0

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    return v3

    .line 127
    :cond_2
    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z

    move-result p1

    return p1
.end method

.method protected animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;)V

    return-void
.end method
