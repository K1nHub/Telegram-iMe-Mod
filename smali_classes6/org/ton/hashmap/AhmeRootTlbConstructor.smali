.class final Lorg/ton/hashmap/AhmeRootTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "HashmapAugE.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/hashmap/HashmapAugE$AhmeRoot<",
        "TX;TY;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHashmapAugE.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HashmapAugE.kt\norg/ton/hashmap/AhmeRootTlbConstructor\n+ 2 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,157:1\n110#2:158\n14#2:159\n106#2,2:161\n1#3:160\n*S KotlinDebug\n*F\n+ 1 HashmapAugE.kt\norg/ton/hashmap/AhmeRootTlbConstructor\n*L\n146#1:158\n146#1:159\n153#1:161,2\n*E\n"
.end annotation


# instance fields
.field private final hashmapAug:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;"
        }
    .end annotation
.end field

.field private final n:I

.field private final y:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;)V"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ahme_root$1 {n:#} {X:Type} {Y:Type} root:^(HashmapAug n X Y) extra:Y = HashmapAugE n X Y"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 140
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    iput p1, p0, Lorg/ton/hashmap/AhmeRootTlbConstructor;->n:I

    .line 139
    iput-object p3, p0, Lorg/ton/hashmap/AhmeRootTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    .line 143
    sget-object v0, Lorg/ton/hashmap/HashmapAug;->Companion:Lorg/ton/hashmap/HashmapAug$Companion;

    invoke-virtual {v0, p1, p2, p3}, Lorg/ton/hashmap/HashmapAug$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/hashmap/AhmeRootTlbConstructor;->hashmapAug:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lorg/ton/hashmap/AhmeRootTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAugE$AhmeRoot;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAugE$AhmeRoot;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/hashmap/HashmapAugE$AhmeRoot<",
            "TX;TY;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lorg/ton/hashmap/AhmeRootTlbConstructor;->hashmapAug:Lorg/ton/tlb/TlbCodec;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v1

    .line 14
    sget-object v2, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v2, v1, v0}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lorg/ton/hashmap/AhmeRootTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 148
    new-instance v1, Lorg/ton/hashmap/AhmeRootImpl;

    iget v2, p0, Lorg/ton/hashmap/AhmeRootTlbConstructor;->n:I

    invoke-direct {v1, v2, v0, p1}, Lorg/ton/hashmap/AhmeRootImpl;-><init>(ILorg/ton/tlb/CellRef;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p2, Lorg/ton/hashmap/HashmapAugE$AhmeRoot;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/AhmeRootTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAugE$AhmeRoot;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAugE$AhmeRoot;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/hashmap/HashmapAugE$AhmeRoot<",
            "TX;TY;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-interface {p2}, Lorg/ton/hashmap/HashmapAugE$AhmeRoot;->getN()I

    move-result v0

    iget v1, p0, Lorg/ton/hashmap/AhmeRootTlbConstructor;->n:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/ton/hashmap/AhmeRootTlbConstructor;->hashmapAug:Lorg/ton/tlb/TlbCodec;

    invoke-interface {p2}, Lorg/ton/hashmap/HashmapAugE$AhmeRoot;->getRoot()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 154
    iget-object v0, p0, Lorg/ton/hashmap/AhmeRootTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    invoke-interface {p2}, Lorg/ton/hashmap/HashmapAugE$AhmeRoot;->getExtra()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void

    .line 152
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "n mismatch, expected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/ton/hashmap/AhmeRootTlbConstructor;->n:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actual: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/ton/hashmap/HashmapAugE$AhmeRoot;->getN()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
