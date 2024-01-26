.class public final Lorg/ton/tlb/TlbConstructorKt;
.super Ljava/lang/Object;
.source "TlbConstructor.kt"


# direct methods
.method public static final asTlbCombinator(Lorg/ton/tlb/TlbConstructor;Lkotlin/reflect/KClass;)Lorg/ton/tlb/TlbCombinator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/TlbConstructor<",
            "TT;>;",
            "Lkotlin/reflect/KClass<",
            "TT;>;)",
            "Lorg/ton/tlb/TlbCombinator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    .line 86
    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 84
    new-instance p0, Lorg/ton/tlb/TlbConstructorKt$asTlbCombinator$1;

    invoke-direct {p0, p1, v0}, Lorg/ton/tlb/TlbConstructorKt$asTlbCombinator$1;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-object p0
.end method
