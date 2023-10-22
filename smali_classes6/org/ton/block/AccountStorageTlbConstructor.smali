.class final Lorg/ton/block/AccountStorageTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "AccountStorage.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/AccountStorage;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountStorage.kt\norg/ton/block/AccountStorageTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,58:1\n131#2:59\n132#2:66\n59#3,3:60\n59#3,3:63\n52#3:68\n52#3:69\n86#4:67\n*S KotlinDebug\n*F\n+ 1 AccountStorage.kt\norg/ton/block/AccountStorageTlbConstructor\n*L\n43#1:59\n43#1:66\n45#1:60,3\n46#1:63,3\n53#1:68\n54#1:69\n51#1:67\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/AccountStorageTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/AccountStorageTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/AccountStorageTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/AccountStorageTlbConstructor;->INSTANCE:Lorg/ton/block/AccountStorageTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "account_storage$_ last_trans_lt:uint64 balance:CurrencyCollection state:AccountState = AccountStorage;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 36
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/ton/block/AccountStorageTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AccountStorage;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AccountStorage;
    .locals 7

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v2

    .line 53
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    move-object v4, v0

    check-cast v4, Lorg/ton/block/CurrencyCollection;

    .line 54
    sget-object v0, Lorg/ton/block/AccountState;->Companion:Lorg/ton/block/AccountState$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 54
    move-object v5, p1

    check-cast v5, Lorg/ton/block/AccountState;

    .line 55
    new-instance p1, Lorg/ton/block/AccountStorage;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/ton/block/AccountStorage;-><init>(JLorg/ton/block/CurrencyCollection;Lorg/ton/block/AccountState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Lorg/ton/block/AccountStorage;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/AccountStorageTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AccountStorage;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AccountStorage;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Lorg/ton/block/AccountStorage;->lastTransLt()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 45
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/AccountStorage;->balance()Lorg/ton/block/CurrencyCollection;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lorg/ton/block/AccountState;->Companion:Lorg/ton/block/AccountState$Companion;

    invoke-virtual {p2}, Lorg/ton/block/AccountStorage;->state()Lorg/ton/block/AccountState;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
