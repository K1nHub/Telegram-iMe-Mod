.class Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MentionsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;-><init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;Lorg/telegram/ui/Components/MentionsContainerView;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$2;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    const/4 p4, 0x0

    .line 529
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 530
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 531
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 532
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 533
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$2;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object v1, v1, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->access$300(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 534
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 539
    iget-object p3, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$2;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object p3, p3, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p3}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->isStickers()Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 541
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$2;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object p3, p3, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p3}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object p3

    const/4 v0, 0x2

    if-eqz p3, :cond_3

    if-nez p2, :cond_2

    return-void

    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 546
    iget-object p3, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$2;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object p3, p3, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p3}, Lorg/telegram/ui/Components/MentionsContainerView;->access$300(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->isFirstRow(I)Z

    move-result p3

    if-nez p3, :cond_4

    .line 547
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 550
    :cond_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 552
    :cond_4
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView$2;->this$1:Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    iget-object p3, p3, Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {p3}, Lorg/telegram/ui/Components/MentionsContainerView;->access$300(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->isLastInRow(I)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    :goto_1
    iput p4, p1, Landroid/graphics/Rect;->right:I

    :cond_6
    return-void
.end method
