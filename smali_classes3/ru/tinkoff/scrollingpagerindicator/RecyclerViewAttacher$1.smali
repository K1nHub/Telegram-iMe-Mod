.class Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;->attachToPager(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;

.field final synthetic val$indicator:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;


# direct methods
.method constructor <init>(Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$1;->this$0:Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;

    iput-object p2, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$1;->val$indicator:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 84
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$1;->val$indicator:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    iget-object v1, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$1;->this$0:Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;

    invoke-static {v1}, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;->access$000(Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setDotCount(I)V

    .line 85
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$1;->this$0:Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;

    invoke-static {v0}, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;->access$100(Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$1;->onChanged()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$1;->onChanged()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$1;->onChanged()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 110
    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$1;->onChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$1;->onChanged()V

    return-void
.end method
