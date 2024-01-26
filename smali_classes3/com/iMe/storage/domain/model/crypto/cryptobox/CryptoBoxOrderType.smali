.class public final enum Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;
.super Ljava/lang/Enum;
.source "CryptoBoxOrderType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

.field public static final enum BIGGEST:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

.field public static final Companion:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType$Companion;

.field public static final enum NEWEST:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;


# instance fields
.field private final textResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->BIGGEST:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->NEWEST:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    sget v1, Lcom/iMe/storage/R$string;->cryptoboxes_order_biggest:I

    const-string v2, "BIGGEST"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->BIGGEST:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    sget v1, Lcom/iMe/storage/R$string;->cryptoboxes_order_newest:I

    const-string v2, "NEWEST"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->NEWEST:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->$values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->Companion:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType$Companion;

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
    iput p3, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->textResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;

    return-object v0
.end method


# virtual methods
.method public final getTextResId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxOrderType;->textResId:I

    return v0
.end method
