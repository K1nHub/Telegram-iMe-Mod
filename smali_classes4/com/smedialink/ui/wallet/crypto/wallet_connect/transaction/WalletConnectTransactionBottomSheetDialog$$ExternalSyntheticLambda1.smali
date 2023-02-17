.class public final synthetic Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionBottomSheetDialog$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;->processTransaction()V

    return-void
.end method
