.class public final enum Lcom/iMe/storage/domain/model/billing/CryptoProduct;
.super Ljava/lang/Enum;
.source "CryptoProduct.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/billing/CryptoProduct$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/billing/CryptoProduct;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/billing/CryptoProduct;

.field public static final Companion:Lcom/iMe/storage/domain/model/billing/CryptoProduct$Companion;

.field public static final enum PRODUCT_100:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

.field public static final enum PRODUCT_1000:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

.field public static final enum PRODUCT_1500:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

.field public static final enum PRODUCT_250:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

.field public static final enum PRODUCT_500:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

.field public static final enum PRODUCT_CUSTOM:Lcom/iMe/storage/domain/model/billing/CryptoProduct;


# instance fields
.field private final priceInDollars:F


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/billing/CryptoProduct;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    sget-object v1, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->PRODUCT_100:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->PRODUCT_250:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->PRODUCT_500:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->PRODUCT_1000:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->PRODUCT_1500:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->PRODUCT_CUSTOM:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    const-string v1, "PRODUCT_100"

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/storage/domain/model/billing/CryptoProduct;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->PRODUCT_100:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    .line 6
    new-instance v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    const-string v1, "PRODUCT_250"

    const/4 v2, 0x1

    const/high16 v3, 0x437a0000    # 250.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/storage/domain/model/billing/CryptoProduct;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->PRODUCT_250:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    const-string v1, "PRODUCT_500"

    const/4 v2, 0x2

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/storage/domain/model/billing/CryptoProduct;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->PRODUCT_500:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    const-string v1, "PRODUCT_1000"

    const/4 v2, 0x3

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/storage/domain/model/billing/CryptoProduct;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->PRODUCT_1000:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    .line 9
    new-instance v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    const-string v1, "PRODUCT_1500"

    const/4 v2, 0x4

    const v3, 0x44bb8000    # 1500.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/storage/domain/model/billing/CryptoProduct;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->PRODUCT_1500:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    const-string v1, "PRODUCT_CUSTOM"

    const/4 v2, 0x5

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/storage/domain/model/billing/CryptoProduct;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->PRODUCT_CUSTOM:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    invoke-static {}, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->$values()[Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->$VALUES:[Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    new-instance v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/billing/CryptoProduct$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->Companion:Lcom/iMe/storage/domain/model/billing/CryptoProduct$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->priceInDollars:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/billing/CryptoProduct;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/billing/CryptoProduct;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->$VALUES:[Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    return-object v0
.end method


# virtual methods
.method public final getPriceInDollars()F
    .locals 1

    .line 3
    iget v0, p0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->priceInDollars:F

    return v0
.end method

.method public final isCustom()Z
    .locals 1

    .line 12
    sget-object v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->PRODUCT_CUSTOM:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
