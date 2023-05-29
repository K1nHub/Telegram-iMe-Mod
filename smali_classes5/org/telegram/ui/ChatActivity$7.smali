.class Lorg/telegram/ui/ChatActivity$7;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/iMe/bots/usecase/AiBotsManager$SmartReplierCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->sendMessageToSmartBots(Lorg/telegram/messenger/MessageObject;ZZLcom/iMe/fork/utils/Callbacks$Callback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$callback:Lcom/iMe/fork/utils/Callbacks$Callback2;

.field final synthetic val$forcedPopup:Z

.field final synthetic val$message:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lcom/iMe/fork/utils/Callbacks$Callback2;Z)V
    .locals 0

    .line 1438
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$7;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$7;->val$message:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$7;->val$callback:Lcom/iMe/fork/utils/Callbacks$Callback2;

    iput-boolean p4, p0, Lorg/telegram/ui/ChatActivity$7;->val$forcedPopup:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1457
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/SmartBotResponse;",
            ">;)V"
        }
    .end annotation

    .line 1441
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$7;->val$message:Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$7;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$7;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$7;->val$message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$602(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    .line 1443
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$7;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$7;->val$message:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$702(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;

    .line 1446
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$7;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$800(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$7;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$802(Lorg/telegram/ui/ChatActivity;Ljava/util/List;)Ljava/util/List;

    .line 1448
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$7;->val$callback:Lcom/iMe/fork/utils/Callbacks$Callback2;

    if-eqz v0, :cond_2

    .line 1449
    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$7;->val$forcedPopup:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/fork/utils/Callbacks$Callback2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1450
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$7;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$900(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1451
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$7;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$800(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$7;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$7;->val$forcedPopup:Z

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$1000(Lorg/telegram/ui/ChatActivity;Z)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setSmartBotsResponse(Ljava/util/List;Z)V

    :cond_3
    :goto_0
    return-void
.end method
