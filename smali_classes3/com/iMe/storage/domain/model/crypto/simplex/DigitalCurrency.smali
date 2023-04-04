.class public final enum Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;
.super Ljava/lang/Enum;
.source "DigitalCurrency.kt"

# interfaces
.implements Lcom/iMe/storage/domain/model/crypto/simplex/Currency;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;",
        ">;",
        "Lcom/iMe/storage/domain/model/crypto/simplex/Currency;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

.field public static final enum BNB:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

.field public static final enum BUSD:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

.field public static final Companion:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;

.field public static final enum ETH:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

.field public static final enum MATIC:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

.field public static final enum USDT:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;


# instance fields
.field private final currencySymbol:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->ETH:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->USDT:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->BNB:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->BUSD:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->MATIC:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$ETH;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getShortName()I

    move-result v1

    const-string v2, "ETH"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->ETH:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    .line 9
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDT;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDT;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getShortName()I

    move-result v1

    const-string v2, "USDT"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->USDT:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getShortName()I

    move-result v1

    const-string v2, "BNB"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->BNB:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    .line 11
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BUSD;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BUSD;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getShortName()I

    move-result v1

    const-string v2, "BUSD"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->BUSD:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    .line 12
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$MATIC;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$MATIC;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getShortName()I

    move-result v1

    const-string v2, "MATIC"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->MATIC:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->$values()[Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->Companion:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->currencySymbol:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    return-object v0
.end method


# virtual methods
.method public final getCurrencySymbol()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->currencySymbol:I

    return v0
.end method

.method public getSymbol()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->currencySymbol:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
