.class Lorg/telegram/ui/InviteContactsActivity$7;
.super Ljava/lang/Object;
.source "InviteContactsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/InviteContactsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/InviteContactsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/InviteContactsActivity;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$7;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 485
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$7;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/InviteContactsActivity;->access$000(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 486
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$7;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/InviteContactsActivity;->access$2002(Lorg/telegram/ui/InviteContactsActivity;Z)Z

    .line 487
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$7;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/InviteContactsActivity;->access$2102(Lorg/telegram/ui/InviteContactsActivity;Z)Z

    .line 488
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$7;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/InviteContactsActivity;->access$2200(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->setSearching(Z)V

    .line 489
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$7;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/InviteContactsActivity;->access$2200(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$7;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity;->access$000(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 490
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$7;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/InviteContactsActivity;->access$1300(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 491
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$7;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/InviteContactsActivity;->access$1300(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 492
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$7;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/InviteContactsActivity;->access$1400(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v1, "NoResult"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$7;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/InviteContactsActivity;->access$2300(Lorg/telegram/ui/InviteContactsActivity;)V

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
