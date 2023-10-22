.class public final Lorg/ton/block/Maybe$Companion;
.super Ljava/lang/Object;
.source "Maybe.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/Maybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/block/Maybe$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/Maybe$Companion;

    invoke-direct {v0}, Lorg/ton/block/Maybe$Companion;-><init>()V

    sput-object v0, Lorg/ton/block/Maybe$Companion;->$$INSTANCE:Lorg/ton/block/Maybe$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final of(Ljava/lang/Object;)Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lorg/ton/block/Maybe<",
            "TX;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 27
    new-instance v0, Lorg/ton/block/Just;

    invoke-direct {v0, p1}, Lorg/ton/block/Just;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ton/block/Nothing;

    invoke-direct {v0}, Lorg/ton/block/Nothing;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT0;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/Maybe<",
            "TT0;>;>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const-string v1, "typeSerial0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance p1, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lorg/ton/block/Maybe;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v1, 0x2

    new-array v5, v1, [Lkotlin/reflect/KClass;

    const-class v2, Lorg/ton/block/Just;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const-class v2, Lorg/ton/block/Nothing;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v5, v6

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    new-instance v2, Lorg/ton/block/Just$$serializer;

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v8, v9}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-direct {v2, v7}, Lorg/ton/block/Just$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/ton/block/Nothing$$serializer;

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v8, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v0, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-direct {v2, v7}, Lorg/ton/block/Nothing$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    aput-object v2, v1, v6

    new-array v7, v6, [Ljava/lang/annotation/Annotation;

    .line 18
    new-instance v0, Lorg/ton/block/Maybe$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v2, "@type"

    invoke-direct {v0, v2}, Lorg/ton/block/Maybe$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v3

    const-string v3, "org.ton.block.Maybe"

    move-object v2, p1

    move-object v6, v1

    .line 25
    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object p1
.end method

.method public final tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "TX;>;>;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lorg/ton/block/MaybeTlbCombinator;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lorg/ton/block/MaybeTlbCombinator;-><init>(Lorg/ton/tlb/TlbCodec;Lorg/ton/block/JustConstructor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
