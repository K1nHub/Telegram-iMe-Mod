.class Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "FiltersSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FiltersSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/FiltersSetupActivity;


# direct methods
.method public static synthetic $r8$lambda$0_B_w18ctgKwcsRg58b9bdZIINw(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$1(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ABcE1ua8HAHKxqw17fMHo5NhHso(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$7(Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q0o7kJacwt4zX96cGbGmmjen6aw(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jbyi0s8Z_tx6L2dY6uynHF1IrUk(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$6(Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lI_qs9lfL9ALig_wRCRviNKDzKw(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lcom/smedialink/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$3(Lcom/smedialink/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nbLCvgf75X7Mi1Xl1eBvN4xs2EA(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/FiltersSetupActivity$FilterCell;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$0(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$o8DlTJiGUYn2yPjwJyUDWUBIxkY(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lcom/smedialink/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$4(Lcom/smedialink/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rcr_8D2TFivctG11X2_OmGjJSRk(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$2(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V
    .locals 0

    .line 981
    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 982
    iput-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1044
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 1045
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$4500(Lorg/telegram/ui/FiltersSetupActivity;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p3}, Lorg/telegram/ui/FiltersSetupActivity;->access$4400(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$onCreateViewHolder$1(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1114
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1117
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1119
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 1121
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    add-int/2addr p1, v0

    .line 1123
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2800(Lorg/telegram/ui/FiltersSetupActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 1126
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$4002(Lorg/telegram/ui/FiltersSetupActivity;Z)Z

    .line 1127
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->removeFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    .line 1128
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesStorage;->deleteDialogFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    .line 1129
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$4002(Lorg/telegram/ui/FiltersSetupActivity;Z)Z

    .line 1131
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$3000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p2

    .line 1132
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v2}, Lorg/telegram/ui/FiltersSetupActivity;->access$2600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v2

    .line 1133
    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    const/4 v4, -0x1

    if-ne p1, v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v3, v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$4100(Lorg/telegram/ui/FiltersSetupActivity;Z)V

    if-eq p1, v4, :cond_6

    .line 1135
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1138
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object v0

    add-int/lit8 p1, p1, -0x3

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 1139
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1140
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$800(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1141
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1142
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$400(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 1145
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 1146
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v3}, Lorg/telegram/ui/FiltersSetupActivity;->access$200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v3

    add-int/2addr v3, v1

    iget-object v5, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v5}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 1148
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    if-ne v2, v4, :cond_5

    .line 1149
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$2600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p1

    if-eq p1, v4, :cond_5

    .line 1150
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$3800(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v3}, Lorg/telegram/ui/FiltersSetupActivity;->access$2600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_5
    if-ne p2, v4, :cond_6

    .line 1152
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$3000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p1

    if-eq p1, v4, :cond_6

    .line 1153
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$3000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$2(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1111
    new-instance p3, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$3(Lcom/smedialink/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1097
    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p3}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object p3

    sget-object p4, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p3, p4, :cond_0

    .line 1098
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/fork/controller/ForkTopicsController;->removeTopicFilterDialogs(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1103
    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1104
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x3

    invoke-direct {p1, p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p3, 0x0

    .line 1105
    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 1106
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 1109
    :cond_1
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;-><init>()V

    .line 1110
    iget p4, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->id:I

    .line 1111
    iget-object p4, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {p4, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$4(Lcom/smedialink/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p3, 0x0

    if-nez p4, :cond_2

    .line 1076
    iget-object p4, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p4}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object p4

    sget-object v0, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p4, v0, :cond_0

    .line 1077
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    new-instance p4, Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {p4, p1, p3, v0}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lcom/smedialink/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lorg/fork/enums/FilterActivityType;)V

    invoke-virtual {p2, p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 1079
    :cond_0
    iget-boolean p1, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->locked:Z

    if-eqz p1, :cond_1

    .line 1080
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    iget-object p4, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-static {p3}, Lorg/telegram/ui/FiltersSetupActivity;->access$4300(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    invoke-direct {p2, p3, p4, v0, v1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;II)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1082
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    new-instance p3, Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {p3, p2}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p4, v0, :cond_4

    .line 1085
    new-instance p4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1086
    sget v0, Lorg/telegram/messenger/R$string;->FilterDelete:I

    const-string v1, "FilterDelete"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1087
    sget v0, Lorg/telegram/messenger/R$string;->FilterDeleteAlert:I

    const-string v1, "FilterDeleteAlert"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object v0

    sget-object v1, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_3

    .line 1090
    sget v0, Lorg/telegram/messenger/R$string;->topics_remove:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1091
    sget v0, Lorg/telegram/messenger/R$string;->topics_remove_alert:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1094
    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1095
    sget p3, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v0, "Delete"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lcom/smedialink/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {p4, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1158
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1159
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 1160
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const-string p2, "dialogTextRed2"

    .line 1162
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$5(Landroid/view/View;)V
    .locals 8

    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    .line 1051
    invoke-virtual {p1}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->getCurrentTopic()Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object v0

    .line 1052
    invoke-virtual {p1}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->getCurrentFilter()Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object p1

    .line 1053
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1054
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    const/16 v4, 0x14

    .line 1055
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1057
    iget-object v5, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v5}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object v5

    sget-object v6, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_1

    .line 1058
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1059
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v5, v2, v4, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1060
    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1061
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getIcon()Lcom/smedialink/storage/data/repository/topics/Topic;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/utils/extentions/model/topic/TopicExtKt;->info(Lcom/smedialink/storage/data/repository/topics/Topic;)Lcom/smedialink/ui/topics/TopicInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/ui/topics/TopicInfo;->getTitleResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1064
    :cond_1
    iget-object v5, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v5, v2, v4, v7}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    :cond_2
    :goto_0
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/CharSequence;

    .line 1065
    sget v5, Lorg/telegram/messenger/R$string;->FilterEditItem:I

    const-string v6, "FilterEditItem"

    .line 1066
    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    sget v5, Lorg/telegram/messenger/R$string;->FilterDeleteItem:I

    const-string v6, "FilterDeleteItem"

    .line 1067
    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    new-array v2, v2, [I

    .line 1069
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    aput v5, v2, v7

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    aput v5, v2, v3

    .line 1073
    new-instance v5, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v0, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lcom/smedialink/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {v1, v4, v2, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1166
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1167
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const-string v0, "dialogTextRed2"

    .line 1168
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dialogRedIcon"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v3, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setItemColor(III)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$6(Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 8

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/FiltersSetupActivity;->access$4002(Lorg/telegram/ui/FiltersSetupActivity;Z)Z

    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->suggestedFilters:Ljava/util/ArrayList;

    .line 1237
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_8

    .line 1239
    iget-object v4, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v4}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v4

    if-ne v4, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1240
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1241
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$3100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    add-int/2addr p1, v0

    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$3000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    .line 1243
    iget-object v5, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v5}, Lorg/telegram/ui/FiltersSetupActivity;->access$2600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v5

    .line 1244
    iget-object v6, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v6}, Lorg/telegram/ui/FiltersSetupActivity;->access$3800(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v6

    .line 1245
    iget-object v7, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v7, v2}, Lorg/telegram/ui/FiltersSetupActivity;->access$4100(Lorg/telegram/ui/FiltersSetupActivity;Z)V

    if-eq v0, v3, :cond_1

    .line 1246
    iget-object v7, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v7}, Lorg/telegram/ui/FiltersSetupActivity;->access$3000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v7

    if-ne v7, v3, :cond_1

    .line 1247
    iget-object v7, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v7}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :cond_1
    if-eq v5, v3, :cond_2

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1250
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object p1

    sub-int/2addr v6, v5

    add-int/2addr v6, v1

    invoke-virtual {p1, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_1

    .line 1252
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :goto_1
    if-eqz v4, :cond_3

    .line 1255
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_3
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1258
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_5

    .line 1259
    iget v1, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    if-ne v1, v3, :cond_4

    move v0, p1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1263
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_6

    add-int/lit8 v0, v0, -0x1

    :cond_6
    if-gez v0, :cond_7

    goto :goto_3

    :cond_7
    move v2, v0

    .line 1269
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$4200(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_4

    .line 1271
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$4100(Lorg/telegram/ui/FiltersSetupActivity;Z)V

    :goto_4
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$7(Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1184
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->getSuggestedFilter()Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    move-result-object v1

    .line 1185
    new-instance v2, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-direct {v2}, Lorg/telegram/messenger/MessagesController$DialogFilter;-><init>()V

    .line 1186
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DialogFilter;->title:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 v3, 0x2

    .line 1187
    iput v3, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    .line 1188
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogFiltersById:Landroid/util/SparseArray;

    iget v5, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 1189
    iget v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    add-int/2addr v4, v5

    iput v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    .line 1191
    iput v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->unreadCount:I

    iput v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->pendingUnreadCount:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_6

    .line 1193
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    if-nez v6, :cond_1

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$DialogFilter;->include_peers:Ljava/util/ArrayList;

    goto :goto_2

    :cond_1
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_peers:Ljava/util/ArrayList;

    :goto_2
    if-nez v6, :cond_2

    .line 1194
    iget-object v8, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    goto :goto_3

    :cond_2
    iget-object v8, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    .line 1195
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_5

    .line 1196
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1198
    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-eqz v16, :cond_3

    goto :goto_5

    .line 1200
    :cond_3
    iget-wide v12, v11, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    cmp-long v16, v12, v14

    if-eqz v16, :cond_4

    neg-long v12, v12

    goto :goto_5

    .line 1203
    :cond_4
    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    neg-long v12, v11

    .line 1205
    :goto_5
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1208
    :cond_6
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$DialogFilter;->groups:Z

    if-eqz v4, :cond_7

    .line 1209
    iget v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    or-int/2addr v4, v6

    iput v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1211
    :cond_7
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$DialogFilter;->bots:Z

    if-eqz v4, :cond_8

    .line 1212
    iget v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    or-int/2addr v4, v6

    iput v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1214
    :cond_8
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$DialogFilter;->contacts:Z

    if-eqz v4, :cond_9

    .line 1215
    iget v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    or-int/2addr v4, v6

    iput v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1217
    :cond_9
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$DialogFilter;->non_contacts:Z

    if-eqz v4, :cond_a

    .line 1218
    iget v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    or-int/2addr v4, v6

    iput v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1220
    :cond_a
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$DialogFilter;->broadcasts:Z

    if-eqz v4, :cond_b

    .line 1221
    iget v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    or-int/2addr v4, v6

    iput v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1223
    :cond_b
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_archived:Z

    if-eqz v4, :cond_c

    .line 1224
    iget v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int/2addr v4, v6

    iput v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1226
    :cond_c
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_read:Z

    if-eqz v4, :cond_d

    .line 1227
    iget v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v6, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    or-int/2addr v4, v6

    iput v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1229
    :cond_d
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_muted:Z

    if-eqz v3, :cond_e

    .line 1230
    iget v3, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v4, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1232
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v3, v5}, Lorg/telegram/ui/FiltersSetupActivity;->access$4002(Lorg/telegram/ui/FiltersSetupActivity;Z)Z

    .line 1233
    iget v3, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    iget-object v4, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iget-object v5, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    iget-object v6, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    iget-object v7, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v13, v0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    new-instance v14, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v14, v0, v1, v2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-static/range {v2 .. v14}, Lorg/telegram/ui/FilterCreateActivity;->saveFilterToServer(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/support/LongSparseIntArray;ZZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1009
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1420
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$400(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_4

    .line 1423
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$800(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto/16 :goto_3

    .line 1426
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1400(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto/16 :goto_2

    .line 1429
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1300(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 1430
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->NOTIFICATION_CHECK:I

    return p1

    .line 1433
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1700(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1800(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 1435
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$3300(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    return p1

    .line 1437
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-lt p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ge p1, v0, :cond_6

    const/4 p1, 0x2

    return p1

    .line 1439
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$3400(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$3500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$3600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$3700(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$3800(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto :goto_0

    .line 1441
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$3000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x4

    return p1

    :cond_8
    const/4 p1, 0x5

    return p1

    :cond_9
    :goto_0
    const/4 p1, 0x3

    return p1

    :cond_a
    :goto_1
    const/4 p1, 0x0

    return p1

    .line 1427
    :cond_b
    :goto_2
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT:I

    return p1

    .line 1424
    :cond_c
    :goto_3
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_SETTINGS:I

    return p1

    .line 1421
    :cond_d
    :goto_4
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 987
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 989
    sget v1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    .line 990
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 991
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$400(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 994
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$700(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 992
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p1

    if-lez p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 997
    :cond_4
    sget v1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_SETTINGS:I

    if-ne v0, v1, :cond_7

    .line 998
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 999
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$800(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$1000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 1000
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p1

    if-lez p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2

    :cond_7
    const/4 p1, 0x3

    if-eq v0, p1, :cond_8

    if-eqz v0, :cond_8

    const/4 p1, 0x5

    if-eq v0, p1, :cond_8

    if-eq v0, v3, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2
.end method

.method public moveElementToStart(I)V
    .locals 3

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1489
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$2800(Lorg/telegram/ui/FiltersSetupActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    if-ltz v1, :cond_3

    if-lt v1, v0, :cond_1

    goto :goto_2

    .line 1497
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    .line 1498
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    if-gt v2, p1, :cond_2

    .line 1500
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iput v2, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1502
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$3902(Lorg/telegram/ui/FiltersSetupActivity;Z)Z

    .line 1503
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    add-int/lit8 v0, p2, 0x1

    .line 1283
    invoke-virtual {p0, v0}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->getItemViewType(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$1200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1285
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$1300(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 1286
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 1287
    sget p2, Lorg/telegram/messenger/R$string;->topics_catalog_update_auto:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 1288
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/ForkTopicsController;->isAutoUpdateTopicsCatalogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1289
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/ForkTopicsController;->getSelectedAutoUpdateTopicsCatalogInterval()Lorg/fork/enums/Interval;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/enums/Interval;->getNameResId()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v3, v0}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_7

    .line 1291
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->common_off:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v2, v0}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_7

    .line 1293
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$1400(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-eq p2, v1, :cond_28

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$1500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_3

    goto/16 :goto_6

    .line 1300
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$1600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-eq p2, v1, :cond_24

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$1700(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-eq p2, v1, :cond_24

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$1800(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-eq p2, v1, :cond_24

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$1900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_4

    goto/16 :goto_5

    .line 1311
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$2000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    const/4 v4, 0x0

    if-eq p2, v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$2100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-eq p2, v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-eq p2, v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$400(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-eq p2, v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$2200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-eq p2, v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_5

    goto/16 :goto_3

    .line 1331
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$800(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-eq p2, v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-eq p2, v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$1000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_6

    goto/16 :goto_1

    .line 1354
    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    goto/16 :goto_7

    .line 1410
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;

    .line 1411
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->suggestedFilters:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$3100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$3100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$3200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    sub-int/2addr v1, v3

    if-eq v0, v1, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->setFilter(Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;Z)V

    goto/16 :goto_7

    .line 1392
    :cond_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/FiltersSetupActivity$TextCell;

    .line 1393
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$3000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2a

    .line 1395
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1396
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1397
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "switchTrackChecked"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1398
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v3, "checkboxCheck"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1399
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v1, p2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1402
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object p2

    sget-object v0, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p2, v0, :cond_a

    .line 1403
    sget p2, Lorg/telegram/messenger/R$string;->topics_create_new:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v2}, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_7

    .line 1405
    :cond_a
    sget p2, Lorg/telegram/messenger/R$string;->CreateNewFilter:I

    const-string v0, "CreateNewFilter"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v2}, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_7

    .line 1384
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    const-string v1, "windowBackgroundGrayShadow"

    if-ne p2, v0, :cond_c

    .line 1385
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 1387
    :cond_c
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 1369
    :cond_d
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    .line 1371
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object v0

    sget-object v1, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_e

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2700(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->setTopic(Lcom/smedialink/storage/domain/model/topics/TopicModel;Z)V

    goto/16 :goto_7

    .line 1376
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    .line 1377
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2800(Lorg/telegram/ui/FiltersSetupActivity;)Z

    move-result v0

    if-nez v0, :cond_f

    add-int/lit8 p2, p2, 0x1

    .line 1380
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->setFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;Z)V

    goto/16 :goto_7

    .line 1356
    :cond_10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1357
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p2, v0, :cond_12

    .line 1359
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object p2

    sget-object v0, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    if-ne p2, v0, :cond_11

    .line 1360
    sget p2, Lorg/telegram/messenger/R$string;->topics:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1362
    :cond_11
    sget p2, Lorg/telegram/messenger/R$string;->Filters:I

    const-string v0, "Filters"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1363
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$2600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2a

    .line 1364
    sget p2, Lorg/telegram/messenger/R$string;->FilterRecommended:I

    const-string v0, "FilterRecommended"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1332
    :cond_13
    :goto_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    const-string v1, "windowBackgroundWhiteBlackText"

    .line 1333
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 1334
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$800(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_15

    .line 1335
    sget-object p2, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabsNotificationMode:Lorg/fork/enums/FilterTabNotificationMode;

    invoke-virtual {p2}, Lorg/fork/enums/FilterTabNotificationMode;->getTitleResId()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 1336
    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_notification_mode_item_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1337
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p2

    if-lez p2, :cond_14

    const/4 v2, 0x1

    :cond_14
    invoke-virtual {p1, v2, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto/16 :goto_7

    .line 1338
    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$1000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_18

    .line 1339
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p2

    if-lez p2, :cond_16

    const/4 v2, 0x1

    :cond_16
    if-eqz v2, :cond_17

    .line 1341
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result p2

    if-nez p2, :cond_17

    .line 1342
    sget p2, Lorg/telegram/messenger/R$string;->common_off:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1344
    :cond_17
    sget p2, Lorg/telegram/messenger/R$string;->common_on:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 1346
    :goto_2
    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_all_chats_tab_settings_item_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1347
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(Z)V

    goto/16 :goto_7

    .line 1348
    :cond_18
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2a

    .line 1349
    sget-object p2, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lorg/fork/enums/FilterTabWidthMode;

    invoke-virtual {p2}, Lorg/fork/enums/FilterTabWidthMode;->getTitleResId()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 1350
    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_width_mode_item_title:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1351
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p2

    if-lez p2, :cond_19

    const/4 v2, 0x1

    :cond_19
    invoke-virtual {p1, v2, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto/16 :goto_7

    .line 1312
    :cond_1a
    :goto_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1313
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$400(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_4

    :cond_1b
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawSwitchDivider(Z)V

    .line 1314
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$2000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1c

    .line 1315
    sget p2, Lorg/telegram/messenger/R$string;->topics_settings_enable:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$2300(Lorg/telegram/ui/FiltersSetupActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1316
    :cond_1c
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$2100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1d

    .line 1317
    sget p2, Lorg/telegram/messenger/R$string;->topics_settings_topics_bar_at_bottom:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$2400(Lorg/telegram/ui/FiltersSetupActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1318
    :cond_1d
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1f

    .line 1319
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p2

    if-lez p2, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    invoke-virtual {p1, v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 1320
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_at_bottom_enable_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1321
    :cond_1f
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$400(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_21

    .line 1322
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p2

    if-lez p2, :cond_20

    const/4 v2, 0x1

    :cond_20
    invoke-virtual {p1, v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 1323
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_remember_last_filter_tab_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1324
    :cond_21
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$2200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_22

    .line 1325
    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 1326
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_settings_hide_folders:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/FiltersController;->isHideFoldersEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_7

    .line 1328
    :cond_22
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$700(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p2

    if-lez p2, :cond_23

    const/4 v2, 0x1

    :cond_23
    invoke-virtual {p1, v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 1329
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_settings_folders_first:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lorg/fork/controller/FiltersController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/FiltersController;->isFoldersFirstEnabled()Z

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_7

    .line 1301
    :cond_24
    :goto_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1302
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1600(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p2, v0, :cond_25

    .line 1303
    sget p2, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v0, "Settings"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1304
    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1700(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p2, v0, :cond_26

    .line 1305
    sget p2, Lorg/telegram/messenger/R$string;->topics_catalog:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1306
    :cond_26
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1800(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ne p2, v0, :cond_27

    .line 1307
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_settings_header:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1309
    :cond_27
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings_item_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1294
    :cond_28
    :goto_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 1295
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$1400(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    if-ne p2, v1, :cond_29

    .line 1296
    sget p2, Lorg/telegram/messenger/R$string;->topics_catalog_update_manually:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto :goto_7

    .line 1298
    :cond_29
    sget p2, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    :cond_2a
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1016
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_CHECK:I

    const-string v0, "windowBackgroundWhite"

    if-ne p2, p1, :cond_0

    .line 1017
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1018
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1019
    :cond_0
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_SETTINGS:I

    const/4 v1, 0x1

    if-ne p2, p1, :cond_1

    .line 1020
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1021
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1022
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setCanDisable(Z)V

    goto/16 :goto_0

    .line 1024
    :cond_1
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT:I

    if-ne p2, p1, :cond_2

    .line 1025
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 1026
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1027
    :cond_2
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->NOTIFICATION_CHECK:I

    if-ne p2, p1, :cond_3

    .line 1028
    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 1029
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_3
    if-eqz p2, :cond_8

    if-eq p2, v1, :cond_7

    const/4 p1, 0x2

    if-eq p2, p1, :cond_6

    const/4 p1, 0x3

    if-eq p2, p1, :cond_5

    const/4 p1, 0x4

    if-eq p2, p1, :cond_4

    .line 1181
    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;-><init>(Landroid/content/Context;)V

    .line 1182
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1183
    new-instance p2, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->setAddOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1176
    :cond_4
    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity$TextCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/FiltersSetupActivity$TextCell;-><init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V

    .line 1177
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1173
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1041
    :cond_6
    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;-><init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V

    .line 1042
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1043
    new-instance p2, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/FiltersSetupActivity$FilterCell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->setOnReorderButtonTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1049
    new-instance p2, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->setOnOptionsClick(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1037
    :cond_7
    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;-><init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V

    .line 1038
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1033
    :cond_8
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1034
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1278
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public swapElements(II)V
    .locals 8

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    sub-int v0, p1, v0

    .line 1450
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v1

    sub-int v1, p2, v1

    .line 1451
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v2}, Lorg/telegram/ui/FiltersSetupActivity;->access$200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v3}, Lorg/telegram/ui/FiltersSetupActivity;->access$100(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1453
    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v3}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object v3

    sget-object v4, Lorg/fork/enums/FilterActivityType;->FILTER:Lorg/fork/enums/FilterActivityType;

    if-ne v3, v4, :cond_0

    .line 1454
    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v3}, Lorg/telegram/ui/FiltersSetupActivity;->access$2800(Lorg/telegram/ui/FiltersSetupActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    :cond_0
    if-ltz v0, :cond_3

    if-ltz v1, :cond_3

    if-ge v0, v2, :cond_3

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 1464
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v2}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/fork/enums/FilterActivityType;

    move-result-object v2

    sget-object v3, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 1465
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v2}, Lorg/telegram/ui/FiltersSetupActivity;->access$2700(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    .line 1466
    iget-object v5, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v5}, Lorg/telegram/ui/FiltersSetupActivity;->access$2700(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smedialink/storage/domain/model/topics/TopicModel;

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v5

    .line 1467
    iget-object v7, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v7

    invoke-virtual {v7, v2, v3, v5, v6}, Lorg/fork/controller/ForkTopicsController;->swapTopics(JJ)V

    .line 1468
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v2}, Lorg/telegram/ui/FiltersSetupActivity;->access$2700(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 1469
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 1470
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1, v4}, Lorg/telegram/ui/FiltersSetupActivity;->access$3902(Lorg/telegram/ui/FiltersSetupActivity;Z)Z

    return-void

    .line 1474
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    .line 1475
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 1476
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 1477
    iget v6, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    .line 1478
    iget v7, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    iput v7, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    .line 1479
    iput v6, v5, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    .line 1480
    invoke-virtual {v2, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1481
    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1482
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/FiltersSetupActivity;->access$3902(Lorg/telegram/ui/FiltersSetupActivity;Z)Z

    .line 1483
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_3
    :goto_0
    return-void
.end method
