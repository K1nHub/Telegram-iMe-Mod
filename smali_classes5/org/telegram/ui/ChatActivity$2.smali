.class Lorg/telegram/ui/ChatActivity$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->newInstanceInForwardingEditor(JLorg/telegram/messenger/MessagePreviewParams;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/iMe/fork/utils/Callbacks$Callback1;

.field final synthetic val$dialogId:J

.field final synthetic val$params:Lorg/telegram/messenger/MessagePreviewParams;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagePreviewParams;JLcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$2;->val$params:Lorg/telegram/messenger/MessagePreviewParams;

    iput-wide p2, p0, Lorg/telegram/ui/ChatActivity$2;->val$dialogId:J

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$2;->val$callback:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onForwardingMessagesChanged(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 589
    new-instance v0, Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$2;->val$params:Lorg/telegram/messenger/MessagePreviewParams;

    iget-boolean v2, v1, Lorg/telegram/messenger/MessagePreviewParams;->secret:Z

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->noforwards:Z

    invoke-direct {v0, v2, v1}, Lorg/telegram/messenger/MessagePreviewParams;-><init>(ZZ)V

    .line 590
    iget-wide v1, p0, Lorg/telegram/ui/ChatActivity$2;->val$dialogId:J

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/messenger/MessagePreviewParams;->updateForward(Ljava/util/ArrayList;J)V

    const/4 p1, 0x1

    .line 591
    iput-boolean p1, v0, Lorg/telegram/messenger/MessagePreviewParams;->hideForwardSendersName:Z

    iput-boolean p1, v0, Lorg/telegram/messenger/MessagePreviewParams;->isAuthorHiddenForce:Z

    .line 592
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$2;->val$callback:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-interface {p1, v0}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onReport()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$onReport(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;)V

    return-void
.end method

.method public synthetic onUnpin(ZZZLorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$onUnpin(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;ZZZLorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public synthetic openReplyMessage(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$openReplyMessage(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;I)V

    return-void
.end method

.method public synthetic openSearch(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$openSearch(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic setFieldText(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$setFieldText(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;Ljava/lang/CharSequence;)V

    return-void
.end method
