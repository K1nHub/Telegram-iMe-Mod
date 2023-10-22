.class Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypedScrollListener"
.end annotation


# instance fields
.field private smoothScrolling:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private final type:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0

    .line 1403
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 1404
    iput p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    return-void
.end method

.method private checkSearchFieldScroll()V
    .locals 4

    .line 1456
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 1457
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/Components/EmojiView;->access$5200(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1467
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2, v2}, Lorg/telegram/ui/Components/EmojiView;->access$5200(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    goto :goto_0

    .line 1464
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$5400(Lorg/telegram/ui/Components/EmojiView;Z)V

    goto :goto_0

    .line 1461
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$5300(Lorg/telegram/ui/Components/EmojiView;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1409
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1410
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->smoothScrolling:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_3

    .line 1414
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->smoothScrolling:Z

    if-nez p2, :cond_1

    .line 1415
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/EmojiView;->access$4300(Lorg/telegram/ui/Components/EmojiView;I)V

    .line 1417
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$4400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1418
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/EmojiView;->access$4402(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 1420
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->smoothScrolling:Z

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_6

    .line 1423
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$4400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1424
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/EmojiView;->access$4402(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 1426
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/EmojiView;->access$4500(Lorg/telegram/ui/Components/EmojiView;I)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1428
    invoke-virtual {p2}, Lorg/telegram/ui/Components/EmojiView$SearchField;->hideKeyboard()V

    .line 1430
    :cond_5
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->smoothScrolling:Z

    .line 1432
    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->smoothScrolling:Z

    if-nez p1, :cond_7

    .line 1433
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->access$4600(Lorg/telegram/ui/Components/EmojiView;I)V

    .line 1435
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    if-nez p1, :cond_9

    .line 1436
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$4700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    move-result-object p1

    if-nez p1, :cond_8

    .line 1437
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$4800(Lorg/telegram/ui/Components/EmojiView;)V

    .line 1439
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$4700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$ChooseStickerActionTracker;->doSomeAction()V

    :cond_9
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1446
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->access$4900(Lorg/telegram/ui/Components/EmojiView;I)V

    .line 1447
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->type:I

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->access$5000(Lorg/telegram/ui/Components/EmojiView;II)V

    .line 1448
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->checkSearchFieldScroll()V

    .line 1449
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->smoothScrolling:Z

    if-nez p1, :cond_0

    .line 1450
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$TypedScrollListener;->this$0:Lorg/telegram/ui/Components/EmojiView;

    int-to-float p2, p3

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmojiView;->access$5100(Lorg/telegram/ui/Components/EmojiView;F)V

    :cond_0
    return-void
.end method
