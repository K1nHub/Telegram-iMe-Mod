.class Lorg/telegram/ui/DialogsActivity$77;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->lambda$onSendLongClick$153(Landroid/app/Activity;Landroid/view/View;)V
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

    .line 15190
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$77;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectDate(ZILjava/lang/String;)V
    .locals 7

    .line 15198
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$77;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput p2, p1, Lorg/telegram/ui/DialogsActivity;->scheduleDate:I

    .line 15199
    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$31700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$77;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 15202
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    move p2, p1

    .line 15203
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$77;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 15204
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$77;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/MessagesStorage$TopicKey;->of(JI)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 15206
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$77;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$31700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$77;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;->didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 15193
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$77;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
