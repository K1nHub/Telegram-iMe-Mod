.class public final Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;
.super Ljava/lang/Object;
.source "IntTlbConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/tlb/constructor/IntTlbConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;-><init>()V

    return-void
.end method

.method private final number(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lorg/ton/tlb/TlbConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
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
            "Lorg/ton/tlb/TlbConstructor<",
            "TT;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$number$1;

    invoke-direct {v0, p1, p2}, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$number$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method


# virtual methods
.method public final int(I)Lorg/ton/tlb/TlbConstructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ton/tlb/TlbConstructor<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$int$1;

    invoke-direct {v0, p1}, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$int$1;-><init>(I)V

    new-instance v1, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$int$2;

    invoke-direct {v1, p1}, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion$int$2;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;->number(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Lorg/ton/tlb/TlbConstructor;

    move-result-object p1

    return-object p1
.end method
