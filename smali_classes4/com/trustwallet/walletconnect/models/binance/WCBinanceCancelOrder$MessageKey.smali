.class public final enum Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;
.super Ljava/lang/Enum;
.source "WCBinanceCancelOrder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

.field public static final enum REFID:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

.field public static final enum SENDER:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

.field public static final enum SYMBOL:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->REFID:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->SENDER:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->SYMBOL:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    const-string v1, "REFID"

    const/4 v2, 0x0

    const-string v3, "refid"

    invoke-direct {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->REFID:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    .line 21
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    const-string v1, "SENDER"

    const/4 v2, 0x1

    const-string v3, "sender"

    invoke-direct {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->SENDER:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    .line 22
    new-instance v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    const-string v1, "SYMBOL"

    const/4 v2, 0x2

    const-string v3, "symbol"

    invoke-direct {v0, v1, v2, v3}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->SYMBOL:Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    invoke-static {}, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->$values()[Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    move-result-object v0

    sput-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->$VALUES:[Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;
    .locals 1

    const-class v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    return-object p0
.end method

.method public static values()[Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;
    .locals 1

    sget-object v0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->$VALUES:[Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/binance/WCBinanceCancelOrder$MessageKey;->key:Ljava/lang/String;

    return-object v0
.end method
