.class public final enum Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;
.super Ljava/lang/Enum;
.source "WCBinanceTransferOrder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

.field public static final enum INPUTS:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

.field public static final enum OUTPUTS:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->INPUTS:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->OUTPUTS:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    const-string v1, "INPUTS"

    const/4 v2, 0x0

    const-string v3, "inputs"

    invoke-direct {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->INPUTS:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    .line 18
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    const-string v1, "OUTPUTS"

    const/4 v2, 0x1

    const-string/jumbo v3, "outputs"

    invoke-direct {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->OUTPUTS:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    invoke-static {}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->$values()[Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    move-result-object v0

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->$VALUES:[Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;
    .locals 1

    const-class v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    return-object p0
.end method

.method public static values()[Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;
    .locals 1

    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->$VALUES:[Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTransferOrder$MessageKey;->key:Ljava/lang/String;

    return-object v0
.end method
