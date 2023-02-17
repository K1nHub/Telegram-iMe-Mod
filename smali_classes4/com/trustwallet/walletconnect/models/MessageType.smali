.class public final enum Lcom/trustwallet/walletconnect/models/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/trustwallet/walletconnect/models/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trustwallet/walletconnect/models/MessageType;

.field public static final enum PUB:Lcom/trustwallet/walletconnect/models/MessageType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pub"
    .end annotation
.end field

.field public static final enum SUB:Lcom/trustwallet/walletconnect/models/MessageType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sub"
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/trustwallet/walletconnect/models/MessageType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/trustwallet/walletconnect/models/MessageType;

    sget-object v1, Lcom/trustwallet/walletconnect/models/MessageType;->PUB:Lcom/trustwallet/walletconnect/models/MessageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/trustwallet/walletconnect/models/MessageType;->SUB:Lcom/trustwallet/walletconnect/models/MessageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/trustwallet/walletconnect/models/MessageType;

    const-string v1, "PUB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/MessageType;->PUB:Lcom/trustwallet/walletconnect/models/MessageType;

    .line 7
    new-instance v0, Lcom/trustwallet/walletconnect/models/MessageType;

    const-string v1, "SUB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/models/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trustwallet/walletconnect/models/MessageType;->SUB:Lcom/trustwallet/walletconnect/models/MessageType;

    invoke-static {}, Lcom/trustwallet/walletconnect/models/MessageType;->$values()[Lcom/trustwallet/walletconnect/models/MessageType;

    move-result-object v0

    sput-object v0, Lcom/trustwallet/walletconnect/models/MessageType;->$VALUES:[Lcom/trustwallet/walletconnect/models/MessageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/trustwallet/walletconnect/models/MessageType;
    .locals 1

    const-class v0, Lcom/trustwallet/walletconnect/models/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/trustwallet/walletconnect/models/MessageType;

    return-object p0
.end method

.method public static values()[Lcom/trustwallet/walletconnect/models/MessageType;
    .locals 1

    sget-object v0, Lcom/trustwallet/walletconnect/models/MessageType;->$VALUES:[Lcom/trustwallet/walletconnect/models/MessageType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trustwallet/walletconnect/models/MessageType;

    return-object v0
.end method
