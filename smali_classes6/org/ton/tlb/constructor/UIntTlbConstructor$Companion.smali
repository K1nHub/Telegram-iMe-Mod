.class public final Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;
.super Ljava/lang/Object;
.source "UIntTlbConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/tlb/constructor/UIntTlbConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;-><init>()V

    return-void
.end method

.method public static synthetic int$default(Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;IILjava/lang/Object;)Lorg/ton/tlb/TlbConstructor;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x20

    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;->int(I)Lorg/ton/tlb/TlbConstructor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic long$default(Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;IILjava/lang/Object;)Lorg/ton/tlb/TlbConstructor;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x40

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;->long(I)Lorg/ton/tlb/TlbConstructor;

    move-result-object p0

    return-object p0
.end method

.method private final number(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$number$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lorg/ton/cell/CellBuilder;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/ton/cell/CellSlice;",
            "+TT;>;)",
            "Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$number$1;"
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$number$1;

    invoke-direct {v0, p1, p2}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$number$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method


# virtual methods
.method public final int(I)Lorg/ton/tlb/TlbConstructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lkotlin/UInt;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$int$1;

    invoke-direct {v0, p1}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$int$1;-><init>(I)V

    new-instance v1, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$int$2;

    invoke-direct {v1, p1}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$int$2;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;->number(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$number$1;

    move-result-object p1

    return-object p1
.end method

.method public final long(I)Lorg/ton/tlb/TlbConstructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lkotlin/ULong;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$long$1;

    invoke-direct {v0, p1}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$long$1;-><init>(I)V

    new-instance v1, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$long$2;

    invoke-direct {v1, p1}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$long$2;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;->number(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion$number$1;

    move-result-object p1

    return-object p1
.end method
