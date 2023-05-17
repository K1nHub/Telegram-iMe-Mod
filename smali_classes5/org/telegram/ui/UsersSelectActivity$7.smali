.class Lorg/telegram/ui/UsersSelectActivity$7;
.super Ljava/lang/Object;
.source "UsersSelectActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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


# direct methods
.method constructor <init>(Lorg/telegram/ui/UsersSelectActivity;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$7;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 642
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$7;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 643
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$7;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$2200(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->access$2300(Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 644
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$7;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/UsersSelectActivity;->access$2402(Lorg/telegram/ui/UsersSelectActivity;Z)Z

    .line 645
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$7;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/UsersSelectActivity;->access$2502(Lorg/telegram/ui/UsersSelectActivity;Z)Z

    .line 646
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$7;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$2200(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->setSearching(Z)V

    .line 647
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$7;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$1300(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 648
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$7;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$1300(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 649
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$7;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$1400(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v1, "NoResult"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 650
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$7;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$1400(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 652
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$7;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$2200(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$7;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/UsersSelectActivity;->access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchDialogs(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$7;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$2600(Lorg/telegram/ui/UsersSelectActivity;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
