.class final Lorg/ton/block/RightTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "Either.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/RightTlbConstructor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/Either$Right<",
        "TX;TY;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEither.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Either.kt\norg/ton/block/RightTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n+ 5 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,159:1\n131#2:160\n132#2:164\n59#3,3:161\n52#3:166\n86#4:165\n13#5:167\n*S KotlinDebug\n*F\n+ 1 Either.kt\norg/ton/block/RightTlbConstructor\n*L\n144#1:160\n144#1:164\n145#1:161,3\n151#1:166\n150#1:165\n156#1:167\n*E\n"
.end annotation


# static fields
.field private static final ID:Lorg/ton/bitstring/BitString;


# instance fields
.field private final y:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/RightTlbConstructor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/RightTlbConstructor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 156
    sput-object v0, Lorg/ton/block/RightTlbConstructor;->ID:Lorg/ton/bitstring/BitString;

    return-void
.end method

.method public constructor <init>(Lorg/ton/tlb/TlbCodec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;)V"
        }
    .end annotation

    const-string v0, "y"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lorg/ton/block/RightTlbConstructor;->ID:Lorg/ton/bitstring/BitString;

    const-string v1, "right$1 {X:Type} {Y:Type} value:Y = Either X Y;"

    .line 137
    invoke-direct {p0, v1, v0}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    iput-object p1, p0, Lorg/ton/block/RightTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lorg/ton/block/RightTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Either$Right;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Either$Right;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/block/Either$Right<",
            "TX;TY;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lorg/ton/block/RightTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 152
    new-instance v0, Lorg/ton/block/Either$Right;

    invoke-direct {v0, p1}, Lorg/ton/block/Either$Right;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p2, Lorg/ton/block/Either$Right;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/RightTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Either$Right;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Either$Right;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/block/Either$Right<",
            "TX;TY;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lorg/ton/block/RightTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/Either$Right;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
