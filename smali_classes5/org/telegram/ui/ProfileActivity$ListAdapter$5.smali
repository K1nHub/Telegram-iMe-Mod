.class Lorg/telegram/ui/ProfileActivity$ListAdapter$5;
.super Landroid/view/View;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastListViewHeight:I

.field private lastPaddingHeight:I

.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$ListAdapter;Landroid/content/Context;)V
    .locals 0

    .line 10943
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 10945
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->lastPaddingHeight:I

    .line 10946
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->lastListViewHeight:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 10950
    iget p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->lastListViewHeight:I

    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    .line 10951
    iput v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->lastPaddingHeight:I

    .line 10953
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->lastListViewHeight:I

    .line 10954
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 10955
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p2}, Lorg/telegram/ui/ProfileActivity;->access$10200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->getItemCount()I

    move-result p2

    if-ne p1, p2, :cond_6

    move p2, v0

    move v1, p2

    :goto_0
    if-ge p2, p1, :cond_2

    .line 10958
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 10959
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 10960
    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$24500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 10961
    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 10964
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :goto_1
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    sub-int/2addr p1, p2

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, v1

    const/16 p2, 0x58

    .line 10965
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    if-le p1, p2, :cond_4

    move p1, v0

    :cond_4
    if-gtz p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, p1

    .line 10971
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iput v0, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->lastPaddingHeight:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_3

    .line 10973
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->this$1:Lorg/telegram/ui/ProfileActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$ListAdapter;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lorg/telegram/ui/ProfileActivity$ListAdapter$5;->lastPaddingHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_3
    return-void
.end method
