.class public final Lorg/ton/block/McBlockExtraAux;
.super Ljava/lang/Object;
.source "McBlockExtra.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/McBlockExtraAux$$serializer;,
        Lorg/ton/block/McBlockExtraAux$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMcBlockExtra.kt\nKotlin\n*S Kotlin\n*F\n+ 1 McBlockExtra.kt\norg/ton/block/McBlockExtraAux\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,119:1\n86#2,2:120\n82#2,3:122\n88#2:125\n*S KotlinDebug\n*F\n+ 1 McBlockExtra.kt\norg/ton/block/McBlockExtraAux\n*L\n46#1:120,2\n47#1:122,3\n46#1:125\n*E\n"
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

.field public static final Companion:Lorg/ton/block/McBlockExtraAux$Companion;


# instance fields
.field private final mintMsg:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/InMsg;",
            ">;>;"
        }
    .end annotation
.end field

.field private final prevBlkSignatures:Lorg/ton/hashmap/HashMapE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/CryptoSignaturePair;",
            ">;"
        }
    .end annotation
.end field

.field private final recoverCreateMsg:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/InMsg;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-class v0, Lorg/ton/block/Nothing;

    const-class v1, Lorg/ton/block/Just;

    const-class v2, Lorg/ton/block/Maybe;

    const-class v3, Ljava/lang/Object;

    new-instance v4, Lorg/ton/block/McBlockExtraAux$Companion;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/ton/block/McBlockExtraAux$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lorg/ton/block/McBlockExtraAux;->Companion:Lorg/ton/block/McBlockExtraAux$Companion;

    const/4 v4, 0x3

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    .line 56
    new-instance v11, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lorg/ton/hashmap/HashMapE;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v12, 0x2

    new-array v8, v12, [Lkotlin/reflect/KClass;

    const-class v5, Lorg/ton/hashmap/HmeEmpty;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v13, 0x0

    aput-object v5, v8, v13

    const-class v5, Lorg/ton/hashmap/HmeRoot;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v14, 0x1

    aput-object v5, v8, v14

    new-array v9, v12, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lorg/ton/hashmap/HmeEmpty;->Companion:Lorg/ton/hashmap/HmeEmpty$Companion;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v15, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v10, v15}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v6}, Lorg/ton/hashmap/HmeEmpty$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v9, v13

    sget-object v5, Lorg/ton/hashmap/HmeRoot;->Companion:Lorg/ton/hashmap/HmeRoot$Companion;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v15, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v10, v15}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v6}, Lorg/ton/hashmap/HmeRoot$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v9, v14

    new-array v10, v14, [Ljava/lang/annotation/Annotation;

    new-instance v5, Lorg/ton/block/McBlockExtra$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v15, "@type"

    invoke-direct {v5, v15}, Lorg/ton/block/McBlockExtra$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v5, v10, v13

    const-string v6, "org.ton.hashmap.HashMapE"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v11, v4, v13

    new-instance v5, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v18

    new-array v6, v12, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    aput-object v7, v6, v14

    new-array v7, v12, [Lkotlinx/serialization/KSerializer;

    sget-object v8, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v10, v11}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v8, v9}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    aput-object v9, v7, v13

    sget-object v9, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v10, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v10, v11, v12}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v9, v10}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v10

    aput-object v10, v7, v14

    new-array v10, v14, [Ljava/lang/annotation/Annotation;

    .line 16
    new-instance v11, Lorg/ton/block/McBlockExtra$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v11, v15}, Lorg/ton/block/McBlockExtra$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v11, v10, v13

    const-string v17, "org.ton.block.Maybe"

    move-object/from16 v16, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v10

    invoke-direct/range {v16 .. v21}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v5, v4, v14

    .line 56
    new-instance v5, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v24

    const/4 v2, 0x2

    new-array v6, v2, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    aput-object v1, v6, v13

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    aput-object v0, v6, v14

    new-array v0, v2, [Lkotlinx/serialization/KSerializer;

    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-array v7, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v2, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v8, v1}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, v13

    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v2, v3}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v9, v1}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, v14

    new-array v1, v14, [Ljava/lang/annotation/Annotation;

    .line 16
    new-instance v2, Lorg/ton/block/McBlockExtra$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v2, v15}, Lorg/ton/block/McBlockExtra$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v13

    const-string v23, "org.ton.block.Maybe"

    move-object/from16 v22, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v0

    move-object/from16 v27, v1

    invoke-direct/range {v22 .. v27}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x2

    aput-object v5, v4, v0

    .line 56
    sput-object v4, Lorg/ton/block/McBlockExtraAux;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/hashmap/HashMapE;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 40
    sget-object p5, Lorg/ton/block/McBlockExtraAux$$serializer;->INSTANCE:Lorg/ton/block/McBlockExtraAux$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/McBlockExtraAux$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/McBlockExtraAux;->prevBlkSignatures:Lorg/ton/hashmap/HashMapE;

    iput-object p3, p0, Lorg/ton/block/McBlockExtraAux;->recoverCreateMsg:Lorg/ton/block/Maybe;

    iput-object p4, p0, Lorg/ton/block/McBlockExtraAux;->mintMsg:Lorg/ton/block/Maybe;

    return-void
.end method

.method public constructor <init>(Lorg/ton/hashmap/HashMapE;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/CryptoSignaturePair;",
            ">;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/InMsg;",
            ">;>;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/InMsg;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "prevBlkSignatures"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recoverCreateMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mintMsg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/ton/block/McBlockExtraAux;->prevBlkSignatures:Lorg/ton/hashmap/HashMapE;

    .line 43
    iput-object p2, p0, Lorg/ton/block/McBlockExtraAux;->recoverCreateMsg:Lorg/ton/block/Maybe;

    .line 44
    iput-object p3, p0, Lorg/ton/block/McBlockExtraAux;->mintMsg:Lorg/ton/block/Maybe;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 40
    sget-object v0, Lorg/ton/block/McBlockExtraAux;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/McBlockExtraAux;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 40
    sget-object v0, Lorg/ton/block/McBlockExtraAux;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/McBlockExtraAux;->prevBlkSignatures:Lorg/ton/hashmap/HashMapE;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/McBlockExtraAux;->recoverCreateMsg:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/McBlockExtraAux;->mintMsg:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/McBlockExtraAux;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/McBlockExtraAux;

    iget-object v1, p0, Lorg/ton/block/McBlockExtraAux;->prevBlkSignatures:Lorg/ton/hashmap/HashMapE;

    iget-object v3, p1, Lorg/ton/block/McBlockExtraAux;->prevBlkSignatures:Lorg/ton/hashmap/HashMapE;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/McBlockExtraAux;->recoverCreateMsg:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/McBlockExtraAux;->recoverCreateMsg:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/McBlockExtraAux;->mintMsg:Lorg/ton/block/Maybe;

    iget-object p1, p1, Lorg/ton/block/McBlockExtraAux;->mintMsg:Lorg/ton/block/Maybe;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMintMsg()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/InMsg;",
            ">;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/ton/block/McBlockExtraAux;->mintMsg:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final getPrevBlkSignatures()Lorg/ton/hashmap/HashMapE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/CryptoSignaturePair;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/ton/block/McBlockExtraAux;->prevBlkSignatures:Lorg/ton/hashmap/HashMapE;

    return-object v0
.end method

.method public final getRecoverCreateMsg()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/InMsg;",
            ">;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/ton/block/McBlockExtraAux;->recoverCreateMsg:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/McBlockExtraAux;->prevBlkSignatures:Lorg/ton/hashmap/HashMapE;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/McBlockExtraAux;->recoverCreateMsg:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/McBlockExtraAux;->mintMsg:Lorg/ton/block/Maybe;

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

    .line 48
    iget-object v1, p0, Lorg/ton/block/McBlockExtraAux;->prevBlkSignatures:Lorg/ton/hashmap/HashMapE;

    const-string v2, "prev_blk_signatures"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 49
    iget-object v1, p0, Lorg/ton/block/McBlockExtraAux;->recoverCreateMsg:Lorg/ton/block/Maybe;

    const-string v2, "recover_create_msg"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 50
    iget-object v1, p0, Lorg/ton/block/McBlockExtraAux;->mintMsg:Lorg/ton/block/Maybe;

    const-string v2, "mint_msg"

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

    .line 54
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
