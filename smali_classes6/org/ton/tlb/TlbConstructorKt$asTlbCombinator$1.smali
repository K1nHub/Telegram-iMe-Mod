.class public final Lorg/ton/tlb/TlbConstructorKt$asTlbCombinator$1;
.super Lorg/ton/tlb/TlbCombinator;
.source "TlbConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/tlb/TlbConstructorKt;->asTlbCombinator(Lorg/ton/tlb/TlbConstructor;Lkotlin/reflect/KClass;)Lorg/ton/tlb/TlbCombinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbCombinator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TT;>;[",
            "Lkotlin/Pair<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+TT;>;+",
            "Lorg/ton/tlb/TlbCodec<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method
