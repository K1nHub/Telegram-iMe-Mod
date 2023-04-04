.class final Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$showProcessingUrl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BuyCryptoProductFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->showProcessingUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$showProcessingUrl$1;->this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p1, Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$showProcessingUrl$1;->invoke(Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment$showProcessingUrl$1;->this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductFragment;)Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->processPaymentResult(Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;)V

    return-void
.end method
