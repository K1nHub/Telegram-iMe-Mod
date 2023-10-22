.class final Lorg/ton/tlb/constructor/CellTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "CellTlbConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/cell/Cell;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCellTlbConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CellTlbConstructor.kt\norg/ton/tlb/constructor/CellTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,49:1\n131#2,2:50\n86#3:52\n*S KotlinDebug\n*F\n+ 1 CellTlbConstructor.kt\norg/ton/tlb/constructor/CellTlbConstructor\n*L\n19#1:50,2\n25#1:52\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/tlb/constructor/CellTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/tlb/constructor/CellTlbConstructor;

    invoke-direct {v0}, Lorg/ton/tlb/constructor/CellTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/tlb/constructor/CellTlbConstructor;->INSTANCE:Lorg/ton/tlb/constructor/CellTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 15
    sget-object v0, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v0}, Lorg/ton/bitstring/BitString$Companion;->empty()Lorg/ton/bitstring/BitString;

    move-result-object v0

    const-string v1, "_ _:Cell = Cell;"

    .line 13
    invoke-direct {p0, v1, v0}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/ton/tlb/constructor/CellTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/cell/Cell;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/cell/Cell;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lorg/ton/cell/Cell;

    invoke-virtual {p0, p1, p2}, Lorg/ton/tlb/constructor/CellTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/cell/Cell;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/cell/Cell;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
