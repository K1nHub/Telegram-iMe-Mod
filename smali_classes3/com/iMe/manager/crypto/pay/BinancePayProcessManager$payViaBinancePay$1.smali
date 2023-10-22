.class public final Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$payViaBinancePay$1;
.super Ljava/lang/Object;
.source "BinancePayProcessManager.kt"

# interfaces
.implements Lcom/binance/android/binancepay/api/BinancePayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->payViaBinancePay(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

.field final synthetic this$0:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;


# direct methods
.method constructor <init>(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$payViaBinancePay$1;->this$0:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    iput-object p2, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$payViaBinancePay$1;->$transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 7

    .line 96
    iget-object v0, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$payViaBinancePay$1;->this$0:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-static {v0}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->access$getViewState(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;)Lcom/iMe/manager/crypto/pay/BinancePayProcessView;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$payViaBinancePay$1;->this$0:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-static {v1}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_pay_request_paid_success_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$payViaBinancePay$1;->this$0:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-static {v2}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 99
    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_pay_request_paid_success_dialog_description:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 101
    iget-object v5, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$payViaBinancePay$1;->$transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getAmount()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 102
    sget-object v6, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 100
    invoke-static {v5, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 104
    iget-object v5, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$payViaBinancePay$1;->$transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getAsset()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 105
    iget-object v5, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$payViaBinancePay$1;->$transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 98
    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager$payViaBinancePay$1;->this$0:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-static {v3}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->access$getResourceManager$p(Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-interface {v0, v1, v2, v3}, Lcom/iMe/manager/crypto/pay/BinancePayProcessView;->showSuccessPaymentProcessedDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
