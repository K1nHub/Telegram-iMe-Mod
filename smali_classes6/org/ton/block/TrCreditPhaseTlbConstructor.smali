.class final Lorg/ton/block/TrCreditPhaseTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TrCreditPhase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TrCreditPhase;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrCreditPhase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrCreditPhase.kt\norg/ton/block/TrCreditPhaseTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,50:1\n131#2:51\n132#2:58\n59#3,3:52\n59#3,3:55\n52#3:60\n52#3:61\n86#4:59\n*S KotlinDebug\n*F\n+ 1 TrCreditPhase.kt\norg/ton/block/TrCreditPhaseTlbConstructor\n*L\n37#1:51\n37#1:58\n38#1:52,3\n39#1:55,3\n45#1:60\n46#1:61\n44#1:59\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TrCreditPhaseTlbConstructor;

.field private static final maybeCoins:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/TrCreditPhaseTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TrCreditPhaseTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TrCreditPhaseTlbConstructor;->INSTANCE:Lorg/ton/block/TrCreditPhaseTlbConstructor;

    .line 32
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/TrCreditPhaseTlbConstructor;->maybeCoins:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "tr_phase_credit$_ due_fees_collected:(Maybe Coins) credit:CurrencyCollection = TrCreditPhase;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 29
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/ton/block/TrCreditPhaseTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrCreditPhase;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrCreditPhase;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lorg/ton/block/TrCreditPhaseTlbConstructor;->maybeCoins:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    check-cast v0, Lorg/ton/block/Maybe;

    .line 46
    sget-object v1, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 46
    check-cast p1, Lorg/ton/block/CurrencyCollection;

    .line 47
    new-instance v1, Lorg/ton/block/TrCreditPhase;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/TrCreditPhase;-><init>(Lorg/ton/block/Maybe;Lorg/ton/block/CurrencyCollection;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lorg/ton/block/TrCreditPhase;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TrCreditPhaseTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrCreditPhase;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrCreditPhase;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lorg/ton/block/TrCreditPhaseTlbConstructor;->maybeCoins:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TrCreditPhase;->getDueFeesCollected()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 39
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TrCreditPhase;->getCredit()Lorg/ton/block/CurrencyCollection;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
