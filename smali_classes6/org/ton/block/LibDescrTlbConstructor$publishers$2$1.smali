.class public final Lorg/ton/block/LibDescrTlbConstructor$publishers$2$1;
.super Ljava/lang/Object;
.source "LibDescr.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/block/LibDescrTlbConstructor$publishers$2;->invoke()Lorg/ton/tlb/TlbCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/ton/block/LibDescrTlbConstructor$publishers$2$1;->loadTlb(Lorg/ton/cell/Cell;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/ton/block/LibDescrTlbConstructor$publishers$2$1;->loadTlb(Lorg/ton/cell/CellSlice;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)V
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lorg/ton/tlb/TlbCodec$DefaultImpls;->loadTlb(Lorg/ton/tlb/TlbCodec;Lorg/ton/cell/Cell;)Ljava/lang/Object;

    return-void
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)V
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/LibDescrTlbConstructor$publishers$2$1;->storeTlb(Lorg/ton/cell/CellBuilder;Lkotlin/Unit;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lkotlin/Unit;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
