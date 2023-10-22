.class final Lorg/ton/tlb/CellRefValue;
.super Ljava/lang/Object;
.source "CellRef.kt"

# interfaces
.implements Lorg/ton/tlb/CellRef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/CellRef<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCellRef.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CellRef.kt\norg/ton/tlb/CellRefValue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"
.end annotation


# instance fields
.field private final codec:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/ton/tlb/TlbCodec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/ton/tlb/CellRefValue;->value:Ljava/lang/Object;

    .line 80
    iput-object p2, p0, Lorg/ton/tlb/CellRefValue;->codec:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/ton/tlb/CellRefValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 78
    invoke-static {p0}, Lorg/ton/tlb/CellRef$DefaultImpls;->hash(Lorg/ton/tlb/CellRef;)Lorg/ton/bitstring/BitString;

    move-result-object v0

    return-object v0
.end method

.method public hash(Lorg/ton/tlb/TlbCodec;)Lorg/ton/bitstring/BitString;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)",
            "Lorg/ton/bitstring/BitString;"
        }
    .end annotation

    .line 78
    invoke-static {p0, p1}, Lorg/ton/tlb/CellRef$DefaultImpls;->hash(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/TlbCodec;)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 0

    .line 78
    invoke-static {p0, p1}, Lorg/ton/tlb/CellRef$DefaultImpls;->print(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p1

    return-object p1
.end method

.method public toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)",
            "Lorg/ton/cell/Cell;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lorg/ton/tlb/CellRefValue;->codec:Lorg/ton/tlb/TlbCodec;

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 85
    sget-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    new-instance v1, Lorg/ton/tlb/CellRefValue$toCell$2;

    invoke-direct {v1, p1, p0}, Lorg/ton/tlb/CellRefValue$toCell$2;-><init>(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/CellRefValue;)V

    invoke-virtual {v0, v1}, Lorg/ton/cell/CellBuilder$Companion;->createCell(Lkotlin/jvm/functions/Function1;)Lorg/ton/cell/Cell;

    move-result-object p1

    return-object p1

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Codec is not specified"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellRef("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/tlb/CellRefValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
