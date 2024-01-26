.class public final enum Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;
.super Ljava/lang/Enum;
.source "FiatCurrency.kt"

# interfaces
.implements Lcom/iMe/storage/domain/model/crypto/simplex/Currency;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;",
        ">;",
        "Lcom/iMe/storage/domain/model/crypto/simplex/Currency;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

.field public static final enum USD:Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;


# instance fields
.field private final currencySymbol:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;->USD:Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    sget v1, Lcom/iMe/storage/R$string;->currency_short_dollar:I

    const-string v2, "USD"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;->USD:Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;->$values()[Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

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

    iput p3, p0, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;->currencySymbol:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    return-object v0
.end method


# virtual methods
.method public final getCurrencySymbol()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;->currencySymbol:I

    return v0
.end method

.method public getSymbolResId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;->currencySymbol:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
