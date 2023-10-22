.class public final Lorg/ton/cell/CellType$Companion;
.super Ljava/lang/Object;
.source "CellType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/cell/CellType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/cell/CellType$Companion;-><init>()V

    return-void
.end method

.method private final getValues()[Lorg/ton/cell/CellType;
    .locals 1

    .line 75
    invoke-static {}, Lorg/ton/cell/CellType;->access$getValues$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ton/cell/CellType;

    return-object v0
.end method


# virtual methods
.method public final get(I)Lorg/ton/cell/CellType;
    .locals 1

    .line 80
    invoke-direct {p0}, Lorg/ton/cell/CellType$Companion;->getValues()[Lorg/ton/cell/CellType;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method
