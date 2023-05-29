.class public final enum Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;
.super Ljava/lang/Enum;
.source "WCBinanceTradeOrder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

.field public static final enum ID:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

.field public static final enum ORDER_TYPE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

.field public static final enum PRICE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

.field public static final enum QUANTITY:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

.field public static final enum SENDER:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

.field public static final enum SIDE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

.field public static final enum SYMBOL:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

.field public static final enum TIME_INFORCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->ID:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->ORDER_TYPE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->PRICE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->QUANTITY:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->SENDER:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->SIDE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->SYMBOL:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->TIME_INFORCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const-string v1, "ID"

    const/4 v2, 0x0

    const-string v3, "id"

    invoke-direct {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->ID:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    .line 18
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const-string v1, "ORDER_TYPE"

    const/4 v2, 0x1

    const-string v3, "ordertype"

    invoke-direct {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->ORDER_TYPE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    .line 19
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const-string v1, "PRICE"

    const/4 v2, 0x2

    const-string v3, "price"

    invoke-direct {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->PRICE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    .line 20
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const-string v1, "QUANTITY"

    const/4 v2, 0x3

    const-string v3, "quantity"

    invoke-direct {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->QUANTITY:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    .line 21
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const-string v1, "SENDER"

    const/4 v2, 0x4

    const-string v3, "sender"

    invoke-direct {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->SENDER:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    .line 22
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const-string v1, "SIDE"

    const/4 v2, 0x5

    const-string/jumbo v3, "side"

    invoke-direct {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->SIDE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    .line 23
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const-string v1, "SYMBOL"

    const/4 v2, 0x6

    const-string/jumbo v3, "symbol"

    invoke-direct {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->SYMBOL:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    .line 24
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    const-string v1, "TIME_INFORCE"

    const/4 v2, 0x7

    const-string/jumbo v3, "timeinforce"

    invoke-direct {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->TIME_INFORCE:Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-static {}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->$values()[Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    move-result-object v0

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->$VALUES:[Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

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

    iput-object p3, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;
    .locals 1

    const-class v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    return-object p0
.end method

.method public static values()[Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;
    .locals 1

    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->$VALUES:[Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceTradeOrder$MessageKey;->key:Ljava/lang/String;

    return-object v0
.end method
