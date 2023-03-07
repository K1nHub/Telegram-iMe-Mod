.class final enum Lorg/solovyev/android/checkout/RequestType;
.super Ljava/lang/Enum;
.source "RequestType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/solovyev/android/checkout/RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/solovyev/android/checkout/RequestType;

.field public static final enum BILLING_SUPPORTED:Lorg/solovyev/android/checkout/RequestType;

.field public static final enum CHANGE_PURCHASE:Lorg/solovyev/android/checkout/RequestType;

.field public static final enum CONSUME_PURCHASE:Lorg/solovyev/android/checkout/RequestType;

.field public static final enum GET_PURCHASES:Lorg/solovyev/android/checkout/RequestType;

.field public static final enum GET_PURCHASE_HISTORY:Lorg/solovyev/android/checkout/RequestType;

.field public static final enum GET_SKU_DETAILS:Lorg/solovyev/android/checkout/RequestType;

.field public static final enum PURCHASE:Lorg/solovyev/android/checkout/RequestType;


# instance fields
.field final cacheKeyName:Ljava/lang/String;

.field final expiresIn:J


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 28
    new-instance v6, Lorg/solovyev/android/checkout/RequestType;

    const-string v1, "BILLING_SUPPORTED"

    const/4 v2, 0x0

    const-string v3, "supported"

    const-wide/32 v4, 0x5265c00

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/solovyev/android/checkout/RequestType;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v6, Lorg/solovyev/android/checkout/RequestType;->BILLING_SUPPORTED:Lorg/solovyev/android/checkout/RequestType;

    .line 29
    new-instance v0, Lorg/solovyev/android/checkout/RequestType;

    const-string v8, "GET_PURCHASES"

    const/4 v9, 0x1

    const-string v10, "purchases"

    const-wide/32 v11, 0x124f80

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/solovyev/android/checkout/RequestType;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lorg/solovyev/android/checkout/RequestType;->GET_PURCHASES:Lorg/solovyev/android/checkout/RequestType;

    .line 30
    new-instance v1, Lorg/solovyev/android/checkout/RequestType;

    const-string v14, "GET_PURCHASE_HISTORY"

    const/4 v15, 0x2

    const-string v16, "history"

    const-wide/16 v17, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lorg/solovyev/android/checkout/RequestType;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v1, Lorg/solovyev/android/checkout/RequestType;->GET_PURCHASE_HISTORY:Lorg/solovyev/android/checkout/RequestType;

    .line 31
    new-instance v2, Lorg/solovyev/android/checkout/RequestType;

    const-string v8, "GET_SKU_DETAILS"

    const/4 v9, 0x3

    const-string v10, "skus"

    const-wide/32 v11, 0x5265c00

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lorg/solovyev/android/checkout/RequestType;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v2, Lorg/solovyev/android/checkout/RequestType;->GET_SKU_DETAILS:Lorg/solovyev/android/checkout/RequestType;

    .line 32
    new-instance v3, Lorg/solovyev/android/checkout/RequestType;

    const-string v14, "PURCHASE"

    const/4 v15, 0x4

    const-string v16, "purchase"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lorg/solovyev/android/checkout/RequestType;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v3, Lorg/solovyev/android/checkout/RequestType;->PURCHASE:Lorg/solovyev/android/checkout/RequestType;

    .line 33
    new-instance v4, Lorg/solovyev/android/checkout/RequestType;

    const-string v8, "CHANGE_PURCHASE"

    const/4 v9, 0x5

    const-string v10, "change"

    const-wide/16 v11, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lorg/solovyev/android/checkout/RequestType;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v4, Lorg/solovyev/android/checkout/RequestType;->CHANGE_PURCHASE:Lorg/solovyev/android/checkout/RequestType;

    .line 34
    new-instance v5, Lorg/solovyev/android/checkout/RequestType;

    const-string v14, "CONSUME_PURCHASE"

    const/4 v15, 0x6

    const-string v16, "consume"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lorg/solovyev/android/checkout/RequestType;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v5, Lorg/solovyev/android/checkout/RequestType;->CONSUME_PURCHASE:Lorg/solovyev/android/checkout/RequestType;

    const/4 v7, 0x7

    new-array v7, v7, [Lorg/solovyev/android/checkout/RequestType;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v0, v7, v6

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v5, v7, v0

    .line 27
    sput-object v7, Lorg/solovyev/android/checkout/RequestType;->$VALUES:[Lorg/solovyev/android/checkout/RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lorg/solovyev/android/checkout/RequestType;->cacheKeyName:Ljava/lang/String;

    .line 42
    iput-wide p4, p0, Lorg/solovyev/android/checkout/RequestType;->expiresIn:J

    return-void
.end method

.method static getCacheKeyName(I)Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {}, Lorg/solovyev/android/checkout/RequestType;->values()[Lorg/solovyev/android/checkout/RequestType;

    move-result-object v0

    aget-object p0, v0, p0

    iget-object p0, p0, Lorg/solovyev/android/checkout/RequestType;->cacheKeyName:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/solovyev/android/checkout/RequestType;
    .locals 1

    .line 27
    const-class v0, Lorg/solovyev/android/checkout/RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/solovyev/android/checkout/RequestType;

    return-object p0
.end method

.method public static values()[Lorg/solovyev/android/checkout/RequestType;
    .locals 1

    .line 27
    sget-object v0, Lorg/solovyev/android/checkout/RequestType;->$VALUES:[Lorg/solovyev/android/checkout/RequestType;

    invoke-virtual {v0}, [Lorg/solovyev/android/checkout/RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/solovyev/android/checkout/RequestType;

    return-object v0
.end method


# virtual methods
.method getCacheKey(Ljava/lang/String;)Lorg/solovyev/android/checkout/Cache$Key;
    .locals 2

    .line 52
    invoke-virtual {p0}, Lorg/solovyev/android/checkout/RequestType;->getCacheKeyType()I

    move-result v0

    .line 53
    new-instance v1, Lorg/solovyev/android/checkout/Cache$Key;

    invoke-direct {v1, v0, p1}, Lorg/solovyev/android/checkout/Cache$Key;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method getCacheKeyType()I
    .locals 1

    .line 57
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method
