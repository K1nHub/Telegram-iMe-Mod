.class public final Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;
.super Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;
.source "SwapUiState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Crypto"
.end annotation


# instance fields
.field private final feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

.field private final metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

.field private final outputFiatAmountText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;Ljava/lang/String;)V
    .locals 1

    const-string v0, "feeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    .line 25
    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 26
    iput-object p3, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->outputFiatAmountText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    return-object v0
.end method

.method public final getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-object v0
.end method

.method public final getOutputFiatAmountText()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->outputFiatAmountText:Ljava/lang/String;

    return-object v0
.end method
