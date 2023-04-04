.class public final enum Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;
.super Ljava/lang/Enum;
.source "EnterPinCodeScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

.field public static final enum CHECK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

.field public static final enum TOTAL_LOCK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    sget-object v1, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->TOTAL_LOCK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->CHECK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    const-string v1, "TOTAL_LOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->TOTAL_LOCK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    .line 5
    new-instance v0, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    const-string v1, "CHECK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->CHECK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-static {}, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->$values()[Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    move-result-object v0

    sput-object v0, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->$VALUES:[Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;
    .locals 1

    const-class v0, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;
    .locals 1

    sget-object v0, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->$VALUES:[Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    return-object v0
.end method


# virtual methods
.method public final isTotalLock()Z
    .locals 1

    .line 7
    sget-object v0, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->TOTAL_LOCK:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
