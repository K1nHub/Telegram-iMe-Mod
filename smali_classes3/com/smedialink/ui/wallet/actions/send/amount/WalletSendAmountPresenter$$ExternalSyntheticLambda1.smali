.class public final synthetic Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

.field public final synthetic f$1:Lorg/fork/utils/Callbacks$Callback1;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda1;->f$1:Lorg/fork/utils/Callbacks$Callback1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$$ExternalSyntheticLambda1;->f$1:Lorg/fork/utils/Callbacks$Callback1;

    check-cast p1, Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-static {v0, v1, p1}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->$r8$lambda$8hBmFXe1Fa3wkx_fWYHVCgIltNg(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;Lorg/fork/utils/Callbacks$Callback1;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    return-void
.end method
