.class public final Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$number$1;
.super Lorg/ton/tlb/TlbConstructor;
.source "IntTlbConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;->number(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lorg/ton/tlb/TlbConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $decode:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lorg/ton/cell/CellSlice;",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $encode:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lorg/ton/cell/CellBuilder;",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/ton/cell/CellBuilder;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/ton/cell/CellSlice;",
            "+TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$number$1;->$encode:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$number$1;->$decode:Lkotlin/jvm/functions/Function1;

    const-string p1, ""

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 41
    invoke-direct {p0, p1, p2, v0, p2}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")TT;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$number$1;->$decode:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$number$1;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Number;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$number$1;->$encode:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$number$1;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Number;)V

    return-void
.end method
