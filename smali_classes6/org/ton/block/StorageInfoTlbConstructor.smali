.class final Lorg/ton/block/StorageInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "StorageInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/StorageInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorageInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorageInfo.kt\norg/ton/block/StorageInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n+ 5 Maybe.kt\norg/ton/block/Maybe$Companion\n*L\n1#1,65:1\n131#2:66\n132#2:73\n59#3,3:67\n59#3,3:70\n52#3:75\n52#3:76\n86#4:74\n33#5:77\n*S KotlinDebug\n*F\n+ 1 StorageInfo.kt\norg/ton/block/StorageInfoTlbConstructor\n*L\n50#1:66\n50#1:73\n51#1:67,3\n53#1:70,3\n59#1:75\n61#1:76\n58#1:74\n46#1:77\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/StorageInfoTlbConstructor;

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

    new-instance v0, Lorg/ton/block/StorageInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/StorageInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/StorageInfoTlbConstructor;->INSTANCE:Lorg/ton/block/StorageInfoTlbConstructor;

    .line 46
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    .line 33
    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    .line 46
    sput-object v0, Lorg/ton/block/StorageInfoTlbConstructor;->maybeCoins:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "storage_info$_ used:StorageUsed last_paid:uint32 due_payment:(Maybe Coins) = StorageInfo;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/StorageInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/StorageInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/StorageInfo;
    .locals 4

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lorg/ton/block/StorageUsed;->Companion:Lorg/ton/block/StorageUsed$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    check-cast v0, Lorg/ton/block/StorageUsed;

    .line 60
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v1

    .line 61
    sget-object v2, Lorg/ton/block/StorageInfoTlbConstructor;->maybeCoins:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v2, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 61
    check-cast p1, Lorg/ton/block/Maybe;

    .line 62
    new-instance v2, Lorg/ton/block/StorageInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Lorg/ton/block/StorageInfo;-><init>(Lorg/ton/block/StorageUsed;ILorg/ton/block/Maybe;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p2, Lorg/ton/block/StorageInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/StorageInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/StorageInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/StorageInfo;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lorg/ton/block/StorageUsed;->Companion:Lorg/ton/block/StorageUsed$Companion;

    invoke-virtual {p2}, Lorg/ton/block/StorageInfo;->used()Lorg/ton/block/StorageUsed;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p2}, Lorg/ton/block/StorageInfo;->lastPaid()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 53
    sget-object v0, Lorg/ton/block/StorageInfoTlbConstructor;->maybeCoins:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/StorageInfo;->duePayment()Lorg/ton/block/Maybe;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
