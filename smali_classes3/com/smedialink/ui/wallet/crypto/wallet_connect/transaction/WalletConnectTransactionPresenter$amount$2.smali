.class final Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter$amount$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectTransactionPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;-><init>(Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter$amount$2;->this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter$amount$2;->invoke()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/math/BigDecimal;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter$amount$2;->this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;->access$getScreenType$p(Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;)Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;->getTransaction()Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    invoke-static {v0, v1}, Lcom/smedialink/storage/domain/utils/crypto/Convert;->fromWei(Ljava/lang/String;Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method
