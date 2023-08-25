.class public final Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;
.super Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;
.source "SwapUiState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binance"
.end annotation


# instance fields
.field private final quote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;)V
    .locals 1

    const-string v0, "quote"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->quote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    return-void
.end method


# virtual methods
.method public final getQuote()Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap$Binance;->quote:Lcom/iMe/storage/domain/model/binancepay/BinanceConvertQuote;

    return-object v0
.end method
