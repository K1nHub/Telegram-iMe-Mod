.class final Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$long$2;
.super Lkotlin/jvm/internal/Lambda;
.source "UIntTlbConstructor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;->long(I)Lorg/ton/tlb/TlbConstructor;
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
        "Lkotlin/ULong;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $length:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$long$2;->$length:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 40
    check-cast p1, Lorg/ton/cell/CellSlice;

    invoke-virtual {p0, p1}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$long$2;->invoke-I7RO_PI(Lorg/ton/cell/CellSlice;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-I7RO_PI(Lorg/ton/cell/CellSlice;)J
    .locals 2

    const-string v0, "$this$number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$long$2;->$length:I

    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method
