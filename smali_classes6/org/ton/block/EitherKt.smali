.class public final Lorg/ton/block/EitherKt;
.super Ljava/lang/Object;
.source "Either.kt"


# direct methods
.method public static final invoke(Lorg/ton/block/Either$Companion;Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/block/Either$Companion;",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Either<",
            "TX;TY;>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, p1, p2}, Lorg/ton/block/Either$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p0

    return-object p0
.end method
