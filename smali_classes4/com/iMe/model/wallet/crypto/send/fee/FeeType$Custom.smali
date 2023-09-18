.class public final Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Custom;
.super Lcom/iMe/model/wallet/crypto/send/fee/FeeType;
.source "FeeType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/send/fee/FeeType;
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

    .line 12
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/send/fee/FeeType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Custom;->onChooseFee:Lkotlin/jvm/functions/Function0;

    .line 11
    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Custom;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

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

    .line 10
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Custom;->onChooseFee:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Custom;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-object v0
.end method
