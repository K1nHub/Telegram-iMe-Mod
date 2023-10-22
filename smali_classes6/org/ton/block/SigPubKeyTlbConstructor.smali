.class final Lorg/ton/block/SigPubKeyTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "SigPubKey.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/SigPubKey;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSigPubKey.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SigPubKey.kt\norg/ton/block/SigPubKeyTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,41:1\n131#2,2:42\n86#3:44\n*S KotlinDebug\n*F\n+ 1 SigPubKey.kt\norg/ton/block/SigPubKeyTlbConstructor\n*L\n30#1:42,2\n36#1:44\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/SigPubKeyTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/SigPubKeyTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/SigPubKeyTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/SigPubKeyTlbConstructor;->INSTANCE:Lorg/ton/block/SigPubKeyTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "ed25519_pubkey#8e81278a pubkey:bits256 = SigPubKey;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 24
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/ton/block/SigPubKeyTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/SigPubKey;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/SigPubKey;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x100

    .line 37
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object p1

    .line 38
    new-instance v0, Lorg/ton/block/SigPubKey;

    invoke-direct {v0, p1}, Lorg/ton/block/SigPubKey;-><init>(Lorg/ton/bitstring/BitString;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lorg/ton/block/SigPubKey;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/SigPubKeyTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/SigPubKey;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/SigPubKey;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lorg/ton/block/SigPubKey;->getPubkey()Lorg/ton/bitstring/BitString;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
