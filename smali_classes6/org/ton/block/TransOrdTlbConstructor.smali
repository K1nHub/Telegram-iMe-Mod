.class final Lorg/ton/block/TransOrdTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TransOrd.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TransOrd;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransOrd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransOrd.kt\norg/ton/block/TransOrdTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,89:1\n131#2:90\n132#2:106\n59#3,3:91\n59#3,3:94\n59#3,3:97\n59#3,3:100\n59#3,3:103\n52#3:108\n52#3:109\n52#3:110\n52#3:111\n52#3:112\n86#4:107\n*S KotlinDebug\n*F\n+ 1 TransOrd.kt\norg/ton/block/TransOrdTlbConstructor\n*L\n62#1:90\n62#1:106\n64#1:91,3\n65#1:94,3\n66#1:97,3\n67#1:100,3\n69#1:103,3\n77#1:108\n78#1:109\n79#1:110\n80#1:111\n82#1:112\n75#1:107\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TransOrdTlbConstructor;

.field private static final maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TrActionPhase;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final maybeTrBouncePhase:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TrBouncePhase;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final maybeTrCreditPhase:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TrCreditPhase;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final maybeTrStoragePhase:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TrStoragePhase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/TransOrdTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TransOrdTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TransOrdTlbConstructor;->INSTANCE:Lorg/ton/block/TransOrdTlbConstructor;

    .line 54
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/block/TrStoragePhase;->Companion:Lorg/ton/block/TrStoragePhase$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    sput-object v1, Lorg/ton/block/TransOrdTlbConstructor;->maybeTrStoragePhase:Lorg/ton/tlb/TlbCodec;

    .line 55
    sget-object v1, Lorg/ton/block/TrCreditPhase;->Companion:Lorg/ton/block/TrCreditPhase$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    sput-object v1, Lorg/ton/block/TransOrdTlbConstructor;->maybeTrCreditPhase:Lorg/ton/tlb/TlbCodec;

    .line 56
    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v2, Lorg/ton/block/TrActionPhase;->Companion:Lorg/ton/block/TrActionPhase$Companion;

    invoke-virtual {v1, v2}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    sput-object v1, Lorg/ton/block/TransOrdTlbConstructor;->maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;

    .line 57
    sget-object v1, Lorg/ton/block/TrBouncePhase;->Companion:Lorg/ton/block/TrBouncePhase$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/TransOrdTlbConstructor;->maybeTrBouncePhase:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "trans_ord$0000 credit_first:Bool storage_ph:(Maybe TrStoragePhase) credit_ph:(Maybe TrCreditPhase) compute_ph:TrComputePhase action:(Maybe ^TrActionPhase) aborted:Bool bounce:(Maybe TrBouncePhase) destroyed:Bool = TransactionDescr;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 43
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lorg/ton/block/TransOrdTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransOrd;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransOrd;
    .locals 10

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v2

    .line 77
    sget-object v0, Lorg/ton/block/TransOrdTlbConstructor;->maybeTrStoragePhase:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    move-object v3, v0

    check-cast v3, Lorg/ton/block/Maybe;

    .line 78
    sget-object v0, Lorg/ton/block/TransOrdTlbConstructor;->maybeTrCreditPhase:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    move-object v4, v0

    check-cast v4, Lorg/ton/block/Maybe;

    .line 79
    sget-object v0, Lorg/ton/block/TrComputePhase;->Companion:Lorg/ton/block/TrComputePhase$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 79
    move-object v5, v0

    check-cast v5, Lorg/ton/block/TrComputePhase;

    .line 80
    sget-object v0, Lorg/ton/block/TransOrdTlbConstructor;->maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    move-object v6, v0

    check-cast v6, Lorg/ton/block/Maybe;

    .line 81
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v7

    .line 82
    sget-object v0, Lorg/ton/block/TransOrdTlbConstructor;->maybeTrBouncePhase:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    move-object v8, v0

    check-cast v8, Lorg/ton/block/Maybe;

    .line 83
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v9

    .line 84
    new-instance p1, Lorg/ton/block/TransOrd;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/ton/block/TransOrd;-><init>(ZLorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/block/TrComputePhase;Lorg/ton/block/Maybe;ZLorg/ton/block/Maybe;Z)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p2, Lorg/ton/block/TransOrd;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TransOrdTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransOrd;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransOrd;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Lorg/ton/block/TransOrd;->getCreditFirst()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 64
    sget-object v0, Lorg/ton/block/TransOrdTlbConstructor;->maybeTrStoragePhase:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TransOrd;->getStoragePh()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 65
    sget-object v0, Lorg/ton/block/TransOrdTlbConstructor;->maybeTrCreditPhase:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TransOrd;->getCreditPh()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 66
    sget-object v0, Lorg/ton/block/TrComputePhase;->Companion:Lorg/ton/block/TrComputePhase$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TransOrd;->getComputePh()Lorg/ton/block/TrComputePhase;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 67
    sget-object v0, Lorg/ton/block/TransOrdTlbConstructor;->maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TransOrd;->getAction()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p2}, Lorg/ton/block/TransOrd;->getAborted()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 69
    sget-object v0, Lorg/ton/block/TransOrdTlbConstructor;->maybeTrBouncePhase:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TransOrd;->getBounce()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p2}, Lorg/ton/block/TransOrd;->getDestroyed()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    return-void
.end method
