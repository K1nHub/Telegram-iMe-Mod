.class Lorg/telegram/ui/ChatActivity$15;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 2955
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IFF)Z
    .locals 10

    .line 2958
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isTryingSelect()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2961
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$2902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 2964
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v0, :cond_2

    .line 2965
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 2966
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetMessagesTTL;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x15

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isWallpaperAction()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 2968
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$3000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    if-ltz v3, :cond_3

    if-eqz v0, :cond_4

    .line 2969
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v5, p1

    move v8, p3

    move v9, p4

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZZFF)Z

    move-result p3

    goto :goto_2

    .line 2972
    :cond_4
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_5

    .line 2973
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->isInsideBackground(FF)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 2975
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1, v1, p3, p4}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZFF)V

    move p3, v2

    .line 2977
    :goto_2
    instance-of p4, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p4, :cond_6

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p4

    if-eqz p4, :cond_6

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 p4, 0x1b

    if-eq p1, p4, :cond_6

    .line 2978
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$3400(Lorg/telegram/ui/ChatActivity;I)V

    goto :goto_3

    :cond_6
    move v2, p3

    :goto_3
    return v2

    :cond_7
    :goto_4
    return v1
.end method

.method public synthetic onLongClickRelease()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended$-CC;->$default$onLongClickRelease(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    return-void
.end method

.method public synthetic onMove(FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended$-CC;->$default$onMove(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;FF)V

    return-void
.end method
