.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "EmojiBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 632
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->access$2900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->atTop()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->access$2902(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;F)F

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 596
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$2800(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 598
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->access$2900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    const/4 p2, -0x1

    if-gez p1, :cond_0

    .line 599
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 602
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p3, p3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p1, p3, :cond_2

    .line 603
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p3, p3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 604
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->access$2900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 605
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_1
    if-ne p1, p2, :cond_3

    return-void

    .line 614
    :cond_3
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p3, p3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$3000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Landroid/util/SparseIntArray;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    :goto_3
    if-ltz p3, :cond_5

    .line 615
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$3000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 616
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->adapter:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->access$3000(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-lt p1, v1, :cond_4

    move p2, v2

    goto :goto_4

    :cond_4
    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ltz p2, :cond_6

    .line 623
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->tabsStrip:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(IZ)V

    .line 625
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->access$3100(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p2, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->listView:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    iget-boolean p2, p2, Lorg/telegram/ui/Components/RecyclerListView;->scrollingByUser:Z

    if-eqz p2, :cond_7

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->searchField:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;->access$400(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$SearchField;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 626
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$2;->this$1:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->closeKeyboard()V

    :cond_7
    return-void
.end method
