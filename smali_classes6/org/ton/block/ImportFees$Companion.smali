.class public final Lorg/ton/block/ImportFees$Companion;
.super Ljava/lang/Object;
.source "ImportFees.kt"

# interfaces
.implements Lorg/ton/tlb/providers/TlbConstructorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/ImportFees;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/providers/TlbConstructorProvider<",
        "Lorg/ton/block/ImportFees;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/ImportFeesTlbConstructor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/ImportFeesTlbConstructor;->INSTANCE:Lorg/ton/block/ImportFeesTlbConstructor;

    iput-object v0, p0, Lorg/ton/block/ImportFees$Companion;->$$delegate_0:Lorg/ton/block/ImportFeesTlbConstructor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/ImportFees$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lorg/ton/block/ImportFees$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/ImportFees;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lorg/ton/block/ImportFees$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ImportFees;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/ImportFees;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ImportFees$Companion;->$$delegate_0:Lorg/ton/block/ImportFeesTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbConstructor;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/ImportFees;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ImportFees;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ImportFees$Companion;->$$delegate_0:Lorg/ton/block/ImportFeesTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/block/ImportFeesTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ImportFees;

    move-result-object p1

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/ImportFees;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Lorg/ton/block/ImportFees$$serializer;->INSTANCE:Lorg/ton/block/ImportFees$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lorg/ton/block/ImportFees;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ImportFees$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ImportFees;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ImportFees;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ImportFees$Companion;->$$delegate_0:Lorg/ton/block/ImportFeesTlbConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/block/ImportFeesTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ImportFees;)V

    return-void
.end method

.method public tlbConstructor()Lorg/ton/tlb/TlbConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lorg/ton/block/ImportFees;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ton/block/ImportFees$Companion;->$$delegate_0:Lorg/ton/block/ImportFeesTlbConstructor;

    invoke-virtual {v0}, Lorg/ton/tlb/TlbConstructor;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v0

    return-object v0
.end method
