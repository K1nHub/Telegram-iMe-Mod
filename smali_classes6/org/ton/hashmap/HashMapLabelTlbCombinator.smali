.class final Lorg/ton/hashmap/HashMapLabelTlbCombinator;
.super Lorg/ton/tlb/TlbNegatedCombinator;
.source "HmLabel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashMapLabelTlbCombinator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbNegatedCombinator<",
        "Lorg/ton/hashmap/HmLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE:[Lorg/ton/hashmap/HashMapLabelTlbCombinator;

.field public static final Companion:Lorg/ton/hashmap/HashMapLabelTlbCombinator$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/ton/hashmap/HashMapLabelTlbCombinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/hashmap/HashMapLabelTlbCombinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/hashmap/HashMapLabelTlbCombinator;->Companion:Lorg/ton/hashmap/HashMapLabelTlbCombinator$Companion;

    const/16 v0, 0x10

    new-array v1, v0, [Lorg/ton/hashmap/HashMapLabelTlbCombinator;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 66
    new-instance v10, Lorg/ton/hashmap/HashMapLabelTlbCombinator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v3, v10

    move v4, v2

    invoke-direct/range {v3 .. v9}, Lorg/ton/hashmap/HashMapLabelTlbCombinator;-><init>(ILorg/ton/tlb/TlbNegatedConstructor;Lorg/ton/tlb/TlbNegatedConstructor;Lorg/ton/tlb/TlbNegatedConstructor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v10, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lorg/ton/hashmap/HashMapLabelTlbCombinator;->CACHE:[Lorg/ton/hashmap/HashMapLabelTlbCombinator;

    return-void
.end method

.method public constructor <init>(ILorg/ton/tlb/TlbNegatedConstructor;Lorg/ton/tlb/TlbNegatedConstructor;Lorg/ton/tlb/TlbNegatedConstructor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/tlb/TlbNegatedConstructor<",
            "Lorg/ton/hashmap/HmlLong;",
            ">;",
            "Lorg/ton/tlb/TlbNegatedConstructor<",
            "Lorg/ton/hashmap/HmlShort;",
            ">;",
            "Lorg/ton/tlb/TlbNegatedConstructor<",
            "Lorg/ton/hashmap/HmlSame;",
            ">;)V"
        }
    .end annotation

    const-string p1, "hmlLong"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "hmlShort"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "hmlSame"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const-class p1, Lorg/ton/hashmap/HmLabel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    .line 61
    const-class v1, Lorg/ton/hashmap/HmlLong;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-class p2, Lorg/ton/hashmap/HmlShort;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    .line 62
    invoke-static {p2, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    .line 61
    const-class p2, Lorg/ton/hashmap/HmlSame;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    .line 63
    invoke-static {p2, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/ton/tlb/TlbNegatedCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/tlb/TlbNegatedConstructor;Lorg/ton/tlb/TlbNegatedConstructor;Lorg/ton/tlb/TlbNegatedConstructor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 56
    sget-object p2, Lorg/ton/hashmap/HmlLong;->Companion:Lorg/ton/hashmap/HmlLong$Companion;

    invoke-virtual {p2, p1}, Lorg/ton/hashmap/HmlLong$Companion;->tlbCodec(I)Lorg/ton/tlb/TlbNegatedConstructor;

    move-result-object p2

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 57
    sget-object p3, Lorg/ton/hashmap/HmlShort;->Companion:Lorg/ton/hashmap/HmlShort$Companion;

    invoke-virtual {p3}, Lorg/ton/hashmap/HmlShort$Companion;->tlbCodec()Lorg/ton/tlb/TlbNegatedConstructor;

    move-result-object p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 58
    sget-object p4, Lorg/ton/hashmap/HmlSame;->Companion:Lorg/ton/hashmap/HmlSame$Companion;

    invoke-virtual {p4, p1}, Lorg/ton/hashmap/HmlSame$Companion;->tlbCodec(I)Lorg/ton/tlb/TlbNegatedConstructor;

    move-result-object p4

    .line 54
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/hashmap/HashMapLabelTlbCombinator;-><init>(ILorg/ton/tlb/TlbNegatedConstructor;Lorg/ton/tlb/TlbNegatedConstructor;Lorg/ton/tlb/TlbNegatedConstructor;)V

    return-void
.end method

.method public static final synthetic access$getCACHE$cp()[Lorg/ton/hashmap/HashMapLabelTlbCombinator;
    .locals 1

    .line 54
    sget-object v0, Lorg/ton/hashmap/HashMapLabelTlbCombinator;->CACHE:[Lorg/ton/hashmap/HashMapLabelTlbCombinator;

    return-object v0
.end method
