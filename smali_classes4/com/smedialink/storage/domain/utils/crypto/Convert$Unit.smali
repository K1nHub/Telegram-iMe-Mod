.class public final enum Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;
.super Ljava/lang/Enum;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/utils/crypto/Convert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

.field public static final enum ETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

.field public static final enum FINNEY:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

.field public static final enum GETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

.field public static final enum GWEI:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

.field public static final enum KETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

.field public static final enum KWEI:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

.field public static final enum METHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

.field public static final enum MWEI:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

.field public static final enum SZABO:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

.field public static final enum WEI:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

.field public static final enum WEI8:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;


# instance fields
.field private name:Ljava/lang/String;

.field private weiFactor:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 38
    new-instance v0, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    const-string v1, "WEI"

    const/4 v2, 0x0

    const-string v3, "wei"

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->WEI:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 39
    new-instance v1, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    const-string v3, "KWEI"

    const/4 v4, 0x1

    const-string v5, "kwei"

    const/4 v6, 0x3

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->KWEI:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 40
    new-instance v3, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    const-string v5, "MWEI"

    const/4 v7, 0x2

    const-string v8, "mwei"

    const/4 v9, 0x6

    invoke-direct {v3, v5, v7, v8, v9}, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->MWEI:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 41
    new-instance v5, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    const-string v8, "WEI8"

    const-string v10, "wei8"

    const/16 v11, 0x8

    invoke-direct {v5, v8, v6, v10, v11}, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->WEI8:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 42
    new-instance v8, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    const-string v10, "GWEI"

    const/4 v12, 0x4

    const-string v13, "gwei"

    const/16 v14, 0x9

    invoke-direct {v8, v10, v12, v13, v14}, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->GWEI:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 43
    new-instance v10, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    const-string v13, "SZABO"

    const/4 v15, 0x5

    const-string v12, "szabo"

    const/16 v6, 0xc

    invoke-direct {v10, v13, v15, v12, v6}, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->SZABO:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 44
    new-instance v6, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    const-string v12, "FINNEY"

    const-string v13, "finney"

    const/16 v15, 0xf

    invoke-direct {v6, v12, v9, v13, v15}, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->FINNEY:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 45
    new-instance v12, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    const-string v13, "ETHER"

    const/4 v15, 0x7

    const-string v9, "ether"

    const/16 v7, 0x12

    invoke-direct {v12, v13, v15, v9, v7}, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 46
    new-instance v7, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    const-string v9, "KETHER"

    const-string v13, "kether"

    const/16 v15, 0x15

    invoke-direct {v7, v9, v11, v13, v15}, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->KETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 47
    new-instance v9, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    const-string v13, "METHER"

    const-string v15, "mether"

    const/16 v11, 0x18

    invoke-direct {v9, v13, v14, v15, v11}, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->METHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 48
    new-instance v11, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    const-string v13, "GETHER"

    const/16 v15, 0xa

    const-string v14, "gether"

    const/16 v4, 0x1b

    invoke-direct {v11, v13, v15, v14, v4}, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->GETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    const/16 v4, 0xb

    new-array v4, v4, [Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v8, v4, v0

    const/4 v0, 0x5

    aput-object v10, v4, v0

    const/4 v0, 0x6

    aput-object v6, v4, v0

    const/4 v0, 0x7

    aput-object v12, v4, v0

    const/16 v0, 0x8

    aput-object v7, v4, v0

    const/16 v0, 0x9

    aput-object v9, v4, v0

    aput-object v11, v4, v15

    .line 37
    sput-object v4, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->$VALUES:[Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "name",
            "factor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->name:Ljava/lang/String;

    .line 55
    sget-object p1, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    invoke-virtual {p1, p4}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->weiFactor:Ljava/math/BigDecimal;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 69
    invoke-static {}, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->values()[Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 70
    iget-object v4, v3, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {p0}, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 37
    const-class v0, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;
    .locals 1

    .line 37
    sget-object v0, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->$VALUES:[Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    invoke-virtual {v0}, [Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    return-object v0
.end method


# virtual methods
.method public getWeiFactor()Ljava/math/BigDecimal;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->weiFactor:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->name:Ljava/lang/String;

    return-object v0
.end method
