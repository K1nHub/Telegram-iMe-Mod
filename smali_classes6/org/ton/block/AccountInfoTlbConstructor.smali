.class final Lorg/ton/block/AccountInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "AccountInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/AccountInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountInfo.kt\norg/ton/block/AccountInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,68:1\n131#2:69\n132#2:79\n59#3,3:70\n59#3,3:73\n59#3,3:76\n52#3:81\n52#3:82\n52#3:83\n86#4:80\n*S KotlinDebug\n*F\n+ 1 AccountInfo.kt\norg/ton/block/AccountInfoTlbConstructor\n*L\n53#1:69\n53#1:79\n54#1:70,3\n55#1:73,3\n56#1:76,3\n62#1:81\n63#1:82\n64#1:83\n61#1:80\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/AccountInfoTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/AccountInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/AccountInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/AccountInfoTlbConstructor;->INSTANCE:Lorg/ton/block/AccountInfoTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "account$1 addr:MsgAddressInt storage_stat:StorageInfo storage:AccountStorage = Account;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 47
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lorg/ton/block/AccountInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AccountInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AccountInfo;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lorg/ton/block/MsgAddressInt;->Companion:Lorg/ton/block/MsgAddressInt$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Lorg/ton/block/MsgAddressInt;

    .line 63
    sget-object v1, Lorg/ton/block/StorageInfo;->Companion:Lorg/ton/block/StorageInfo$Companion;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    check-cast v1, Lorg/ton/block/StorageInfo;

    .line 64
    sget-object v2, Lorg/ton/block/AccountStorage;->Companion:Lorg/ton/block/AccountStorage$Companion;

    .line 52
    invoke-interface {v2, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 64
    check-cast p1, Lorg/ton/block/AccountStorage;

    .line 65
    new-instance v2, Lorg/ton/block/AccountInfo;

    invoke-direct {v2, v0, v1, p1}, Lorg/ton/block/AccountInfo;-><init>(Lorg/ton/block/MsgAddressInt;Lorg/ton/block/StorageInfo;Lorg/ton/block/AccountStorage;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lorg/ton/block/AccountInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/AccountInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AccountInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AccountInfo;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lorg/ton/block/MsgAddressInt;->Companion:Lorg/ton/block/MsgAddressInt$Companion;

    invoke-virtual {p2}, Lorg/ton/block/AccountInfo;->addr()Lorg/ton/block/MsgAddressInt;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 55
    sget-object v0, Lorg/ton/block/StorageInfo;->Companion:Lorg/ton/block/StorageInfo$Companion;

    invoke-virtual {p2}, Lorg/ton/block/AccountInfo;->storageStat()Lorg/ton/block/StorageInfo;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 56
    sget-object v0, Lorg/ton/block/AccountStorage;->Companion:Lorg/ton/block/AccountStorage$Companion;

    invoke-virtual {p2}, Lorg/ton/block/AccountInfo;->storage()Lorg/ton/block/AccountStorage;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
