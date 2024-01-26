.class public final Lorg/ton/block/ShardStateUnsplitAux;
.super Ljava/lang/Object;
.source "ShardStateUnsplit.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ShardStateUnsplitAux$$serializer;,
        Lorg/ton/block/ShardStateUnsplitAux$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShardStateUnsplit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShardStateUnsplit.kt\norg/ton/block/ShardStateUnsplitAux\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,185:1\n82#2,3:186\n*S KotlinDebug\n*F\n+ 1 ShardStateUnsplit.kt\norg/ton/block/ShardStateUnsplitAux\n*L\n60#1:186,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/ton/block/ShardStateUnsplitAux$Companion;


# instance fields
.field private final libraries:Lorg/ton/hashmap/HashMapE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/LibDescr;",
            ">;"
        }
    .end annotation
.end field

.field private final masterRef:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/BlkMasterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final overloadHistory:J

.field private final totalBalance:Lorg/ton/block/CurrencyCollection;

.field private final totalValidatorFees:Lorg/ton/block/CurrencyCollection;

.field private final underloadHistory:J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-class v0, Ljava/lang/Object;

    new-instance v1, Lorg/ton/block/ShardStateUnsplitAux$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/ShardStateUnsplitAux$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/ShardStateUnsplitAux;->Companion:Lorg/ton/block/ShardStateUnsplitAux$Companion;

    const/4 v1, 0x6

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 72
    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v6, Lorg/ton/hashmap/HashMapE;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v5, [Lkotlin/reflect/KClass;

    const-class v6, Lorg/ton/hashmap/HmeEmpty;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v10, v3

    const-class v6, Lorg/ton/hashmap/HmeRoot;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v10, v4

    new-array v11, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v6, Lorg/ton/hashmap/HmeEmpty;->Companion:Lorg/ton/hashmap/HmeEmpty$Companion;

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v12, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v8, v12}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v6, v7}, Lorg/ton/hashmap/HmeEmpty$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    aput-object v6, v11, v3

    sget-object v6, Lorg/ton/hashmap/HmeRoot;->Companion:Lorg/ton/hashmap/HmeRoot$Companion;

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v12, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v8, v12}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v6, v7}, Lorg/ton/hashmap/HmeRoot$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    aput-object v6, v11, v4

    new-array v12, v4, [Ljava/lang/annotation/Annotation;

    new-instance v6, Lorg/ton/block/ShardStateUnsplit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v13, "@type"

    invoke-direct {v6, v13}, Lorg/ton/block/ShardStateUnsplit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v6, v12, v3

    const-string v8, "org.ton.hashmap.HashMapE"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v6, 0x4

    aput-object v2, v1, v6

    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v6, Lorg/ton/block/Maybe;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v5, [Lkotlin/reflect/KClass;

    const-class v6, Lorg/ton/block/Just;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v10, v3

    const-class v6, Lorg/ton/block/Nothing;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    aput-object v6, v10, v4

    new-array v11, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v7, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v6}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v11, v3

    sget-object v5, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v7, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v0, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v6}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v11, v4

    new-array v12, v4, [Ljava/lang/annotation/Annotation;

    .line 16
    new-instance v0, Lorg/ton/block/ShardStateUnsplit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v0, v13}, Lorg/ton/block/ShardStateUnsplit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v12, v3

    const-string v8, "org.ton.block.Maybe"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x5

    aput-object v2, v1, v0

    .line 72
    sput-object v1, Lorg/ton/block/ShardStateUnsplitAux;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>(ILkotlin/ULong;Lkotlin/ULong;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/hashmap/HashMapE;Lorg/ton/block/Maybe;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/ULong;",
            "Lkotlin/ULong;",
            "Lorg/ton/block/CurrencyCollection;",
            "Lorg/ton/block/CurrencyCollection;",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/LibDescr;",
            ">;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/BlkMasterInfo;",
            ">;",
            "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
            ")V"
        }
    .end annotation

    and-int/lit8 p8, p1, 0x3f

    const/16 v0, 0x3f

    if-eq v0, p8, :cond_0

    .line 50
    sget-object p8, Lorg/ton/block/ShardStateUnsplitAux$$serializer;->INSTANCE:Lorg/ton/block/ShardStateUnsplitAux$$serializer;

    invoke-virtual {p8}, Lorg/ton/block/ShardStateUnsplitAux$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/ShardStateUnsplitAux;->overloadHistory:J

    invoke-virtual {p3}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/ShardStateUnsplitAux;->underloadHistory:J

    iput-object p4, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalBalance:Lorg/ton/block/CurrencyCollection;

    iput-object p5, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalValidatorFees:Lorg/ton/block/CurrencyCollection;

    iput-object p6, p0, Lorg/ton/block/ShardStateUnsplitAux;->libraries:Lorg/ton/hashmap/HashMapE;

    iput-object p7, p0, Lorg/ton/block/ShardStateUnsplitAux;->masterRef:Lorg/ton/block/Maybe;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/ULong;Lkotlin/ULong;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/hashmap/HashMapE;Lorg/ton/block/Maybe;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/ton/block/ShardStateUnsplitAux;-><init>(ILkotlin/ULong;Lkotlin/ULong;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/hashmap/HashMapE;Lorg/ton/block/Maybe;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(JJLorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/hashmap/HashMapE;Lorg/ton/block/Maybe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lorg/ton/block/CurrencyCollection;",
            "Lorg/ton/block/CurrencyCollection;",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/LibDescr;",
            ">;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/BlkMasterInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "totalBalance"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "totalValidatorFees"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraries"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "masterRef"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lorg/ton/block/ShardStateUnsplitAux;->overloadHistory:J

    .line 53
    iput-wide p3, p0, Lorg/ton/block/ShardStateUnsplitAux;->underloadHistory:J

    .line 54
    iput-object p5, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalBalance:Lorg/ton/block/CurrencyCollection;

    .line 55
    iput-object p6, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalValidatorFees:Lorg/ton/block/CurrencyCollection;

    .line 56
    iput-object p7, p0, Lorg/ton/block/ShardStateUnsplitAux;->libraries:Lorg/ton/hashmap/HashMapE;

    .line 57
    iput-object p8, p0, Lorg/ton/block/ShardStateUnsplitAux;->masterRef:Lorg/ton/block/Maybe;

    return-void
.end method

.method public synthetic constructor <init>(JJLorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/hashmap/HashMapE;Lorg/ton/block/Maybe;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/ton/block/ShardStateUnsplitAux;-><init>(JJLorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/hashmap/HashMapE;Lorg/ton/block/Maybe;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 50
    sget-object v0, Lorg/ton/block/ShardStateUnsplitAux;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/ShardStateUnsplitAux;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 50
    sget-object v0, Lorg/ton/block/ShardStateUnsplitAux;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v2, p0, Lorg/ton/block/ShardStateUnsplitAux;->overloadHistory:J

    invoke-static {v2, v3}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-wide v2, p0, Lorg/ton/block/ShardStateUnsplitAux;->underloadHistory:J

    invoke-static {v2, v3}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    iget-object v2, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalBalance:Lorg/ton/block/CurrencyCollection;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalValidatorFees:Lorg/ton/block/CurrencyCollection;

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/ShardStateUnsplitAux;->libraries:Lorg/ton/hashmap/HashMapE;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/ShardStateUnsplitAux;->masterRef:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/ShardStateUnsplitAux;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/ShardStateUnsplitAux;

    iget-wide v3, p0, Lorg/ton/block/ShardStateUnsplitAux;->overloadHistory:J

    iget-wide v5, p1, Lorg/ton/block/ShardStateUnsplitAux;->overloadHistory:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/ton/block/ShardStateUnsplitAux;->underloadHistory:J

    iget-wide v5, p1, Lorg/ton/block/ShardStateUnsplitAux;->underloadHistory:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalBalance:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/ShardStateUnsplitAux;->totalBalance:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalValidatorFees:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/ShardStateUnsplitAux;->totalValidatorFees:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->libraries:Lorg/ton/hashmap/HashMapE;

    iget-object v3, p1, Lorg/ton/block/ShardStateUnsplitAux;->libraries:Lorg/ton/hashmap/HashMapE;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->masterRef:Lorg/ton/block/Maybe;

    iget-object p1, p1, Lorg/ton/block/ShardStateUnsplitAux;->masterRef:Lorg/ton/block/Maybe;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getLibraries()Lorg/ton/hashmap/HashMapE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/LibDescr;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/ton/block/ShardStateUnsplitAux;->libraries:Lorg/ton/hashmap/HashMapE;

    return-object v0
.end method

.method public final getMasterRef()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/BlkMasterInfo;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/ton/block/ShardStateUnsplitAux;->masterRef:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final getOverloadHistory-s-VKNKU()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lorg/ton/block/ShardStateUnsplitAux;->overloadHistory:J

    return-wide v0
.end method

.method public final getTotalBalance()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalBalance:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getTotalValidatorFees()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalValidatorFees:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getUnderloadHistory-s-VKNKU()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lorg/ton/block/ShardStateUnsplitAux;->underloadHistory:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lorg/ton/block/ShardStateUnsplitAux;->overloadHistory:J

    invoke-static {v0, v1}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->underloadHistory:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalBalance:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalValidatorFees:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->libraries:Lorg/ton/hashmap/HashMapE;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->masterRef:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 61
    iget-wide v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->overloadHistory:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "overload_history"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 62
    iget-wide v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->underloadHistory:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "underload_history"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 63
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalBalance:Lorg/ton/block/CurrencyCollection;

    const-string v2, "total_balance"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 64
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->totalValidatorFees:Lorg/ton/block/CurrencyCollection;

    const-string v2, "total_validator_fees"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 65
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->libraries:Lorg/ton/hashmap/HashMapE;

    const-string v2, "libraries"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 66
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplitAux;->masterRef:Lorg/ton/block/Maybe;

    const-string v2, "master_ref"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 70
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
