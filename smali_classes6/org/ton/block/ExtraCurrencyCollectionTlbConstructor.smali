.class final Lorg/ton/block/ExtraCurrencyCollectionTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ExtraCurrencyCollection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ExtraCurrencyCollection;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtraCurrencyCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtraCurrencyCollection.kt\norg/ton/block/ExtraCurrencyCollectionTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,49:1\n131#2:50\n132#2:54\n59#3,3:51\n52#3:56\n86#4:55\n*S KotlinDebug\n*F\n+ 1 ExtraCurrencyCollection.kt\norg/ton/block/ExtraCurrencyCollectionTlbConstructor\n*L\n38#1:50\n38#1:54\n39#1:51,3\n45#1:56\n44#1:55\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ExtraCurrencyCollectionTlbConstructor;

.field private static final hashMapE32Codec:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/VarUInteger;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/ExtraCurrencyCollectionTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ExtraCurrencyCollectionTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ExtraCurrencyCollectionTlbConstructor;->INSTANCE:Lorg/ton/block/ExtraCurrencyCollectionTlbConstructor;

    .line 33
    sget-object v0, Lorg/ton/hashmap/HashMapE;->Companion:Lorg/ton/hashmap/HashMapE$Companion;

    sget-object v1, Lorg/ton/block/VarUInteger;->Companion:Lorg/ton/block/VarUInteger$Companion;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lorg/ton/block/VarUInteger$Companion;->tlbCodec(I)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/ton/hashmap/HashMapE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/ExtraCurrencyCollectionTlbConstructor;->hashMapE32Codec:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "extra_currencies$_ dict:(HashmapE 32 (VarUInteger 32)) = ExtraCurrencyCollection;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 30
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/ton/block/ExtraCurrencyCollectionTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ExtraCurrencyCollection;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ExtraCurrencyCollection;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lorg/ton/block/ExtraCurrencyCollectionTlbConstructor;->hashMapE32Codec:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 45
    check-cast p1, Lorg/ton/hashmap/HashMapE;

    .line 46
    new-instance v0, Lorg/ton/block/ExtraCurrencyCollection;

    invoke-direct {v0, p1}, Lorg/ton/block/ExtraCurrencyCollection;-><init>(Lorg/ton/hashmap/HashMapE;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lorg/ton/block/ExtraCurrencyCollection;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ExtraCurrencyCollectionTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ExtraCurrencyCollection;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ExtraCurrencyCollection;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lorg/ton/block/ExtraCurrencyCollectionTlbConstructor;->hashMapE32Codec:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/ExtraCurrencyCollection;->dict()Lorg/ton/hashmap/HashMapE;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
