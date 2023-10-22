.class public final Lorg/ton/tlb/constructor/UIntTlbConstructorKt;
.super Ljava/lang/Object;
.source "UIntTlbConstructor.kt"


# direct methods
.method public static final tlbConstructor(Lkotlin/UInt$Companion;)Lorg/ton/tlb/TlbConstructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/UInt$Companion;",
            ")",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lkotlin/UInt;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object p0, Lorg/ton/tlb/constructor/UIntTlbConstructor;->Companion:Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;->int$default(Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;IILjava/lang/Object;)Lorg/ton/tlb/TlbConstructor;

    move-result-object p0

    return-object p0
.end method

.method public static final tlbConstructor(Lkotlin/ULong$Companion;)Lorg/ton/tlb/TlbConstructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/ULong$Companion;",
            ")",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lkotlin/ULong;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object p0, Lorg/ton/tlb/constructor/UIntTlbConstructor;->Companion:Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;->long$default(Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;IILjava/lang/Object;)Lorg/ton/tlb/TlbConstructor;

    move-result-object p0

    return-object p0
.end method
