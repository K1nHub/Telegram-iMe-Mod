.class final Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter$tokenInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectTransactionPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;-><init>(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter$tokenInfo$2;->this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
    .locals 2

    .line 38
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter$tokenInfo$2;->this$0:Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;->access$getScreenType$p(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;)Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectTransactionScreenType;->getTransaction()Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter$tokenInfo$2;->invoke()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    return-object v0
.end method
