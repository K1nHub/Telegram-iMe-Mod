.class final Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$int$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IntTlbConstructor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;->int(I)Lorg/ton/tlb/TlbConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/ton/cell/CellBuilder;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $length:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$int$1;->$length:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lorg/ton/cell/CellBuilder;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$int$1;->invoke(Lorg/ton/cell/CellBuilder;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/ton/cell/CellBuilder;I)V
    .locals 1

    const-string v0, "$this$number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget v0, p0, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$int$1;->$length:I

    invoke-interface {p1, p2, v0}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    return-void
.end method
