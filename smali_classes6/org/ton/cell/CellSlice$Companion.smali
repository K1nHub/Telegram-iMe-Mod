.class public final Lorg/ton/cell/CellSlice$Companion;
.super Ljava/lang/Object;
.source "CellSlice.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/cell/CellSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/cell/CellSlice$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/cell/CellSlice$Companion;

    invoke-direct {v0}, Lorg/ton/cell/CellSlice$Companion;-><init>()V

    sput-object v0, Lorg/ton/cell/CellSlice$Companion;->$$INSTANCE:Lorg/ton/cell/CellSlice$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final beginParse(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellSlice;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {p1}, Lorg/ton/cell/Cell;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1}, Lorg/ton/cell/Cell;->getRefs()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/ton/cell/CellSlice$Companion;->of(Lorg/ton/bitstring/BitString;Ljava/util/List;)Lorg/ton/cell/CellSlice;

    move-result-object p1

    return-object p1
.end method

.method public final of(Lorg/ton/bitstring/BitString;Ljava/util/List;)Lorg/ton/cell/CellSlice;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "Ljava/util/List<",
            "+",
            "Lorg/ton/cell/Cell;",
            ">;)",
            "Lorg/ton/cell/CellSlice;"
        }
    .end annotation

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    instance-of v0, p1, Lorg/ton/bitstring/ByteBackedBitString;

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lorg/ton/cell/CellSliceByteBackedBitString;

    check-cast p1, Lorg/ton/bitstring/ByteBackedBitString;

    invoke-direct {v0, p1, p2}, Lorg/ton/cell/CellSliceByteBackedBitString;-><init>(Lorg/ton/bitstring/ByteBackedBitString;Ljava/util/List;)V

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Lorg/ton/cell/CellSliceImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/ton/cell/CellSliceImpl;-><init>(Lorg/ton/bitstring/BitString;Ljava/util/List;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object v0
.end method
