.class final Lorg/ton/tlb/CellRefImpl;
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
    value = "SMAP\nCellRef.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CellRef.kt\norg/ton/tlb/CellRefImpl\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,112:1\n82#2,3:113\n*S KotlinDebug\n*F\n+ 1 CellRef.kt\norg/ton/tlb/CellRefImpl\n*L\n67#1:113,3\n*E\n"
.end annotation


# instance fields
.field private final cell:Lorg/ton/cell/Cell;

.field private final codec:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final value$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/Cell;",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/ton/tlb/CellRefImpl;->cell:Lorg/ton/cell/Cell;

    .line 54
    iput-object p2, p0, Lorg/ton/tlb/CellRefImpl;->codec:Lorg/ton/tlb/TlbCodec;

    .line 56
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lorg/ton/tlb/CellRefImpl$value$2;

    invoke-direct {p2, p0}, Lorg/ton/tlb/CellRefImpl$value$2;-><init>(Lorg/ton/tlb/CellRefImpl;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/tlb/CellRefImpl;->value$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getCell()Lorg/ton/cell/Cell;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/ton/tlb/CellRefImpl;->cell:Lorg/ton/cell/Cell;

    return-object v0
.end method

.method public final getCodec()Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/ton/tlb/CellRefImpl;->codec:Lorg/ton/tlb/TlbCodec;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/ton/tlb/CellRefImpl;->value$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 52
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

    .line 52
    invoke-static {p0, p1}, Lorg/ton/tlb/CellRef$DefaultImpls;->hash(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/TlbCodec;)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lorg/ton/tlb/CellRefImpl;->cell:Lorg/ton/cell/Cell;

    invoke-interface {v0}, Lorg/ton/cell/Cell;->getType()Lorg/ton/cell/CellType;

    move-result-object v0

    sget-object v1, Lorg/ton/cell/CellType;->PRUNED_BRANCH:Lorg/ton/cell/CellType;

    if-ne v0, v1, :cond_0

    const-string v0, "!pruned_branch"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lorg/ton/tlb/CellRefImpl;->cell:Lorg/ton/cell/Cell;

    invoke-interface {v1}, Lorg/ton/cell/Cell;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v1

    const-string v2, "cell"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-static {v0, v2, v1, v2}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {p0, p1}, Lorg/ton/tlb/CellRef$DefaultImpls;->print(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)",
            "Lorg/ton/cell/Cell;"
        }
    .end annotation

    .line 62
    iget-object p1, p0, Lorg/ton/tlb/CellRefImpl;->cell:Lorg/ton/cell/Cell;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellRef("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/tlb/CellRefImpl;->cell:Lorg/ton/cell/Cell;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
