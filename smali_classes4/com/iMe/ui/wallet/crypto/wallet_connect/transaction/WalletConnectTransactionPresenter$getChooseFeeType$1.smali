.class final synthetic Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter$getChooseFeeType$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "WalletConnectTransactionPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;->getChooseFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;

    const/4 v1, 0x1

    const-string/jumbo v4, "selectFee"

    const-string/jumbo v5, "selectFee(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 152
    check-cast p1, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter$getChooseFeeType$1;->invoke(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 1

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;->access$selectFee(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method
