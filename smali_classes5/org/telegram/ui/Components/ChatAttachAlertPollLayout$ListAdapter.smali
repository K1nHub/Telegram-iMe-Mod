.class Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatAttachAlertPollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;


# direct methods
.method public static synthetic $r8$lambda$3unNk7TF37PRVsnwtsEJUGMGsuk(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->lambda$onCreateViewHolder$2(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HHvA2RH7fkzBL_OTnB56ALzJK20(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->lambda$onCreateViewHolder$1(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KNQ7gU60k6g7bRsfSuyq9P8e0LU(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/content/Context;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 762
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 7

    .line 1014
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1017
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1018
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1019
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1021
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1023
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Landroidx/recyclerview/widget/SimpleItemAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1024
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    sub-int v2, v1, v2

    .line 1025
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1026
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v0

    sub-int/2addr v6, v2

    invoke-static {v3, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1027
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v0

    sub-int/2addr v6, v2

    invoke-static {v3, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1028
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 1029
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v0

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 1030
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1210(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    .line 1031
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_1

    .line 1032
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 1034
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1035
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 1036
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz v1, :cond_2

    .line 1037
    check-cast v0, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1038
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1039
    :cond_2
    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1040
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1042
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 1043
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2700(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    .line 1044
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    .line 1045
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1046
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p2, 0x5

    if-ne p3, p2, :cond_3

    .line 1141
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    .line 1143
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    const/4 p4, -0x1

    if-eq p2, p4, :cond_2

    .line 1145
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result p4

    sub-int p4, p2, p4

    .line 1146
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    sub-int/2addr v0, p3

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1147
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3400(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)V

    goto :goto_0

    .line 1149
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    sub-int/2addr v0, p3

    if-ne p4, v0, :cond_1

    .line 1150
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 1152
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1153
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p2, p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz p2, :cond_2

    .line 1154
    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1155
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    :goto_0
    return p3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private static synthetic lambda$onCreateViewHolder$2(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1166
    check-cast p1, Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v0, 0x43

    if-ne p2, v0, :cond_0

    .line 1167
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 1168
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PollEditTextCell;->callOnDelete()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 767
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$700(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_2

    .line 1185
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1187
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 1189
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 1191
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 1193
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x7

    return p1

    .line 1195
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_0

    .line 1197
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_7

    const/16 p1, 0x8

    return p1

    .line 1199
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$3300(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/16 p1, 0x9

    return p1

    :cond_8
    const/4 p1, 0x5

    return p1

    :cond_9
    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_a
    :goto_1
    const/4 p1, 0x2

    return p1

    :cond_b
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 890
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 891
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 772
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v3, :cond_6

    const/16 v3, 0x9

    if-eq v0, v3, :cond_d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 814
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    const-string/jumbo p2, "windowBackgroundWhiteBlueText4"

    .line 815
    invoke-virtual {p1, v4, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 818
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    const-string/jumbo v3, "switchTrackChecked"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 819
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    const-string v3, "checkboxCheck"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 820
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v1, p2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 821
    sget p2, Lorg/telegram/messenger/R$string;->AddAnOption:I

    const-string v0, "AddAnOption"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_2

    .line 793
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 795
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v3, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 796
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 797
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 799
    sget p2, Lorg/telegram/messenger/R$string;->AddAnExplanationInfo:I

    const-string v0, "AddAnExplanationInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 800
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 801
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result p2

    if-eqz p2, :cond_3

    .line 802
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 804
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->QuizInfo:I

    const-string v0, "QuizInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 806
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result p2

    rsub-int/lit8 p2, p2, 0xa

    if-gtz p2, :cond_5

    .line 807
    sget p2, Lorg/telegram/messenger/R$string;->AddAnOptionInfoMax:I

    const-string v0, "AddAnOptionInfoMax"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 809
    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->AddAnOptionInfo:I

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0xa

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Option"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "AddAnOptionInfo"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 825
    :cond_6
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 826
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1300(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v1, :cond_9

    .line 827
    sget p2, Lorg/telegram/messenger/R$string;->PollAnonymous:I

    const-string v1, "PollAnonymous"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v1

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v6

    if-ne v6, v3, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v6

    if-eq v6, v3, :cond_8

    :cond_7
    const/4 v5, 0x1

    :cond_8
    invoke-virtual {v0, p2, v1, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 828
    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_1

    .line 829
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    if-ne p2, v1, :cond_b

    .line 830
    sget p2, Lorg/telegram/messenger/R$string;->PollMultiple:I

    const-string v1, "PollMultiple"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v1

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v6

    if-eq v6, v3, :cond_a

    const/4 v5, 0x1

    :cond_a
    invoke-virtual {v0, p2, v1, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 831
    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_1

    .line 832
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    if-ne p2, v1, :cond_d

    .line 833
    sget p2, Lorg/telegram/messenger/R$string;->PollQuiz:I

    const-string v1, "PollQuiz"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Z

    move-result v1

    invoke-virtual {v0, p2, v1, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 834
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result p2

    if-nez p2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 838
    :cond_d
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 839
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_2

    .line 774
    :cond_e
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$600(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p2, v0, :cond_f

    .line 776
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object p2

    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 777
    sget p2, Lorg/telegram/messenger/R$string;->PollQuestion:I

    const-string v0, "PollQuestion"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 779
    :cond_f
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_10

    const/4 v1, 0x5

    :cond_10
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$700(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p2, v0, :cond_12

    .line 781
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$800(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result p2

    if-ne p2, v2, :cond_11

    .line 782
    sget p2, Lorg/telegram/messenger/R$string;->QuizAnswers:I

    const-string v0, "QuizAnswers"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 784
    :cond_11
    sget p2, Lorg/telegram/messenger/R$string;->AnswerOptions:I

    const-string v0, "AnswerOptions"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 786
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    if-ne p2, v0, :cond_13

    .line 787
    sget p2, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v0, "Settings"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    const/4 p1, 0x0

    const-string/jumbo v0, "windowBackgroundGray"

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 1013
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;)V

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 1110
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    .line 1136
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->setShowNextButton(Z)V

    .line 1137
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    .line 1138
    invoke-virtual {p2}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    or-int/lit8 v0, v0, 0x5

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1139
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1165
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    .line 1004
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$5;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 999
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$EmptyView;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$EmptyView;-><init>(Landroid/content/Context;)V

    .line 1000
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 953
    :pswitch_3
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$3;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Landroid/content/Context;ZLandroid/view/View$OnClickListener;)V

    .line 970
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->createErrorTextView()V

    .line 971
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$4;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 950
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 915
    :pswitch_5
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 921
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->createErrorTextView()V

    .line 922
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 912
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 909
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 902
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 903
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    const-string/jumbo v3, "windowBackgroundGrayShadow"

    invoke-static {p2, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 904
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v2, v3, p2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 905
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 906
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 899
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v7, 0x15

    const/16 v8, 0xf

    const/4 v9, 0x0

    const-string/jumbo v6, "windowBackgroundWhiteBlueHeader"

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 1177
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1178
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .line 846
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 849
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    if-ne v0, v6, :cond_1

    .line 848
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 849
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 850
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    sget v4, Lorg/telegram/messenger/R$string;->QuestionHint:I

    const-string v5, "QuestionHint"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 851
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 852
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_1
    const/4 v6, 0x5

    if-ne v0, v6, :cond_3

    .line 854
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 855
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 856
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 857
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    sub-int v2, v0, v2

    .line 858
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v2

    sget v5, Lorg/telegram/messenger/R$string;->OptionHint:I

    const-string v6, "OptionHint"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v4}, Lorg/telegram/ui/Cells/PollEditTextCell;->setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 859
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 860
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2300(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 861
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    .line 862
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 863
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 864
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2302(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;I)I

    .line 866
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x7

    if-ne v0, v4, :cond_5

    .line 868
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 869
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 870
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2400(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2400(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_4
    sget v4, Lorg/telegram/messenger/R$string;->AddAnExplanation:I

    const-string v5, "AddAnExplanation"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 871
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2000(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;Landroid/view/View;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 878
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 879
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 880
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    .line 881
    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 883
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public swapElements(II)V
    .locals 5

    .line 1207
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v0

    sub-int v0, p1, v0

    .line 1208
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2100(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v1

    sub-int v1, p2, v1

    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 1209
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$1200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 1212
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    .line 1213
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    .line 1214
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2200(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Ljava/lang/String;

    move-result-object v3

    aput-object v2, v3, v1

    .line 1215
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    .line 1216
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v4

    aget-boolean v4, v4, v1

    aput-boolean v4, v3, v0

    .line 1217
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertPollLayout;)[Z

    move-result-object v0

    aput-boolean v2, v0, v1

    .line 1218
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_1
    :goto_0
    return-void
.end method
