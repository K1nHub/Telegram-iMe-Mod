.class public final Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;
.super Lcom/iMe/ui/custom/FeeView$ChooseFeeType;
.source "FeeView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/custom/FeeView$ChooseFeeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# instance fields
.field private final feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

.field private final model:Lcom/iMe/model/dialog/DialogModel;

.field private final onFeeSelectedAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

.field private final transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams;


# direct methods
.method public constructor <init>(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Lcom/iMe/storage/domain/model/crypto/TransactionParams;",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;",
            "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedFee"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFeeSelectedAction"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/FeeView$ChooseFeeType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 165
    iput-object p1, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->model:Lcom/iMe/model/dialog/DialogModel;

    .line 166
    iput-object p2, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams;

    .line 167
    iput-object p3, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    .line 168
    iput-object p4, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 169
    iput-object p5, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->onFeeSelectedAction:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getFeeTokenInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->feeTokenInfo:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    return-object v0
.end method

.method public final getModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->model:Lcom/iMe/model/dialog/DialogModel;

    return-object v0
.end method

.method public final getOnFeeSelectedAction()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->onFeeSelectedAction:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-object v0
.end method

.method public final getTransactionParams()Lcom/iMe/storage/domain/model/crypto/TransactionParams;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;->transactionParams:Lcom/iMe/storage/domain/model/crypto/TransactionParams;

    return-object v0
.end method
