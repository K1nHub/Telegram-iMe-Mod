.class public final Lorg/ton/block/TrComputePhaseAux;
.super Ljava/lang/Object;
.source "TrPhaseComputeVm.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/TrComputePhaseAux$$serializer;,
        Lorg/ton/block/TrComputePhaseAux$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrPhaseComputeVm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrPhaseComputeVm.kt\norg/ton/block/TrComputePhaseAux\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,140:1\n86#2,2:141\n82#2,3:143\n88#2:146\n*S KotlinDebug\n*F\n+ 1 TrPhaseComputeVm.kt\norg/ton/block/TrComputePhaseAux\n*L\n76#1:141,2\n77#1:143,3\n76#1:146\n*E\n"
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

.field public static final Companion:Lorg/ton/block/TrComputePhaseAux$Companion;


# instance fields
.field private final exitArg:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final exitCode:I

.field private final gasCredit:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/VarUInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final gasLimit:Lorg/ton/block/VarUInteger;

.field private final gasUsed:Lorg/ton/block/VarUInteger;

.field private final mode:I

.field private final vmFinalStateHash:Lorg/ton/bitstring/BitString;

.field private final vmInitStateHash:Lorg/ton/bitstring/BitString;

.field private final vmSteps:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const-class v0, Lorg/ton/block/Nothing;

    const-class v1, Lorg/ton/block/Just;

    const-class v2, Lorg/ton/block/Maybe;

    const-class v3, Ljava/lang/Object;

    new-instance v4, Lorg/ton/block/TrComputePhaseAux$Companion;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/ton/block/TrComputePhaseAux$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Lorg/ton/block/TrComputePhaseAux;->Companion:Lorg/ton/block/TrComputePhaseAux$Companion;

    const/16 v4, 0x9

    new-array v4, v4, [Lkotlinx/serialization/KSerializer;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 93
    new-instance v14, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const/4 v15, 0x2

    new-array v11, v15, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    aput-object v8, v11, v6

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    aput-object v8, v11, v7

    new-array v12, v15, [Lkotlinx/serialization/KSerializer;

    sget-object v13, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v8, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v5, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v8, v9, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v13, v8}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v12, v6

    sget-object v5, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v8, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v15, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v8, v9, v15}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v8}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    aput-object v8, v12, v7

    new-array v15, v7, [Ljava/lang/annotation/Annotation;

    .line 16
    new-instance v8, Lorg/ton/block/TrPhaseComputeVm$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v9, "@type"

    invoke-direct {v8, v9}, Lorg/ton/block/TrPhaseComputeVm$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v8, v15, v6

    const-string v16, "org.ton.block.Maybe"

    move-object v8, v14

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    move-object/from16 v18, v13

    move-object v13, v15

    invoke-direct/range {v8 .. v13}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v8, 0x2

    aput-object v14, v4, v8

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-object v10, v4, v9

    const/4 v9, 0x4

    aput-object v10, v4, v9

    .line 93
    new-instance v9, Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v21

    new-array v2, v8, [Lkotlin/reflect/KClass;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    aput-object v0, v2, v7

    new-array v0, v8, [Lkotlinx/serialization/KSerializer;

    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v10, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v8, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    move-object/from16 v8, v18

    invoke-virtual {v8, v1}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v8, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v3, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v1}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/annotation/Annotation;

    .line 16
    new-instance v3, Lorg/ton/block/TrPhaseComputeVm$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    move-object/from16 v5, v17

    invoke-direct {v3, v5}, Lorg/ton/block/TrPhaseComputeVm$$serializer$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v6

    const-string v20, "org.ton.block.Maybe"

    move-object/from16 v19, v9

    move-object/from16 v22, v2

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    invoke-direct/range {v19 .. v24}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput-object v1, v4, v0

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const/16 v0, 0x8

    aput-object v1, v4, v0

    .line 93
    sput-object v4, Lorg/ton/block/TrComputePhaseAux;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>(ILorg/ton/block/VarUInteger;Lorg/ton/block/VarUInteger;Lorg/ton/block/Maybe;IILorg/ton/block/Maybe;Lkotlin/UInt;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/block/VarUInteger;",
            "Lorg/ton/block/VarUInteger;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/VarUInteger;",
            ">;II",
            "Lorg/ton/block/Maybe<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/UInt;",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/bitstring/BitString;",
            "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
            ")V"
        }
    .end annotation

    and-int/lit16 p11, p1, 0x1ff

    const/16 v0, 0x1ff

    if-eq v0, p11, :cond_0

    .line 63
    sget-object p11, Lorg/ton/block/TrComputePhaseAux$$serializer;->INSTANCE:Lorg/ton/block/TrComputePhaseAux$$serializer;

    invoke-virtual {p11}, Lorg/ton/block/TrComputePhaseAux$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p11

    invoke-static {p1, v0, p11}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/TrComputePhaseAux;->gasUsed:Lorg/ton/block/VarUInteger;

    iput-object p3, p0, Lorg/ton/block/TrComputePhaseAux;->gasLimit:Lorg/ton/block/VarUInteger;

    iput-object p4, p0, Lorg/ton/block/TrComputePhaseAux;->gasCredit:Lorg/ton/block/Maybe;

    iput p5, p0, Lorg/ton/block/TrComputePhaseAux;->mode:I

    iput p6, p0, Lorg/ton/block/TrComputePhaseAux;->exitCode:I

    iput-object p7, p0, Lorg/ton/block/TrComputePhaseAux;->exitArg:Lorg/ton/block/Maybe;

    invoke-virtual {p8}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/TrComputePhaseAux;->vmSteps:I

    iput-object p9, p0, Lorg/ton/block/TrComputePhaseAux;->vmInitStateHash:Lorg/ton/bitstring/BitString;

    iput-object p10, p0, Lorg/ton/block/TrComputePhaseAux;->vmFinalStateHash:Lorg/ton/bitstring/BitString;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/VarUInteger;Lorg/ton/block/VarUInteger;Lorg/ton/block/Maybe;IILorg/ton/block/Maybe;Lkotlin/UInt;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lorg/ton/block/TrComputePhaseAux;-><init>(ILorg/ton/block/VarUInteger;Lorg/ton/block/VarUInteger;Lorg/ton/block/Maybe;IILorg/ton/block/Maybe;Lkotlin/UInt;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lorg/ton/block/VarUInteger;Lorg/ton/block/VarUInteger;Lorg/ton/block/Maybe;IILorg/ton/block/Maybe;ILorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/VarUInteger;",
            "Lorg/ton/block/VarUInteger;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/VarUInteger;",
            ">;II",
            "Lorg/ton/block/Maybe<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/bitstring/BitString;",
            ")V"
        }
    .end annotation

    const-string v0, "gasUsed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasLimit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasCredit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exitArg"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vmInitStateHash"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vmFinalStateHash"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/ton/block/TrComputePhaseAux;->gasUsed:Lorg/ton/block/VarUInteger;

    .line 66
    iput-object p2, p0, Lorg/ton/block/TrComputePhaseAux;->gasLimit:Lorg/ton/block/VarUInteger;

    .line 67
    iput-object p3, p0, Lorg/ton/block/TrComputePhaseAux;->gasCredit:Lorg/ton/block/Maybe;

    .line 68
    iput p4, p0, Lorg/ton/block/TrComputePhaseAux;->mode:I

    .line 69
    iput p5, p0, Lorg/ton/block/TrComputePhaseAux;->exitCode:I

    .line 70
    iput-object p6, p0, Lorg/ton/block/TrComputePhaseAux;->exitArg:Lorg/ton/block/Maybe;

    .line 71
    iput p7, p0, Lorg/ton/block/TrComputePhaseAux;->vmSteps:I

    .line 72
    iput-object p8, p0, Lorg/ton/block/TrComputePhaseAux;->vmInitStateHash:Lorg/ton/bitstring/BitString;

    .line 73
    iput-object p9, p0, Lorg/ton/block/TrComputePhaseAux;->vmFinalStateHash:Lorg/ton/bitstring/BitString;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/block/VarUInteger;Lorg/ton/block/VarUInteger;Lorg/ton/block/Maybe;IILorg/ton/block/Maybe;ILorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/ton/block/TrComputePhaseAux;-><init>(Lorg/ton/block/VarUInteger;Lorg/ton/block/VarUInteger;Lorg/ton/block/Maybe;IILorg/ton/block/Maybe;ILorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 63
    sget-object v0, Lorg/ton/block/TrComputePhaseAux;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/TrComputePhaseAux;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 63
    sget-object v0, Lorg/ton/block/TrComputePhaseAux;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/block/VarUInteger$$serializer;->INSTANCE:Lorg/ton/block/VarUInteger$$serializer;

    iget-object v2, p0, Lorg/ton/block/TrComputePhaseAux;->gasUsed:Lorg/ton/block/VarUInteger;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/ton/block/TrComputePhaseAux;->gasLimit:Lorg/ton/block/VarUInteger;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/TrComputePhaseAux;->gasCredit:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v1, p0, Lorg/ton/block/TrComputePhaseAux;->mode:I

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget v1, p0, Lorg/ton/block/TrComputePhaseAux;->exitCode:I

    const/4 v2, 0x4

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/block/TrComputePhaseAux;->exitArg:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    iget v1, p0, Lorg/ton/block/TrComputePhaseAux;->vmSteps:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->vmInitStateHash:Lorg/ton/bitstring/BitString;

    const/4 v2, 0x7

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/ton/block/TrComputePhaseAux;->vmFinalStateHash:Lorg/ton/bitstring/BitString;

    const/16 v1, 0x8

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
    instance-of v1, p1, Lorg/ton/block/TrComputePhaseAux;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/TrComputePhaseAux;

    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->gasUsed:Lorg/ton/block/VarUInteger;

    iget-object v3, p1, Lorg/ton/block/TrComputePhaseAux;->gasUsed:Lorg/ton/block/VarUInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->gasLimit:Lorg/ton/block/VarUInteger;

    iget-object v3, p1, Lorg/ton/block/TrComputePhaseAux;->gasLimit:Lorg/ton/block/VarUInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->gasCredit:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/TrComputePhaseAux;->gasCredit:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lorg/ton/block/TrComputePhaseAux;->mode:I

    iget v3, p1, Lorg/ton/block/TrComputePhaseAux;->mode:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lorg/ton/block/TrComputePhaseAux;->exitCode:I

    iget v3, p1, Lorg/ton/block/TrComputePhaseAux;->exitCode:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->exitArg:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/TrComputePhaseAux;->exitArg:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lorg/ton/block/TrComputePhaseAux;->vmSteps:I

    iget v3, p1, Lorg/ton/block/TrComputePhaseAux;->vmSteps:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->vmInitStateHash:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/TrComputePhaseAux;->vmInitStateHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->vmFinalStateHash:Lorg/ton/bitstring/BitString;

    iget-object p1, p1, Lorg/ton/block/TrComputePhaseAux;->vmFinalStateHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getExitArg()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/ton/block/TrComputePhaseAux;->exitArg:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final getExitCode()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/ton/block/TrComputePhaseAux;->exitCode:I

    return v0
.end method

.method public final getGasCredit()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/VarUInteger;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/ton/block/TrComputePhaseAux;->gasCredit:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final getGasLimit()Lorg/ton/block/VarUInteger;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/ton/block/TrComputePhaseAux;->gasLimit:Lorg/ton/block/VarUInteger;

    return-object v0
.end method

.method public final getGasUsed()Lorg/ton/block/VarUInteger;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/ton/block/TrComputePhaseAux;->gasUsed:Lorg/ton/block/VarUInteger;

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/ton/block/TrComputePhaseAux;->mode:I

    return v0
.end method

.method public final getVmFinalStateHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/ton/block/TrComputePhaseAux;->vmFinalStateHash:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getVmInitStateHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/ton/block/TrComputePhaseAux;->vmInitStateHash:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getVmSteps-pVg5ArA()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/ton/block/TrComputePhaseAux;->vmSteps:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/TrComputePhaseAux;->gasUsed:Lorg/ton/block/VarUInteger;

    invoke-virtual {v0}, Lorg/ton/block/VarUInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->gasLimit:Lorg/ton/block/VarUInteger;

    invoke-virtual {v1}, Lorg/ton/block/VarUInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->gasCredit:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/TrComputePhaseAux;->mode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/TrComputePhaseAux;->exitCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->exitArg:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/TrComputePhaseAux;->vmSteps:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->vmInitStateHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->vmFinalStateHash:Lorg/ton/bitstring/BitString;

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

    .line 78
    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->gasUsed:Lorg/ton/block/VarUInteger;

    const-string v2, "gas_used"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 79
    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->gasLimit:Lorg/ton/block/VarUInteger;

    const-string v2, "gas_limit"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 80
    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->gasCredit:Lorg/ton/block/Maybe;

    const-string v2, "gas_credit"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 81
    iget v1, p0, Lorg/ton/block/TrComputePhaseAux;->mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 82
    iget v1, p0, Lorg/ton/block/TrComputePhaseAux;->exitCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exit_code"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 83
    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->exitArg:Lorg/ton/block/Maybe;

    const-string v2, "exit_arg"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 84
    iget v1, p0, Lorg/ton/block/TrComputePhaseAux;->vmSteps:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "vm_steps"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 85
    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->vmInitStateHash:Lorg/ton/bitstring/BitString;

    const-string v2, "vm_init_state_hash"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 86
    iget-object v1, p0, Lorg/ton/block/TrComputePhaseAux;->vmFinalStateHash:Lorg/ton/bitstring/BitString;

    const-string v2, "vm_final_state_hash"

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

    .line 91
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
