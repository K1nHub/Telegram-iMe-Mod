.class final Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapProcessPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->getApproveFeeType()Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 849
    check-cast p1, Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;->invoke(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 1

    const-string v0, "fee"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$getApproveFeeType$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$selectApproveFee(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/crypto/send/fee/GasPriceItem;)V

    return-void
.end method
