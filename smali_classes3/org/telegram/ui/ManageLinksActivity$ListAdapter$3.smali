.class Lorg/telegram/ui/ManageLinksActivity$ListAdapter$3;
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


# direct methods
.method constructor <init>(Lorg/telegram/ui/ManageLinksActivity$ListAdapter;)V
    .locals 0

    .line 2295
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    invoke-direct {p0}, Lcom/iMe/ui/common/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 2298
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p2}, Lorg/telegram/ui/ManageLinksActivity;->access$4300(Lorg/telegram/ui/ManageLinksActivity;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-void

    .line 2299
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget-object p2, p2, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object p2, p2, Lorg/telegram/ui/ManageLinksActivity;->stakingTransactionPresenter:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->onAmountChanged(Ljava/lang/String;)V

    return-void
.end method
