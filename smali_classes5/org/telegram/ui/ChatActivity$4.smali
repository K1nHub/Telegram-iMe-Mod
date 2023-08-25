.class Lorg/telegram/ui/ChatActivity$4;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createTranslateOutgoingDialog(Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/TranslateAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$pasteResultAction:Lcom/iMe/fork/utils/Callbacks$Callback1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$4;->val$pasteResultAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic hasReplyingMessage()Z
    .locals 1

    invoke-static {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate$-CC;->$default$hasReplyingMessage(Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)Z

    move-result v0

    return v0
.end method

.method public openSettings()V
    .locals 1

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$4;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public pasteResult(Ljava/lang/String;)V
    .locals 1

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$4;->val$pasteResultAction:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-interface {v0, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic replyMessage(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate$-CC;->$default$replyMessage(Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;Ljava/lang/String;)V

    return-void
.end method
