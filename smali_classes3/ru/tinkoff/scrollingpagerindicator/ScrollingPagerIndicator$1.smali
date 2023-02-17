.class Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;
.super Ljava/lang/Object;
.source "ScrollingPagerIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachToPager(Ljava/lang/Object;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

.field final synthetic val$attacher:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;

.field final synthetic val$pager:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;Ljava/lang/Object;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;->this$0:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    iput-object p2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;->val$pager:Ljava/lang/Object;

    iput-object p3, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;->val$attacher:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 303
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;->this$0:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->access$002(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;I)I

    .line 304
    iget-object v0, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;->this$0:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    iget-object v1, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;->val$pager:Ljava/lang/Object;

    iget-object v2, p0, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$1;->val$attacher:Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;

    invoke-virtual {v0, v1, v2}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachToPager(Ljava/lang/Object;Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator$PagerAttacher;)V

    return-void
.end method
