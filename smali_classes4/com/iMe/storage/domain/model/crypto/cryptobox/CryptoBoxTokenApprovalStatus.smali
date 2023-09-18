.class public final enum Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;
.super Ljava/lang/Enum;
.source "CryptoBoxTokenApprovalStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

.field public static final enum DONE:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

.field public static final enum MISSING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

.field public static final enum PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;->MISSING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;->PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;->DONE:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;->MISSING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    const-string v1, "PENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;->PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    const-string v1, "DONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;->DONE:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;->$values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalStatus;

    return-object v0
.end method
