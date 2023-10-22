.class public final Lorg/ton/hashmap/HashMapE$Companion;
.super Ljava/lang/Object;
.source "HashMapE.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashMapE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHashMapE.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HashMapE.kt\norg/ton/hashmap/HashMapE$Companion\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n215#2:77\n216#2:79\n1#3:78\n*S KotlinDebug\n*F\n+ 1 HashMapE.kt\norg/ton/hashmap/HashMapE$Companion\n*L\n36#1:77\n36#1:79\n*E\n"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/hashmap/HashMapE$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/hashmap/HashMapE$Companion;

    invoke-direct {v0}, Lorg/ton/hashmap/HashMapE$Companion;-><init>()V

    sput-object v0, Lorg/ton/hashmap/HashMapE$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashMapE$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final of()Lorg/ton/hashmap/HashMapE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/ton/hashmap/HashMapE<",
            "TT;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lorg/ton/hashmap/HmeEmpty;

    invoke-direct {v0}, Lorg/ton/hashmap/HmeEmpty;-><init>()V

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
            "Lorg/ton/hashmap/HashMapE<",
            "TT0;>;>;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    const-string v1, "typeSerial0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lorg/ton/hashmap/HashMapE;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v1, 0x2

    new-array v5, v1, [Lkotlin/reflect/KClass;

    const-class v2, Lorg/ton/hashmap/HmeEmpty;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v5, v3

    const-class v2, Lorg/ton/hashmap/HmeRoot;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v5, v6

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    new-instance v2, Lorg/ton/hashmap/HmeEmpty$$serializer;

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v8, v9}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-direct {v2, v7}, Lorg/ton/hashmap/HmeEmpty$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/ton/hashmap/HmeRoot$$serializer;

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v8, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v0, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-direct {v2, v7}, Lorg/ton/hashmap/HmeRoot$$serializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    aput-object v2, v1, v6

    new-array v7, v6, [Ljava/lang/annotation/Annotation;

    .line 14
    new-instance v0, Lorg/ton/hashmap/HashMapE$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v2, "@type"

    invoke-direct {v0, v2}, Lorg/ton/hashmap/HashMapE$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v3

    const-string v3, "org.ton.hashmap.HashMapE"

    move-object v2, p1

    move-object v6, v1

    .line 21
    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object p1
.end method

.method public final tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashMapE<",
            "TX;>;>;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lorg/ton/hashmap/HashMapETlbCombinator;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/ton/hashmap/HashMapETlbCombinator;-><init>(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbConstructor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
