.class Lorg/telegram/ui/DialogsActivity$17;
.super Lcom/smedialink/ui/common/SimpleTextWatcher;
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
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 5370
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Lcom/smedialink/ui/common/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 5373
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5374
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 5375
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p4}, Lorg/telegram/ui/DialogsActivity;->access$23602(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5376
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p4}, Lorg/telegram/ui/DialogsActivity;->access$13202(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5377
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, p4

    if-eqz p1, :cond_2

    .line 5378
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, p4

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15200(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, p4

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16700(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 5379
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p4, p4, p3}, Lorg/telegram/ui/DialogsActivity;->access$24100(Lorg/telegram/ui/DialogsActivity;ZZZ)V

    goto :goto_0

    .line 5382
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, p3}, Lorg/telegram/ui/DialogsActivity;->access$23602(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5383
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, p3}, Lorg/telegram/ui/DialogsActivity;->access$13202(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5384
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, p4

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15200(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 5385
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2, p3, p4, p3}, Lorg/telegram/ui/DialogsActivity;->access$24100(Lorg/telegram/ui/DialogsActivity;ZZZ)V

    .line 5387
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$17;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/SearchViewPager;->onTextChanged(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
