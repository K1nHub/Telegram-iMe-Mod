.class final Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$int$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UIntTlbConstructor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;->int(I)Lorg/ton/tlb/TlbConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/ton/cell/CellSlice;",
        "Lkotlin/UInt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $length:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$int$2;->$length:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lorg/ton/cell/CellSlice;

    invoke-virtual {p0, p1}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$int$2;->invoke-OGnWXxg(Lorg/ton/cell/CellSlice;)I

    move-result p1

    invoke-static {p1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-OGnWXxg(Lorg/ton/cell/CellSlice;)I
    .locals 1

    const-string v0, "$this$number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget v0, p0, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$int$2;->$length:I

    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p1

    return p1
.end method
