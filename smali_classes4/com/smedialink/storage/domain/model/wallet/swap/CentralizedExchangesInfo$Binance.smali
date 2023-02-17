.class public final Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Binance;
.super Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;
.source "CentralizedExchangesInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binance"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Binance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Binance;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Binance;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Binance;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Binance;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 15
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;->BINANCE:Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;

    .line 16
    sget v2, Lcom/smedialink/storage/R$drawable;->fork_ic_binance_cex_92:I

    .line 17
    sget v3, Lcom/smedialink/storage/R$string;->wallet_centralized_exchange_binance_name:I

    .line 18
    sget v4, Lcom/smedialink/storage/R$string;->wallet_centralized_exchange_binance_description:I

    const/4 v5, 0x0

    move-object v0, p0

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;-><init>(Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
