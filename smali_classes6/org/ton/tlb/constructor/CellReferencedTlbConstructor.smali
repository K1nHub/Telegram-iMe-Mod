.class final Lorg/ton/tlb/constructor/CellReferencedTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "CellTlbConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCellTlbConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CellTlbConstructor.kt\norg/ton/tlb/constructor/CellReferencedTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,49:1\n131#2:50\n139#2,3:51\n142#2,3:57\n132#2:60\n59#3,3:54\n52#3:63\n86#4:61\n89#4:62\n*S KotlinDebug\n*F\n+ 1 CellTlbConstructor.kt\norg/ton/tlb/constructor/CellReferencedTlbConstructor\n*L\n35#1:50\n36#1:51,3\n36#1:57,3\n35#1:60\n37#1:54,3\n45#1:63\n43#1:61\n44#1:62\n*E\n"
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


# direct methods
.method public constructor <init>(Lorg/ton/tlb/TlbCodec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v0}, Lorg/ton/bitstring/BitString$Companion;->empty()Lorg/ton/bitstring/BitString;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    .line 31
    iput-object p1, p0, Lorg/ton/tlb/constructor/CellReferencedTlbConstructor;->codec:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")TT;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    invoke-interface {p1}, Lorg/ton/cell/Cell;->beginParse()Lorg/ton/cell/CellSlice;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lorg/ton/tlb/constructor/CellReferencedTlbConstructor;->codec:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    invoke-virtual {v0}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lorg/ton/tlb/constructor/CellReferencedTlbConstructor;->codec:Lorg/ton/tlb/TlbCodec;

    .line 60
    invoke-interface {v1, v0, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 142
    invoke-interface {v0}, Lorg/ton/cell/CellBuilder;->endCell()Lorg/ton/cell/Cell;

    move-result-object p2

    .line 143
    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
