.class Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavedDialogsAdapter"
.end annotation


# instance fields
.field public attachedToRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final controller:Lorg/telegram/messenger/SavedMessagesController;

.field private final dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation
.end field

.field public final itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private final mContext:Landroid/content/Context;

.field private notifyOrderUpdate:Ljava/lang/Runnable;

.field private final oldDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private orderChanged:Z

.field public final selectedDialogs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field public final viewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method public static synthetic $r8$lambda$n9ZEfdOBc7X4i00rCKXsVXh2pvI(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 2

    .line 8155
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 8064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->oldDialogs:Ljava/util/ArrayList;

    .line 8065
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    .line 8067
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->notifyOrderUpdate:Ljava/lang/Runnable;

    .line 8081
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->viewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 8083
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)V

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 8181
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    .line 8156
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->mContext:Landroid/content/Context;

    .line 8157
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->controller:Lorg/telegram/messenger/SavedMessagesController;

    .line 8158
    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->includeSavedDialogs()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8159
    invoke-virtual {p2}, Lorg/telegram/messenger/SavedMessagesController;->loadDialogs()V

    :cond_0
    const/4 p1, 0x1

    .line 8161
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    const/4 p1, 0x0

    .line 8162
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->update(Z)V

    return-void
.end method

.method static synthetic access$11100(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 8060
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$11200(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 8060
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->notifyOrderUpdate:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$11302(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;Z)Z
    .locals 0

    .line 8060
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->orderChanged:Z

    return p1
.end method

.method private synthetic lambda$new$0()V
    .locals 4

    .line 8068
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->orderChanged:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 8071
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->orderChanged:Z

    .line 8072
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8073
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 8074
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-boolean v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-eqz v2, :cond_1

    .line 8075
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v2, v2, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8078
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SavedMessagesController;->updatePinnedOrder(Ljava/util/ArrayList;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 8290
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_1

    .line 8167
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 8168
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v0, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    return-wide v0

    :cond_1
    :goto_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/16 p1, 0xd

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 8275
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-nez v0, :cond_0

    return-void

    .line 8276
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    .line 8277
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 8278
    iget-wide v2, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-object v4, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    .line 8279
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v2, v0, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 8280
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->getItemCount()I

    move-result v2

    if-ge p2, v2, :cond_1

    move v1, v0

    :cond_1
    iput-boolean v1, p1, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 8250
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$2;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter$2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    .line 8267
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/DialogCell;->setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V

    const/4 p2, 0x1

    .line 8268
    iput-boolean p2, p1, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    .line 8269
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6900(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 8270
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public select(Landroid/view/View;)V
    .locals 13

    .line 8184
    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-nez v0, :cond_0

    return-void

    .line 8185
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/DialogCell;

    .line 8186
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    .line 8188
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 8189
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v6, v6, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v6, v6, v1

    if-nez v6, :cond_1

    .line 8190
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    return-void

    .line 8196
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v5, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    .line 8197
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v6, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8198
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-gtz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz v6, :cond_7

    .line 8199
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    goto :goto_2

    .line 8202
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v6, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8203
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v6, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-nez v6, :cond_7

    .line 8204
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->showActionMode(Z)V

    .line 8205
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 8206
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8208
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 8209
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8212
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 8213
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8218
    :cond_7
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11700(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v1

    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v1, v6, v5}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    .line 8219
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_8

    move v1, v5

    goto :goto_3

    :cond_8
    move v1, v4

    .line 8220
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move v9, v4

    .line 8221
    :goto_4
    iget-object v10, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 8222
    iget-object v10, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 8223
    iget-wide v11, v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    cmp-long v11, v11, v7

    if-nez v11, :cond_a

    .line 8224
    iget-boolean v7, v10, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->pinned:Z

    if-nez v7, :cond_b

    move v1, v4

    goto :goto_5

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_b
    :goto_5
    if-nez v1, :cond_9

    .line 8232
    :cond_c
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 8233
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    if-eqz v1, :cond_d

    move v7, v2

    goto :goto_6

    :cond_d
    move v7, v4

    :goto_6
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8235
    :cond_e
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 8236
    iget-object v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    move v4, v2

    :goto_7
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_10
    if-eqz v0, :cond_11

    .line 8239
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    iget-wide v1, v3, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0, v5}, Lorg/telegram/ui/Cells/DialogCell;->setChecked(ZZ)V

    :cond_11
    return-void
.end method

.method public unselectAll()V
    .locals 1

    .line 8244
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public update(Z)V
    .locals 2

    .line 8172
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->oldDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8173
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->oldDialogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8174
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8175
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->dialogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedDialogsAdapter;->controller:Lorg/telegram/messenger/SavedMessagesController;

    iget-object v1, v1, Lorg/telegram/messenger/SavedMessagesController;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    .line 8177
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
