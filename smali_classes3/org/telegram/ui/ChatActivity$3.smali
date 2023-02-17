.class Lorg/telegram/ui/ChatActivity$3;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createTranslateIncomingDialog(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/fork/utils/Callbacks$Callback;)Lorg/fork/ui/dialog/TranslateAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$onOpenSettingsAction:Lorg/fork/utils/Callbacks$Callback;

.field final synthetic val$replyingMessageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/fork/utils/Callbacks$Callback;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$3;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$3;->val$onOpenSettingsAction:Lorg/fork/utils/Callbacks$Callback;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$3;->val$replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasReplyingMessage()Z
    .locals 1

    .line 791
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$3;->val$replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openSettings()V
    .locals 1

    .line 783
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$3;->val$onOpenSettingsAction:Lorg/fork/utils/Callbacks$Callback;

    if-eqz v0, :cond_0

    .line 784
    invoke-interface {v0}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    .line 786
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$3;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public synthetic pasteResult(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate$-CC;->$default$pasteResult(Lorg/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public replyMessage(Ljava/lang/String;)V
    .locals 2

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$3;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$3;->val$replyingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForReply(Lorg/telegram/messenger/MessageObject;)V

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$3;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    return-void
.end method
