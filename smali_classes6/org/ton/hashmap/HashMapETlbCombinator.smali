.class final Lorg/ton/hashmap/HashMapETlbCombinator;
.super Lorg/ton/tlb/TlbCombinator;
.source "HashMapE.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashMapETlbCombinator$EmptyHashMapETlbConstructor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/hashmap/HashMapE<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbConstructor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lorg/ton/hashmap/HmeRoot<",
            "TX;>;>;)V"
        }
    .end annotation

    const-string p1, "x"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "root"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const-class p1, Lorg/ton/hashmap/HashMapE;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Lkotlin/Pair;

    .line 59
    const-class v0, Lorg/ton/hashmap/HmeEmpty;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    sget-object v1, Lorg/ton/hashmap/HashMapETlbCombinator$EmptyHashMapETlbConstructor;->INSTANCE:Lorg/ton/hashmap/HashMapETlbCombinator$EmptyHashMapETlbConstructor;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-class v0, Lorg/ton/hashmap/HmeRoot;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 60
    invoke-static {v0, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p2, v0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/ton/tlb/TlbCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbConstructor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 56
    sget-object p3, Lorg/ton/hashmap/HmeRoot;->Companion:Lorg/ton/hashmap/HmeRoot$Companion;

    invoke-virtual {p3, p1, p2}, Lorg/ton/hashmap/HmeRoot$Companion;->tlbConstructor(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbConstructor;

    move-result-object p3

    .line 53
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/ton/hashmap/HashMapETlbCombinator;-><init>(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbConstructor;)V

    return-void
.end method
