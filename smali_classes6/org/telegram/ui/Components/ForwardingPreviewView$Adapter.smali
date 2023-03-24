.class Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ForwardingPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ForwardingPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V
    .locals 0

    .line 1318
    iput-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/ui/Components/ForwardingPreviewView$1;)V
    .locals 0

    .line 1318
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 1328
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 1329
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-boolean v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->hasSpoilers:Z

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setInvalidateSpoilersParent(Z)V

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ForwardingPreviewView;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setParentViewSize(II)V

    .line 1331
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1332
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v2, v2, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v4, v3, Lorg/telegram/messenger/ForwardingMessagesParams;->groupedMessagesMap:Landroid/util/LongSparseArray;

    iget-object v3, v3, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZ)V

    .line 1333
    new-instance v2, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter$1;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 1338
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    invoke-virtual {v2}, Lorg/telegram/messenger/ForwardingMessagesParams;->isTemplatePreview()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1339
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v2, v2, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 1340
    invoke-virtual {p1, v4, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckBoxVisible(ZZ)V

    .line 1341
    iget-object v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v2, v2, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 1342
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ForwardingPreviewView;->forwardingMessagesParams:Lorg/telegram/messenger/ForwardingMessagesParams;

    iget-object v2, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->selectedIds:Landroid/util/SparseBooleanArray;

    iget-object v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->previewMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p2

    .line 1343
    invoke-virtual {p1, p2, p2, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1322
    new-instance p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$Adapter;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->access$700(Lorg/telegram/ui/Components/ForwardingPreviewView;)Lorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1323
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
