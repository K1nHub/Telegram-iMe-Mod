.class Lorg/telegram/ui/ManageLinksActivity$ListAdapter$4;
.super Lcom/iMe/ui/common/SimpleTextWatcher;
.source "ManageLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

.field final synthetic val$linkActionView:Lorg/telegram/ui/Components/LinkActionView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    .line 2309
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$4;->this$1:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$4;->val$linkActionView:Lorg/telegram/ui/Components/LinkActionView;

    invoke-direct {p0}, Lcom/iMe/ui/common/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 2312
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$4;->this$1:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object p1, p1, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedAmount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$4;->this$1:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object p1, p1, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedAmount()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$4;->val$linkActionView:Lorg/telegram/ui/Components/LinkActionView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2313
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$4;->this$1:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget-object p1, p1, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object p1, p1, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetStateIfNeed()V

    :cond_0
    return-void
.end method
