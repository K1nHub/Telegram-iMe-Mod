.class final Lorg/ton/hashmap/RootHashMapETlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "HmeRoot.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/RootHashMapETlbConstructor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/hashmap/HmeRoot<",
        "TX;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHmeRoot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HmeRoot.kt\norg/ton/hashmap/RootHashMapETlbConstructor\n+ 2 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 3 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,69:1\n59#2,3:70\n52#2:73\n13#3:74\n*S KotlinDebug\n*F\n+ 1 HmeRoot.kt\norg/ton/hashmap/RootHashMapETlbConstructor\n*L\n55#1:70,3\n61#1:73\n66#1:74\n*E\n"
.end annotation


# static fields
.field private static final ID:Lorg/ton/bitstring/BitString;


# instance fields
.field private final cellRef:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HmEdge<",
            "TX;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/hashmap/RootHashMapETlbConstructor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/hashmap/RootHashMapETlbConstructor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    .line 13
    sget-object v2, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/ton/bitstring/BitString$Companion;->of([Z)Lorg/ton/bitstring/BitString;

    move-result-object v0

    .line 66
    sput-object v0, Lorg/ton/hashmap/RootHashMapETlbConstructor;->ID:Lorg/ton/bitstring/BitString;

    return-void
.end method

.method public constructor <init>(ILorg/ton/tlb/TlbCodec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lorg/ton/hashmap/RootHashMapETlbConstructor;->ID:Lorg/ton/bitstring/BitString;

    const-string v1, "hme_root$1 {n:#} {X:Type} root:^(Hashmap n X) = HashmapE n X;"

    .line 45
    invoke-direct {p0, v1, v0}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    .line 49
    sget-object v0, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v1, Lorg/ton/hashmap/HmEdge;->Companion:Lorg/ton/hashmap/HmEdge$Companion;

    invoke-virtual {v1, p1, p2}, Lorg/ton/hashmap/HmEdge$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/hashmap/RootHashMapETlbConstructor;->cellRef:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/ton/hashmap/RootHashMapETlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HmeRoot;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HmeRoot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/hashmap/HmeRoot<",
            "TX;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lorg/ton/hashmap/RootHashMapETlbConstructor;->cellRef:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 61
    check-cast p1, Lorg/ton/tlb/CellRef;

    .line 62
    new-instance v0, Lorg/ton/hashmap/HmeRoot;

    invoke-direct {v0, p1}, Lorg/ton/hashmap/HmeRoot;-><init>(Lorg/ton/tlb/CellRef;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p2, Lorg/ton/hashmap/HmeRoot;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/RootHashMapETlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmeRoot;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmeRoot;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/hashmap/HmeRoot<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lorg/ton/hashmap/RootHashMapETlbConstructor;->cellRef:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/hashmap/HmeRoot;->getRoot()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
