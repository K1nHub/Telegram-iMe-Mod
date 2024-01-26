.class public final enum Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;
.super Ljava/lang/Enum;
.source "CryptoBoxActionStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

.field public static final enum CONFIRMED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

.field public static final Companion:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus$Companion;

.field public static final enum FAILED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

.field public static final enum PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;


# instance fields
.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->CONFIRMED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->FAILED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    sget v1, Lcom/iMe/storage/R$string;->status_pending:I

    const-string v2, "PENDING"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    sget v1, Lcom/iMe/storage/R$string;->status_ok:I

    const-string v2, "CONFIRMED"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->CONFIRMED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    .line 11
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    sget v1, Lcom/iMe/storage/R$string;->status_error:I

    const-string v2, "FAILED"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->FAILED:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->$values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->Companion:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput p3, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->titleResId:I

    return-void
.end method

.method public static final map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->Companion:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    return-object v0
.end method


# virtual methods
.method public final getTitleResId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->titleResId:I

    return v0
.end method
