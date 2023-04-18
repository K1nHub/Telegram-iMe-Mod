.class Lorg/telegram/ui/Components/ChatActivityEnterView$58;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->didPressedBotButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/browser/Browser$Progress;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$btn:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;

.field final synthetic val$messageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;)V
    .locals 0

    .line 8947
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->val$btn:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/DialogsActivity;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessagesStorage$TopicKey;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Z",
            "Lorg/telegram/ui/TopicsFragment;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 8950
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 8951
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBotRequestedPeer;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBotRequestedPeer;-><init>()V

    .line 8952
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p4

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p5, p5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p5, p5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {p4, p5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p4

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBotRequestedPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 8953
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->val$messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p4

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBotRequestedPeer;->msg_id:I

    .line 8954
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->val$btn:Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->button_id:I

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBotRequestedPeer;->button_id:I

    .line 8955
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p4

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v0, p2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    invoke-virtual {p4, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBotRequestedPeer;->requested_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 8956
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$58;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 8958
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    const/4 p1, 0x1

    return p1
.end method
