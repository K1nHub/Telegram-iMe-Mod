.class public final Lorg/ton/block/McStateExtraAux;
.super Ljava/lang/Object;
.source "McStateExtra.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/McStateExtraAux$$serializer;,
        Lorg/ton/block/McStateExtraAux$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMcStateExtra.kt\nKotlin\n*S Kotlin\n*F\n+ 1 McStateExtra.kt\norg/ton/block/McStateExtraAux\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,132:1\n1#2:133\n82#3,3:134\n*S KotlinDebug\n*F\n+ 1 McStateExtra.kt\norg/ton/block/McStateExtraAux\n*L\n48#1:134,3\n*E\n"
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

.field public static final Companion:Lorg/ton/block/McStateExtraAux$Companion;


# instance fields
.field private final afterKeyBlock:Z

.field private final blockCreateStats:Lorg/ton/block/BlockCreateStats;

.field private final flags:I

.field private final lastKeyBlock:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/ExtBlkRef;",
            ">;"
        }
    .end annotation
.end field

.field private final prevBlocks:Lorg/ton/hashmap/HashmapAugE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/KeyExtBlkRef;",
            "Lorg/ton/block/KeyMaxLt;",
            ">;"
        }
    .end annotation
.end field

.field private final validatorInfo:Lorg/ton/block/ValidatorInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-class v0, Ljava/lang/Object;

    new-instance v1, Lorg/ton/block/McStateExtraAux$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/McStateExtraAux$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/McStateExtraAux;->Companion:Lorg/ton/block/McStateExtraAux$Companion;

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

    .line 60
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

    sget-object v6, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v12, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v8, v12}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v6, v7}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    aput-object v6, v11, v3

    sget-object v6, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v8, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v0, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v6, v7}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v11, v4

    new-array v12, v4, [Ljava/lang/annotation/Annotation;

    .line 15
    new-instance v0, Lorg/ton/block/McStateExtraAux$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v6, "@type"

    invoke-direct {v0, v6}, Lorg/ton/block/McStateExtraAux$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v12, v3

    const-string v8, "org.ton.block.Maybe"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x4

    aput-object v2, v1, v0

    .line 60
    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    const-class v2, Lorg/ton/block/BlockCreateStats;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v5, [Lkotlin/reflect/KClass;

    const-class v2, Lorg/ton/block/BlockCreateStatsExt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    aput-object v2, v10, v3

    const-class v2, Lorg/ton/block/BlockCreateStatsRegular;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    aput-object v2, v10, v4

    new-array v11, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lorg/ton/block/BlockCreateStatsExt$$serializer;->INSTANCE:Lorg/ton/block/BlockCreateStatsExt$$serializer;

    aput-object v2, v11, v3

    sget-object v2, Lorg/ton/block/BlockCreateStatsRegular$$serializer;->INSTANCE:Lorg/ton/block/BlockCreateStatsRegular$$serializer;

    aput-object v2, v11, v4

    new-array v12, v4, [Ljava/lang/annotation/Annotation;

    .line 10
    new-instance v2, Lorg/ton/block/McStateExtraAux$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v2, v6}, Lorg/ton/block/McStateExtraAux$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v2, v12, v3

    const-string v8, "org.ton.block.BlockCreateStats"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 60
    sput-object v1, Lorg/ton/block/McStateExtraAux;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>(IILorg/ton/block/ValidatorInfo;Lorg/ton/hashmap/HashmapAugE;ZLorg/ton/block/Maybe;Lorg/ton/block/BlockCreateStats;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/ton/block/ValidatorInfo;",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/KeyExtBlkRef;",
            "Lorg/ton/block/KeyMaxLt;",
            ">;Z",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/ExtBlkRef;",
            ">;",
            "Lorg/ton/block/BlockCreateStats;",
            "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
            ")V"
        }
    .end annotation

    and-int/lit8 p8, p1, 0x3f

    const/16 v0, 0x3f

    if-eq v0, p8, :cond_0

    .line 34
    sget-object p8, Lorg/ton/block/McStateExtraAux$$serializer;->INSTANCE:Lorg/ton/block/McStateExtraAux$$serializer;

    invoke-virtual {p8}, Lorg/ton/block/McStateExtraAux$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/block/McStateExtraAux;->flags:I

    iput-object p3, p0, Lorg/ton/block/McStateExtraAux;->validatorInfo:Lorg/ton/block/ValidatorInfo;

    iput-object p4, p0, Lorg/ton/block/McStateExtraAux;->prevBlocks:Lorg/ton/hashmap/HashmapAugE;

    iput-boolean p5, p0, Lorg/ton/block/McStateExtraAux;->afterKeyBlock:Z

    iput-object p6, p0, Lorg/ton/block/McStateExtraAux;->lastKeyBlock:Lorg/ton/block/Maybe;

    iput-object p7, p0, Lorg/ton/block/McStateExtraAux;->blockCreateStats:Lorg/ton/block/BlockCreateStats;

    const/4 p1, 0x1

    if-gt p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    return-void

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid flags: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic constructor <init>(IILorg/ton/block/ValidatorInfo;Lorg/ton/hashmap/HashmapAugE;ZLorg/ton/block/Maybe;Lorg/ton/block/BlockCreateStats;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/ton/block/McStateExtraAux;-><init>(IILorg/ton/block/ValidatorInfo;Lorg/ton/hashmap/HashmapAugE;ZLorg/ton/block/Maybe;Lorg/ton/block/BlockCreateStats;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(ILorg/ton/block/ValidatorInfo;Lorg/ton/hashmap/HashmapAugE;ZLorg/ton/block/Maybe;Lorg/ton/block/BlockCreateStats;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/block/ValidatorInfo;",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/KeyExtBlkRef;",
            "Lorg/ton/block/KeyMaxLt;",
            ">;Z",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/ExtBlkRef;",
            ">;",
            "Lorg/ton/block/BlockCreateStats;",
            ")V"
        }
    .end annotation

    const-string v0, "validatorInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prevBlocks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastKeyBlock"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/ton/block/McStateExtraAux;->flags:I

    .line 37
    iput-object p2, p0, Lorg/ton/block/McStateExtraAux;->validatorInfo:Lorg/ton/block/ValidatorInfo;

    .line 38
    iput-object p3, p0, Lorg/ton/block/McStateExtraAux;->prevBlocks:Lorg/ton/hashmap/HashmapAugE;

    .line 39
    iput-boolean p4, p0, Lorg/ton/block/McStateExtraAux;->afterKeyBlock:Z

    .line 40
    iput-object p5, p0, Lorg/ton/block/McStateExtraAux;->lastKeyBlock:Lorg/ton/block/Maybe;

    .line 41
    iput-object p6, p0, Lorg/ton/block/McStateExtraAux;->blockCreateStats:Lorg/ton/block/BlockCreateStats;

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    return-void

    .line 44
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid flags: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic constructor <init>(ILorg/ton/block/ValidatorInfo;Lorg/ton/hashmap/HashmapAugE;ZLorg/ton/block/Maybe;Lorg/ton/block/BlockCreateStats;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/ton/block/McStateExtraAux;-><init>(ILorg/ton/block/ValidatorInfo;Lorg/ton/hashmap/HashmapAugE;ZLorg/ton/block/Maybe;Lorg/ton/block/BlockCreateStats;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 34
    sget-object v0, Lorg/ton/block/McStateExtraAux;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/McStateExtraAux;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 34
    sget-object v0, Lorg/ton/block/McStateExtraAux;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    iget v1, p0, Lorg/ton/block/McStateExtraAux;->flags:I

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v1, Lorg/ton/block/ValidatorInfo$$serializer;->INSTANCE:Lorg/ton/block/ValidatorInfo$$serializer;

    iget-object v2, p0, Lorg/ton/block/McStateExtraAux;->validatorInfo:Lorg/ton/block/ValidatorInfo;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lorg/ton/block/OldMcBlocksInfo$$serializer;->INSTANCE:Lorg/ton/block/OldMcBlocksInfo$$serializer;

    iget-object v2, p0, Lorg/ton/block/McStateExtraAux;->prevBlocks:Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v2}, Lorg/ton/block/OldMcBlocksInfo;->box-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/block/OldMcBlocksInfo;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lorg/ton/block/McStateExtraAux;->afterKeyBlock:Z

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v1, 0x4

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/McStateExtraAux;->lastKeyBlock:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/McStateExtraAux;->blockCreateStats:Lorg/ton/block/BlockCreateStats;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/McStateExtraAux;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/McStateExtraAux;

    iget v1, p0, Lorg/ton/block/McStateExtraAux;->flags:I

    iget v3, p1, Lorg/ton/block/McStateExtraAux;->flags:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/McStateExtraAux;->validatorInfo:Lorg/ton/block/ValidatorInfo;

    iget-object v3, p1, Lorg/ton/block/McStateExtraAux;->validatorInfo:Lorg/ton/block/ValidatorInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/McStateExtraAux;->prevBlocks:Lorg/ton/hashmap/HashmapAugE;

    iget-object v3, p1, Lorg/ton/block/McStateExtraAux;->prevBlocks:Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v1, v3}, Lorg/ton/block/OldMcBlocksInfo;->equals-impl0(Lorg/ton/hashmap/HashmapAugE;Lorg/ton/hashmap/HashmapAugE;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lorg/ton/block/McStateExtraAux;->afterKeyBlock:Z

    iget-boolean v3, p1, Lorg/ton/block/McStateExtraAux;->afterKeyBlock:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/block/McStateExtraAux;->lastKeyBlock:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/McStateExtraAux;->lastKeyBlock:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/ton/block/McStateExtraAux;->blockCreateStats:Lorg/ton/block/BlockCreateStats;

    iget-object p1, p1, Lorg/ton/block/McStateExtraAux;->blockCreateStats:Lorg/ton/block/BlockCreateStats;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAfterKeyBlock()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lorg/ton/block/McStateExtraAux;->afterKeyBlock:Z

    return v0
.end method

.method public final getBlockCreateStats()Lorg/ton/block/BlockCreateStats;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/ton/block/McStateExtraAux;->blockCreateStats:Lorg/ton/block/BlockCreateStats;

    return-object v0
.end method

.method public final getFlags()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/ton/block/McStateExtraAux;->flags:I

    return v0
.end method

.method public final getLastKeyBlock()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/ExtBlkRef;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/ton/block/McStateExtraAux;->lastKeyBlock:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final getPrevBlocks-D6f0ERk()Lorg/ton/hashmap/HashmapAugE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/KeyExtBlkRef;",
            "Lorg/ton/block/KeyMaxLt;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/ton/block/McStateExtraAux;->prevBlocks:Lorg/ton/hashmap/HashmapAugE;

    return-object v0
.end method

.method public final getValidatorInfo()Lorg/ton/block/ValidatorInfo;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/ton/block/McStateExtraAux;->validatorInfo:Lorg/ton/block/ValidatorInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/block/McStateExtraAux;->flags:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/McStateExtraAux;->validatorInfo:Lorg/ton/block/ValidatorInfo;

    invoke-virtual {v1}, Lorg/ton/block/ValidatorInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/McStateExtraAux;->prevBlocks:Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v1}, Lorg/ton/block/OldMcBlocksInfo;->hashCode-impl(Lorg/ton/hashmap/HashmapAugE;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/McStateExtraAux;->afterKeyBlock:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/McStateExtraAux;->lastKeyBlock:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/McStateExtraAux;->blockCreateStats:Lorg/ton/block/BlockCreateStats;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
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

    .line 49
    iget v1, p0, Lorg/ton/block/McStateExtraAux;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 50
    iget-object v1, p0, Lorg/ton/block/McStateExtraAux;->validatorInfo:Lorg/ton/block/ValidatorInfo;

    const-string v2, "validator_info"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 51
    iget-object v1, p0, Lorg/ton/block/McStateExtraAux;->prevBlocks:Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v1}, Lorg/ton/block/OldMcBlocksInfo;->box-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/block/OldMcBlocksInfo;

    move-result-object v1

    const-string v2, "prev_blocks"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 52
    iget-boolean v1, p0, Lorg/ton/block/McStateExtraAux;->afterKeyBlock:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "after_key_block"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 53
    iget-object v1, p0, Lorg/ton/block/McStateExtraAux;->lastKeyBlock:Lorg/ton/block/Maybe;

    const-string v2, "last_key_block"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 54
    iget-object v1, p0, Lorg/ton/block/McStateExtraAux;->blockCreateStats:Lorg/ton/block/BlockCreateStats;

    const-string v2, "block_create_stats"

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

    .line 58
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
