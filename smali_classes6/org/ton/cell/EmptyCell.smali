.class public final Lorg/ton/cell/EmptyCell;
.super Ljava/lang/Object;
.source "EmptyCell.kt"

# interfaces
.implements Lorg/ton/cell/Cell;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmptyCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmptyCell.kt\norg/ton/cell/EmptyCell\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n+ 3 CellDescriptor.kt\norg/ton/cell/CellDescriptorKt\n*L\n1#1,29:1\n9#2,2:30\n117#3:32\n*S KotlinDebug\n*F\n+ 1 EmptyCell.kt\norg/ton/cell/EmptyCell\n*L\n7#1:30,2\n13#1:32\n*E\n"
.end annotation


# static fields
.field private static final EMPTY_CELL_HASH:Lorg/ton/bitstring/BitString;

.field public static final INSTANCE:Lorg/ton/cell/EmptyCell;

.field private static final bits:Lorg/ton/bitstring/BitString;

.field private static final descriptor:Lorg/ton/cell/CellDescriptor;

.field private static final refs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/cell/EmptyCell;

    invoke-direct {v0}, Lorg/ton/cell/EmptyCell;-><init>()V

    sput-object v0, Lorg/ton/cell/EmptyCell;->INSTANCE:Lorg/ton/cell/EmptyCell;

    const-string v0, "96a296d224f285c67bee93c30f8a309157f0daa35dc5b87e410b78630a09cfc7"

    .line 8
    invoke-static {v0}, Lorg/ton/crypto/HexKt;->hex(Ljava/lang/String;)[B

    move-result-object v0

    .line 9
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    .line 10
    sget-object v2, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v2, v0, v1}, Lorg/ton/bitstring/BitString$Companion;->of([BI)Lorg/ton/bitstring/BitString;

    move-result-object v0

    .line 7
    sput-object v0, Lorg/ton/cell/EmptyCell;->EMPTY_CELL_HASH:Lorg/ton/bitstring/BitString;

    .line 11
    invoke-virtual {v2}, Lorg/ton/bitstring/BitString$Companion;->empty()Lorg/ton/bitstring/BitString;

    move-result-object v0

    sput-object v0, Lorg/ton/cell/EmptyCell;->bits:Lorg/ton/bitstring/BitString;

    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/ton/cell/EmptyCell;->refs:Ljava/util/List;

    .line 117
    sget-object v0, Lorg/ton/cell/CellDescriptor;->Companion:Lorg/ton/cell/CellDescriptor$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/ton/cell/CellDescriptor$Companion;->fromBytes(BB)Lorg/ton/cell/CellDescriptor;

    move-result-object v0

    .line 13
    sput-object v0, Lorg/ton/cell/EmptyCell;->descriptor:Lorg/ton/cell/CellDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginParse()Lorg/ton/cell/CellSlice;
    .locals 1

    .line 6
    invoke-static {p0}, Lorg/ton/cell/Cell$DefaultImpls;->beginParse(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellSlice;

    move-result-object v0

    return-object v0
.end method

.method public depth(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 25
    :cond_0
    instance-of v0, p1, Lorg/ton/cell/Cell;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 26
    :cond_1
    invoke-virtual {p0}, Lorg/ton/cell/EmptyCell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object v0

    check-cast p1, Lorg/ton/cell/Cell;

    invoke-interface {p1}, Lorg/ton/cell/Cell;->getDescriptor()Lorg/ton/cell/CellDescriptor;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBits()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/cell/EmptyCell;->bits:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public getDescriptor()Lorg/ton/cell/CellDescriptor;
    .locals 1

    .line 13
    sget-object v0, Lorg/ton/cell/EmptyCell;->descriptor:Lorg/ton/cell/CellDescriptor;

    return-object v0
.end method

.method public getLevelMask-Kat384U()I
    .locals 1

    .line 6
    invoke-static {p0}, Lorg/ton/cell/Cell$DefaultImpls;->getLevelMask-Kat384U(Lorg/ton/cell/Cell;)I

    move-result v0

    return v0
.end method

.method public getRefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation

    .line 12
    sget-object v0, Lorg/ton/cell/EmptyCell;->refs:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lorg/ton/cell/CellType;
    .locals 1

    .line 6
    invoke-static {p0}, Lorg/ton/cell/Cell$DefaultImpls;->getType(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellType;

    move-result-object v0

    return-object v0
.end method

.method public hash(I)Lorg/ton/bitstring/BitString;
    .locals 0

    .line 15
    sget-object p1, Lorg/ton/cell/EmptyCell;->EMPTY_CELL_HASH:Lorg/ton/bitstring/BitString;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "x{}"

    return-object v0
.end method

.method public virtualize(I)Lorg/ton/cell/Cell;
    .locals 0

    return-object p0
.end method
