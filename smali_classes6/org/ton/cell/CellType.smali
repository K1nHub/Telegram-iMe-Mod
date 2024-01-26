.class public final enum Lorg/ton/cell/CellType;
.super Ljava/lang/Enum;
.source "CellType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/cell/CellType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ton/cell/CellType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ton/cell/CellType;

.field public static final Companion:Lorg/ton/cell/CellType$Companion;

.field public static final enum LIBRARY_REFERENCE:Lorg/ton/cell/CellType;

.field public static final enum MERKLE_PROOF:Lorg/ton/cell/CellType;

.field public static final enum MERKLE_UPDATE:Lorg/ton/cell/CellType;

.field public static final enum ORDINARY:Lorg/ton/cell/CellType;

.field public static final enum PRUNED_BRANCH:Lorg/ton/cell/CellType;

.field private static final values$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "[",
            "Lorg/ton/cell/CellType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lorg/ton/cell/CellType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/ton/cell/CellType;

    sget-object v1, Lorg/ton/cell/CellType;->ORDINARY:Lorg/ton/cell/CellType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/cell/CellType;->PRUNED_BRANCH:Lorg/ton/cell/CellType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/cell/CellType;->LIBRARY_REFERENCE:Lorg/ton/cell/CellType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/cell/CellType;->MERKLE_PROOF:Lorg/ton/cell/CellType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/cell/CellType;->MERKLE_UPDATE:Lorg/ton/cell/CellType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lorg/ton/cell/CellType;

    const-string v1, "ORDINARY"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/ton/cell/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/ton/cell/CellType;->ORDINARY:Lorg/ton/cell/CellType;

    .line 27
    new-instance v0, Lorg/ton/cell/CellType;

    const-string v1, "PRUNED_BRANCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/ton/cell/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/ton/cell/CellType;->PRUNED_BRANCH:Lorg/ton/cell/CellType;

    .line 39
    new-instance v0, Lorg/ton/cell/CellType;

    const-string v1, "LIBRARY_REFERENCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/ton/cell/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/ton/cell/CellType;->LIBRARY_REFERENCE:Lorg/ton/cell/CellType;

    .line 55
    new-instance v0, Lorg/ton/cell/CellType;

    const-string v1, "MERKLE_PROOF"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/ton/cell/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/ton/cell/CellType;->MERKLE_PROOF:Lorg/ton/cell/CellType;

    .line 68
    new-instance v0, Lorg/ton/cell/CellType;

    const-string v1, "MERKLE_UPDATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lorg/ton/cell/CellType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/ton/cell/CellType;->MERKLE_UPDATE:Lorg/ton/cell/CellType;

    invoke-static {}, Lorg/ton/cell/CellType;->$values()[Lorg/ton/cell/CellType;

    move-result-object v0

    sput-object v0, Lorg/ton/cell/CellType;->$VALUES:[Lorg/ton/cell/CellType;

    new-instance v0, Lorg/ton/cell/CellType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/cell/CellType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/cell/CellType;->Companion:Lorg/ton/cell/CellType$Companion;

    .line 75
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lorg/ton/cell/CellType$Companion$values$2;->INSTANCE:Lorg/ton/cell/CellType$Companion$values$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ton/cell/CellType;->values$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput p3, p0, Lorg/ton/cell/CellType;->value:I

    return-void
.end method

.method public static final synthetic access$getValues$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 5
    sget-object v0, Lorg/ton/cell/CellType;->values$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final get(I)Lorg/ton/cell/CellType;
    .locals 1

    sget-object v0, Lorg/ton/cell/CellType;->Companion:Lorg/ton/cell/CellType$Companion;

    invoke-virtual {v0, p0}, Lorg/ton/cell/CellType$Companion;->get(I)Lorg/ton/cell/CellType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ton/cell/CellType;
    .locals 1

    const-class v0, Lorg/ton/cell/CellType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ton/cell/CellType;

    return-object p0
.end method

.method public static values()[Lorg/ton/cell/CellType;
    .locals 1

    sget-object v0, Lorg/ton/cell/CellType;->$VALUES:[Lorg/ton/cell/CellType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ton/cell/CellType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 6
    iget v0, p0, Lorg/ton/cell/CellType;->value:I

    return v0
.end method

.method public final isExotic()Z
    .locals 1

    .line 70
    sget-object v0, Lorg/ton/cell/CellType;->ORDINARY:Lorg/ton/cell/CellType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isMerkle()Z
    .locals 1

    .line 71
    sget-object v0, Lorg/ton/cell/CellType;->MERKLE_PROOF:Lorg/ton/cell/CellType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/ton/cell/CellType;->MERKLE_UPDATE:Lorg/ton/cell/CellType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isPruned()Z
    .locals 1

    .line 72
    sget-object v0, Lorg/ton/cell/CellType;->PRUNED_BRANCH:Lorg/ton/cell/CellType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
