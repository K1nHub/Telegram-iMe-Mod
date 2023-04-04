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
.field private final chooseFeeType:Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

.field private final metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/custom/FeeView$ChooseFeeType;Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;)V
    .locals 1

    const-string v0, "chooseFeeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->chooseFeeType:Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-void
.end method


# virtual methods
.method public final getChooseFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->chooseFeeType:Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

    return-object v0
.end method

.method public final getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Crypto;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-object v0
.end method
