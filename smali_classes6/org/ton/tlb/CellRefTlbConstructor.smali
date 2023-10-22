.class final Lorg/ton/tlb/CellRefTlbConstructor;
.super Ljava/lang/Object;
.source "CellRef.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/tlb/CellRef<",
        "+TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCellRef.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CellRef.kt\norg/ton/tlb/CellRefTlbConstructor\n+ 2 CellRef.kt\norg/ton/tlb/CellRefKt\n*L\n1#1,112:1\n14#2:113\n*S KotlinDebug\n*F\n+ 1 CellRef.kt\norg/ton/tlb/CellRefTlbConstructor\n*L\n101#1:113\n*E\n"
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/ton/tlb/CellRefTlbConstructor;->codec:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lorg/ton/tlb/CellRefTlbConstructor;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/tlb/CellRef;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lorg/ton/tlb/CellRefTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/CellRef;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/tlb/CellRef;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/Cell;",
            ")",
            "Lorg/ton/tlb/CellRef<",
            "TT;>;"
        }
    .end annotation

    .line 93
    invoke-static {p0, p1}, Lorg/ton/tlb/TlbCodec$DefaultImpls;->loadTlb(Lorg/ton/tlb/TlbCodec;Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/tlb/CellRef;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/CellRef;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/tlb/CellRef<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    iget-object v0, p0, Lorg/ton/tlb/CellRefTlbConstructor;->codec:Lorg/ton/tlb/TlbCodec;

    .line 14
    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v1, p1, v0}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p2, Lorg/ton/tlb/CellRef;

    invoke-virtual {p0, p1, p2}, Lorg/ton/tlb/CellRefTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/tlb/CellRef;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/tlb/CellRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/tlb/CellRef<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/ton/tlb/CellRefTlbConstructor;->codec:Lorg/ton/tlb/TlbCodec;

    invoke-interface {p2, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
