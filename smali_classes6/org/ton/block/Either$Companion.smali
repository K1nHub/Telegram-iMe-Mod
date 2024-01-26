.class public final Lorg/ton/block/Either$Companion;
.super Ljava/lang/Object;
.source "Either.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/Either;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/block/Either$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/Either$Companion;

    invoke-direct {v0}, Lorg/ton/block/Either$Companion;-><init>()V

    sput-object v0, Lorg/ton/block/Either$Companion;->$$INSTANCE:Lorg/ton/block/Either$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/ton/block/Either;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(TX;TY;)",
            "Lorg/ton/block/Either<",
            "TX;TY;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 88
    new-instance p2, Lorg/ton/block/Either$Left;

    invoke-direct {p2, p1}, Lorg/ton/block/Either$Left;-><init>(Ljava/lang/Object;)V

    return-object p2

    :cond_0
    if-eqz p2, :cond_1

    .line 91
    new-instance p1, Lorg/ton/block/Either$Right;

    invoke-direct {p1, p2}, Lorg/ton/block/Either$Right;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "first & second == null; At least one element must be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final serializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT0;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TT1;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/Either<",
            "TT0;TT1;>;>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const-string v1, "typeSerial0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "typeSerial1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance p1, Lkotlinx/serialization/SealedClassSerializer;

    const-class p2, Lorg/ton/block/Either;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 p2, 0x2

    new-array v4, p2, [Lkotlin/reflect/KClass;

    const-class v1, Lorg/ton/block/Either$Left;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v4, v2

    const-class v1, Lorg/ton/block/Either$Right;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    new-array p2, p2, [Lkotlinx/serialization/KSerializer;

    new-instance v1, Lorg/ton/block/Either$Left$$serializer;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v7, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v8, v9}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-direct {v1, v6, v7}, Lorg/ton/block/Either$Left$$serializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    aput-object v1, p2, v2

    new-instance v1, Lorg/ton/block/Either$Right$$serializer;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v7, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v8, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v0, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-direct {v1, v6, v7}, Lorg/ton/block/Either$Right$$serializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    aput-object v1, p2, v5

    new-array v6, v5, [Ljava/lang/annotation/Annotation;

    .line 18
    new-instance v0, Lorg/ton/block/Either$Left$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v1, "@type"

    invoke-direct {v0, v1}, Lorg/ton/block/Either$Left$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v6, v2

    const-string v2, "org.ton.block.Either"

    move-object v1, p1

    move-object v5, p2

    .line 84
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object p1
.end method

.method public final tlbCodec(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Either<",
            "TX;TY;>;>;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lorg/ton/block/EitherTlbCombinator;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/ton/block/EitherTlbCombinator;-><init>(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;Lorg/ton/block/LeftTlbConstructor;Lorg/ton/block/RightTlbConstructor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
