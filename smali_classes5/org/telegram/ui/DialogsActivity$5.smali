.class Lorg/telegram/ui/DialogsActivity$5;
.super Lorg/telegram/ui/Components/ForwardingPreviewView;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->openForwardingOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$keyboardVisible:Z


# direct methods
.method public static synthetic $r8$lambda$MqIBdC-AGmXlwRKnFWWYgm8sBoc(Lorg/telegram/ui/DialogsActivity$5;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$5;->lambda$onDismiss$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$dBX2HWeIf9p8AqKg8uSMX6rKqn4(Lorg/telegram/ui/DialogsActivity$5;Lorg/telegram/messenger/ForwardingMessagesParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$5;->lambda$didOpenEditorPressed$1(Lorg/telegram/messenger/ForwardingMessagesParams;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/messenger/ForwardingMessagesParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;Z)V
    .locals 7

    .line 1379
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean p8, p0, Lorg/telegram/ui/DialogsActivity$5;->val$keyboardVisible:Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ForwardingPreviewView;-><init>(Landroid/content/Context;Lorg/telegram/messenger/ForwardingMessagesParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;)V

    return-void
.end method

.method private synthetic lambda$didOpenEditorPressed$1(Lorg/telegram/messenger/ForwardingMessagesParams;)V
    .locals 1

    .line 1413
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity;->access$802(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/messenger/ForwardingMessagesParams;)Lorg/telegram/messenger/ForwardingMessagesParams;

    .line 1414
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method private synthetic lambda$onDismiss$0()V
    .locals 1

    .line 1384
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected didOpenEditorPressed()V
    .locals 6

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1412
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$900(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v1

    new-instance v5, Lorg/telegram/ui/DialogsActivity$5$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/DialogsActivity$5$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$5;)V

    invoke-static {v3, v4, v1, v5}, Lorg/telegram/ui/ChatActivity;->newInstanceInForwardingEditor(JLorg/telegram/messenger/ForwardingMessagesParams;Lorg/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1416
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    return-void
.end method

.method protected didSendPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 1393
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->dismiss(Z)V

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method protected onDismiss(Z)V
    .locals 2

    .line 1382
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$5;->val$keyboardVisible:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1383
    new-instance p1, Lorg/telegram/ui/DialogsActivity$5$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DialogsActivity$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$5;)V

    const-wide/16 v0, 0x32

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method protected onTransitionAnimationProgress(ZF)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_0

    .line 1400
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1401
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1403
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method
