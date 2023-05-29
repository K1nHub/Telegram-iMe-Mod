.class Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;
.super Ljava/lang/Object;
.source "FilterCreateActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

.field final synthetic val$cell:Lorg/telegram/ui/Cells/PollEditTextCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FilterCreateActivity$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V
    .locals 0

    .line 1534
    iput-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;->val$cell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1547
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;->val$cell:Lorg/telegram/ui/Cells/PollEditTextCell;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1550
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$600(Lorg/telegram/ui/FilterCreateActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1552
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-static {v0, v2}, Lorg/telegram/ui/FilterCreateActivity;->access$702(Lorg/telegram/ui/FilterCreateActivity;Z)Z

    .line 1553
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/FilterCreateActivity;->access$602(Lorg/telegram/ui/FilterCreateActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1555
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/FilterCreateActivity;->access$900(Lorg/telegram/ui/FilterCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/FilterCreateActivity;->access$800(Lorg/telegram/ui/FilterCreateActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1557
    iget-object v0, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lorg/telegram/ui/FilterCreateActivity;->access$1000(Lorg/telegram/ui/FilterCreateActivity;Landroid/view/View;)V

    .line 1559
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/FilterCreateActivity$ListAdapter$1;->this$1:Lorg/telegram/ui/FilterCreateActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/FilterCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/FilterCreateActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/FilterCreateActivity;->access$1100(Lorg/telegram/ui/FilterCreateActivity;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
