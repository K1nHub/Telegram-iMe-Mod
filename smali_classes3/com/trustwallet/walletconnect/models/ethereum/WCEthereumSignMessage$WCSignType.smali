.class public final enum Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;
.super Ljava/lang/Enum;
.source "WCEthereumSignMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WCSignType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

.field public static final enum MESSAGE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

.field public static final enum PERSONAL_MESSAGE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

.field public static final enum TYPED_MESSAGE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;


# direct methods
.method private static final synthetic $values()[Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    sget-object v1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;->MESSAGE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;->PERSONAL_MESSAGE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;->TYPED_MESSAGE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    const-string v1, "MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;->MESSAGE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    new-instance v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    const-string v1, "PERSONAL_MESSAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;->PERSONAL_MESSAGE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    new-instance v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    const-string v1, "TYPED_MESSAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;->TYPED_MESSAGE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    invoke-static {}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;->$values()[Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    move-result-object v0

    sput-object v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;->$VALUES:[Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;
    .locals 1

    const-class v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    return-object p0
.end method

.method public static values()[Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;
    .locals 1

    sget-object v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;->$VALUES:[Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage$WCSignType;

    return-object v0
.end method
