.class Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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

    .line 117
    iput-object p1, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$2;->this$0:Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;

    iput-object p2, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$2;->val$indicator:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 120
    iget-object p1, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$2;->this$0:Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;

    invoke-static {p1}, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;->access$200(Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$2;->this$0:Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;

    invoke-static {p1}, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;->access$300(Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 123
    iget-object p2, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$2;->val$indicator:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$2;->this$0:Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;

    invoke-static {v0}, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;->access$000(Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setDotCount(I)V

    .line 124
    iget-object p2, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$2;->this$0:Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;

    invoke-static {p2}, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;->access$000(Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 125
    iget-object p2, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$2;->val$indicator:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    invoke-virtual {p2, p1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setCurrentPosition(I)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 133
    iget-object p1, p0, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher$2;->this$0:Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;

    invoke-static {p1}, Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;->access$100(Lru/tinkoff/scrollingpagerindicator/RecyclerViewAttacher;)V

    return-void
.end method
