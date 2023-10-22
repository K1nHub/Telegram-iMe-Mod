.class final enum Lorg/ton/boc/CachedBagOfCells$Revisit;
.super Ljava/lang/Enum;
.source "CachedBagOfCells.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/boc/CachedBagOfCells;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Revisit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ton/boc/CachedBagOfCells$Revisit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ton/boc/CachedBagOfCells$Revisit;

.field public static final enum ALLOCATE:Lorg/ton/boc/CachedBagOfCells$Revisit;

.field public static final enum PREVISIT:Lorg/ton/boc/CachedBagOfCells$Revisit;

.field public static final enum VISIT:Lorg/ton/boc/CachedBagOfCells$Revisit;


# direct methods
.method private static final synthetic $values()[Lorg/ton/boc/CachedBagOfCells$Revisit;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/ton/boc/CachedBagOfCells$Revisit;

    sget-object v1, Lorg/ton/boc/CachedBagOfCells$Revisit;->PREVISIT:Lorg/ton/boc/CachedBagOfCells$Revisit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/boc/CachedBagOfCells$Revisit;->VISIT:Lorg/ton/boc/CachedBagOfCells$Revisit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/boc/CachedBagOfCells$Revisit;->ALLOCATE:Lorg/ton/boc/CachedBagOfCells$Revisit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 201
    new-instance v0, Lorg/ton/boc/CachedBagOfCells$Revisit;

    const-string v1, "PREVISIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ton/boc/CachedBagOfCells$Revisit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/boc/CachedBagOfCells$Revisit;->PREVISIT:Lorg/ton/boc/CachedBagOfCells$Revisit;

    .line 202
    new-instance v0, Lorg/ton/boc/CachedBagOfCells$Revisit;

    const-string v1, "VISIT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ton/boc/CachedBagOfCells$Revisit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/boc/CachedBagOfCells$Revisit;->VISIT:Lorg/ton/boc/CachedBagOfCells$Revisit;

    .line 203
    new-instance v0, Lorg/ton/boc/CachedBagOfCells$Revisit;

    const-string v1, "ALLOCATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/ton/boc/CachedBagOfCells$Revisit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/boc/CachedBagOfCells$Revisit;->ALLOCATE:Lorg/ton/boc/CachedBagOfCells$Revisit;

    invoke-static {}, Lorg/ton/boc/CachedBagOfCells$Revisit;->$values()[Lorg/ton/boc/CachedBagOfCells$Revisit;

    move-result-object v0

    sput-object v0, Lorg/ton/boc/CachedBagOfCells$Revisit;->$VALUES:[Lorg/ton/boc/CachedBagOfCells$Revisit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ton/boc/CachedBagOfCells$Revisit;
    .locals 1

    const-class v0, Lorg/ton/boc/CachedBagOfCells$Revisit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ton/boc/CachedBagOfCells$Revisit;

    return-object p0
.end method

.method public static values()[Lorg/ton/boc/CachedBagOfCells$Revisit;
    .locals 1

    sget-object v0, Lorg/ton/boc/CachedBagOfCells$Revisit;->$VALUES:[Lorg/ton/boc/CachedBagOfCells$Revisit;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ton/boc/CachedBagOfCells$Revisit;

    return-object v0
.end method
