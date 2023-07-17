.class public final Lcom/iMe/utils/listeners/SnapOnScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SnapOnScrollListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;
    }
.end annotation


# instance fields
.field private behavior:Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

.field private onSnapPositionChangeListener:Lcom/iMe/utils/listeners/OnSnapPositionChangeListener;

.field private final snapHelper:Landroidx/recyclerview/widget/SnapHelper;

.field private snapPosition:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/SnapHelper;Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;Lcom/iMe/utils/listeners/OnSnapPositionChangeListener;)V
    .locals 1

    const-string/jumbo v0, "snapHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "behavior"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/utils/listeners/SnapOnScrollListener;->snapHelper:Landroidx/recyclerview/widget/SnapHelper;

    .line 9
    iput-object p2, p0, Lcom/iMe/utils/listeners/SnapOnScrollListener;->behavior:Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    .line 10
    iput-object p3, p0, Lcom/iMe/utils/listeners/SnapOnScrollListener;->onSnapPositionChangeListener:Lcom/iMe/utils/listeners/OnSnapPositionChangeListener;

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/iMe/utils/listeners/SnapOnScrollListener;->snapPosition:I

    return-void
.end method

.method private final maybeNotifySnapPositionChange(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/utils/listeners/SnapOnScrollListener;->snapHelper:Landroidx/recyclerview/widget/SnapHelper;

    invoke-static {v0, p1}, Lcom/iMe/utils/extentions/common/SnapHelperExtKt;->getSnapPosition(Landroidx/recyclerview/widget/SnapHelper;Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    .line 37
    iget v0, p0, Lcom/iMe/utils/listeners/SnapOnScrollListener;->snapPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/iMe/utils/listeners/SnapOnScrollListener;->onSnapPositionChangeListener:Lcom/iMe/utils/listeners/OnSnapPositionChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/iMe/utils/listeners/OnSnapPositionChangeListener;->onSnapPositionChange(I)V

    .line 40
    :cond_1
    iput p1, p0, Lcom/iMe/utils/listeners/SnapOnScrollListener;->snapPosition:I

    :cond_2
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/iMe/utils/listeners/SnapOnScrollListener;->behavior:Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    sget-object v1, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;->NOTIFY_ON_SCROLL_STATE_IDLE:Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 27
    invoke-direct {p0, p1}, Lcom/iMe/utils/listeners/SnapOnScrollListener;->maybeNotifySnapPositionChange(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string/jumbo p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/iMe/utils/listeners/SnapOnScrollListener;->behavior:Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    sget-object p3, Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;->NOTIFY_ON_SCROLL:Lcom/iMe/utils/listeners/SnapOnScrollListener$Behavior;

    if-ne p2, p3, :cond_0

    .line 20
    invoke-direct {p0, p1}, Lcom/iMe/utils/listeners/SnapOnScrollListener;->maybeNotifySnapPositionChange(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method
