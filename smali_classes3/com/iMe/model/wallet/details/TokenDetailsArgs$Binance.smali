.class public final Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;
.super Lcom/iMe/model/wallet/details/TokenDetailsArgs;
.source "TokenDetailsArgs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/details/TokenDetailsArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binance"
.end annotation


# instance fields
.field private final token:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->token:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    return-void
.end method


# virtual methods
.method public final getToken()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Binance;->token:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    return-object v0
.end method
