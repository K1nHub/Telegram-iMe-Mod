.class Lorg/telegram/ui/DialogsActivity$21;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/GroupCreateFinalActivity$GroupCreateFinalActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->lambda$createView$39(Lorg/telegram/ui/DialogsActivity$ViewPage;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 5538
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$21;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didFailChatCreation()V
    .locals 0

    return-void
.end method

.method public didFinishChatCreation(Lorg/telegram/ui/GroupCreateFinalActivity;J)V
    .locals 6

    .line 5546
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    neg-long p1, p2

    const/4 p3, 0x0

    .line 5547
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JI)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5548
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$21;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$32000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    move-result-object v0

    .line 5549
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$21;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$41800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5550
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$21;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    .line 5552
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$21;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;->didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z

    return-void
.end method

.method public didStartChatCreation()V
    .locals 0

    return-void
.end method
