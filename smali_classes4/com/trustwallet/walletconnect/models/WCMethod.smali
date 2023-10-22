.class public final enum Lcom/trustwallet/walletconnect/models/WCMethod;
.super Ljava/lang/Enum;
.source "WCMethod.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trustwallet/walletconnect/models/WCMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trustwallet/walletconnect/models/WCMethod;

.field public static final enum BNB_SIGN:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bnb_sign"
    .end annotation
.end field

.field public static final enum BNB_TRANSACTION_CONFIRM:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bnb_tx_confirmation"
    .end annotation
.end field

.field public static final enum ETH_PERSONAL_SIGN:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "personal_sign"
    .end annotation
.end field

.field public static final enum ETH_SEND_TRANSACTION:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eth_sendTransaction"
    .end annotation
.end field

.field public static final enum ETH_SIGN:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eth_sign"
    .end annotation
.end field

.field public static final enum ETH_SIGN_TRANSACTION:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eth_signTransaction"
    .end annotation
.end field

.field public static final enum ETH_SIGN_TYPE_DATA:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eth_signTypedData"
    .end annotation
.end field

.field public static final enum ETH_SIGN_TYPE_DATA_V4:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eth_signTypedData_v4"
    .end annotation
.end field

.field public static final enum GET_ACCOUNTS:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "get_accounts"
    .end annotation
.end field

.field public static final enum SESSION_REQUEST:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wc_sessionRequest"
    .end annotation
.end field

.field public static final enum SESSION_UPDATE:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wc_sessionUpdate"
    .end annotation
.end field

.field public static final enum SIGN_TRANSACTION:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trust_signTransaction"
    .end annotation
.end field

.field public static final enum WALLET_ADD_NETWORK:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallet_addEthereumChain"
    .end annotation
.end field

.field public static final enum WALLET_SWITCH_NETWORK:Lcom/trustwallet/walletconnect/models/WCMethod;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallet_switchEthereumChain"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/trustwallet/walletconnect/models/WCMethod;
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/trustwallet/walletconnect/models/WCMethod;

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->SESSION_REQUEST:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->SESSION_UPDATE:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SIGN:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_PERSONAL_SIGN:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SIGN_TYPE_DATA:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SIGN_TYPE_DATA_V4:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SIGN_TRANSACTION:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SEND_TRANSACTION:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->BNB_SIGN:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->BNB_TRANSACTION_CONFIRM:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->GET_ACCOUNTS:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->SIGN_TRANSACTION:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->WALLET_SWITCH_NETWORK:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/WCMethod;->WALLET_ADD_NETWORK:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "SESSION_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->SESSION_REQUEST:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 9
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "SESSION_UPDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->SESSION_UPDATE:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 12
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "ETH_SIGN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SIGN:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 15
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "ETH_PERSONAL_SIGN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_PERSONAL_SIGN:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 18
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "ETH_SIGN_TYPE_DATA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SIGN_TYPE_DATA:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 21
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "ETH_SIGN_TYPE_DATA_V4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SIGN_TYPE_DATA_V4:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 24
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "ETH_SIGN_TRANSACTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SIGN_TRANSACTION:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 27
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "ETH_SEND_TRANSACTION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->ETH_SEND_TRANSACTION:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 30
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "BNB_SIGN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->BNB_SIGN:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 33
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "BNB_TRANSACTION_CONFIRM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->BNB_TRANSACTION_CONFIRM:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 36
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "GET_ACCOUNTS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->GET_ACCOUNTS:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 39
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "SIGN_TRANSACTION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->SIGN_TRANSACTION:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 42
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "WALLET_SWITCH_NETWORK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->WALLET_SWITCH_NETWORK:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 45
    new-instance v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    const-string v1, "WALLET_ADD_NETWORK"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/WCMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->WALLET_ADD_NETWORK:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-static {}, Lcom/trustwallet/walletconnect/models/WCMethod;->$values()[Lcom/trustwallet/walletconnect/models/WCMethod;

    move-result-object v0

    sput-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->$VALUES:[Lcom/trustwallet/walletconnect/models/WCMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trustwallet/walletconnect/models/WCMethod;
    .locals 1

    const-class v0, Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/trustwallet/walletconnect/models/WCMethod;

    return-object p0
.end method

.method public static values()[Lcom/trustwallet/walletconnect/models/WCMethod;
    .locals 1

    sget-object v0, Lcom/trustwallet/walletconnect/models/WCMethod;->$VALUES:[Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trustwallet/walletconnect/models/WCMethod;

    return-object v0
.end method
