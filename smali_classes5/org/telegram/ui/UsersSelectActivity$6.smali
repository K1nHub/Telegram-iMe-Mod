.class Lorg/telegram/ui/UsersSelectActivity$6;
.super Ljava/lang/Object;
.source "UsersSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/UsersSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/UsersSelectActivity;

.field private wasEmpty:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/UsersSelectActivity;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p1, 0x0

    const/16 v0, 0x43

    if-ne p2, v0, :cond_a

    .line 599
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 600
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/UsersSelectActivity$6;->wasEmpty:Z

    goto/16 :goto_2

    .line 601
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_a

    iget-boolean p2, p0, Lorg/telegram/ui/UsersSelectActivity$6;->wasEmpty:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$400(Lorg/telegram/ui/UsersSelectActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 602
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$400(Lorg/telegram/ui/UsersSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$400(Lorg/telegram/ui/UsersSelectActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 603
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1800(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 604
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long p2, p2, v1

    if-nez p2, :cond_2

    .line 605
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto/16 :goto_1

    .line 606
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p2, v1

    if-nez p2, :cond_3

    .line 607
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto/16 :goto_1

    .line 608
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide v1, -0x7ffffffffffffffeL    # -1.0E-323

    cmp-long p2, p2, v1

    if-nez p2, :cond_4

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto :goto_1

    .line 610
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide v1, -0x7ffffffffffffffdL    # -1.5E-323

    cmp-long p2, p2, v1

    if-nez p2, :cond_5

    .line 611
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto :goto_1

    .line 612
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide v1, -0x7ffffffffffffffcL    # -2.0E-323

    cmp-long p2, p2, v1

    if-nez p2, :cond_6

    .line 613
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto :goto_1

    .line 614
    :cond_6
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide v1, -0x7ffffffffffffffbL    # -2.5E-323

    cmp-long p2, p2, v1

    if-nez p2, :cond_7

    .line 615
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto :goto_1

    .line 616
    :cond_7
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide v1, -0x7ffffffffffffffaL    # -3.0E-323

    cmp-long p2, p2, v1

    if-nez p2, :cond_8

    .line 617
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto :goto_1

    .line 618
    :cond_8
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p1

    const-wide v1, -0x7ffffffffffffff9L    # -3.5E-323

    cmp-long p1, p1, v1

    if-nez p1, :cond_9

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    .line 621
    :cond_9
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$2000(Lorg/telegram/ui/UsersSelectActivity;)V

    .line 622
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$2100(Lorg/telegram/ui/UsersSelectActivity;)V

    return v0

    :cond_a
    :goto_2
    return p1
.end method
