.class Lorg/telegram/ui/DialogsActivity$16;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field private wasEmpty:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 5297
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 p1, 0x0

    const/16 v0, 0x43

    if-ne p2, v0, :cond_2

    .line 5304
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 5305
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$16;->wasEmpty:Z

    goto :goto_1

    .line 5306
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_2

    iget-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$16;->wasEmpty:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 5307
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 5308
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/GroupCreateSpan;->getDialogId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v2, v3}, Lorg/telegram/ui/DialogsActivity;->addOrRemoveSelectedDialog(JLandroid/view/View;)Z

    .line 5309
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/GroupCreateSpan;->getDialogId()J

    move-result-wide v1

    invoke-static {p3, v1, v2, p1}, Lorg/telegram/ui/DialogsActivity;->access$27700(Lorg/telegram/ui/DialogsActivity;JZ)V

    .line 5310
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$27800(Lorg/telegram/ui/DialogsActivity;)V

    return v0

    :cond_2
    :goto_1
    return p1
.end method
