.class Lorg/telegram/ui/DialogsActivity$14;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "DialogsActivity.java"


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


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 0

    .line 5302
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 5305
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$27700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5306
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$27700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->cancelDeleteAnimation()V

    .line 5307
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$27702(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/GroupCreateSpan;)Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 5309
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 5310
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5311
    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    .line 5312
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5315
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
