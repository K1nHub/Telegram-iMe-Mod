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

    .line 591
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 p1, 0x0

    const/16 v0, 0x43

    if-ne p2, v0, :cond_a

    .line 598
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 599
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/UsersSelectActivity$6;->wasEmpty:Z

    goto/16 :goto_2

    .line 600
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

    .line 601
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

    .line 602
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1800(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 603
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide/32 v1, -0x80000000

    cmp-long v3, p2, v1

    if-nez v3, :cond_2

    .line 604
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto/16 :goto_1

    .line 605
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide/32 v1, -0x7fffffff

    cmp-long v3, p2, v1

    if-nez v3, :cond_3

    .line 606
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto/16 :goto_1

    .line 607
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide/32 v1, -0x7ffffffe

    cmp-long v3, p2, v1

    if-nez v3, :cond_4

    .line 608
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto :goto_1

    .line 609
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide/32 v1, -0x7ffffffd

    cmp-long v3, p2, v1

    if-nez v3, :cond_5

    .line 610
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto :goto_1

    .line 611
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide/32 v1, -0x7ffffffc

    cmp-long v3, p2, v1

    if-nez v3, :cond_6

    .line 612
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto :goto_1

    .line 613
    :cond_6
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide/32 v1, -0x7ffffffb

    cmp-long v3, p2, v1

    if-nez v3, :cond_7

    .line 614
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto :goto_1

    .line 615
    :cond_7
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p2

    const-wide/32 v1, -0x7ffffffa

    cmp-long v3, p2, v1

    if-nez v3, :cond_8

    .line 616
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    goto :goto_1

    .line 617
    :cond_8
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide p1

    const-wide/32 v1, -0x7ffffff9

    cmp-long p3, p1, v1

    if-nez p3, :cond_9

    .line 618
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    sget p2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    not-int p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/UsersSelectActivity;->access$1972(Lorg/telegram/ui/UsersSelectActivity;I)I

    .line 620
    :cond_9
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$2000(Lorg/telegram/ui/UsersSelectActivity;)V

    .line 621
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$6;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$2100(Lorg/telegram/ui/UsersSelectActivity;)V

    return v0

    :cond_a
    :goto_2
    return p1
.end method
