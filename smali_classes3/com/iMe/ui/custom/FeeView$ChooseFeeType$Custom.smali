.class public final Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;
.super Lcom/iMe/ui/custom/FeeView$ChooseFeeType;
.source "FeeView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/custom/FeeView$ChooseFeeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Custom"
.end annotation


# instance fields
.field private final onChooseFee:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
            ")V"
        }
    .end annotation

    const-string v0, "onChooseFee"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedFee"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/FeeView$ChooseFeeType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 160
    iput-object p1, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;->onChooseFee:Lkotlin/jvm/functions/Function0;

    .line 161
    iput-object p2, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-void
.end method


# virtual methods
.method public final getOnChooseFee()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;->onChooseFee:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Custom;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-object v0
.end method
