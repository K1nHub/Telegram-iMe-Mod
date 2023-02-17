.class public final Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$5$1;
.super Landroid/os/CountDownTimer;
.source "WalletSwapProcessFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;->renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_with:Lcom/smedialink/ui/custom/ActionButton;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/custom/ActionButton;Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 2

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$5$1;->$this_with:Lcom/smedialink/ui/custom/ActionButton;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$5$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;

    const-wide/16 p1, 0xbb8

    const-wide/16 v0, 0x3e8

    .line 214
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$5$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;->access$getPresenter(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->resetStateIfNeed()V

    return-void
.end method

.method public onTick(J)V
    .locals 6

    const-wide/16 v0, 0x3e8

    add-long/2addr p1, v0

    .line 217
    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$5$1;->$this_with:Lcom/smedialink/ui/custom/ActionButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$renderState$1$5$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;

    invoke-static {v4}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;->access$getResourceManager(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_exchange:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p1, v0

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
