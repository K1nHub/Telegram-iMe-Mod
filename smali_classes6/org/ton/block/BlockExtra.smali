.class public final Lorg/ton/block/BlockExtra;
.super Ljava/lang/Object;
.source "BlockExtra.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/BlockExtra$$serializer;,
        Lorg/ton/block/BlockExtra$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockExtra.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockExtra.kt\norg/ton/block/BlockExtra\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,81:1\n82#2,3:82\n*S KotlinDebug\n*F\n+ 1 BlockExtra.kt\norg/ton/block/BlockExtra\n*L\n23#1:82,3\n*E\n"
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

.field public static final Companion:Lorg/ton/block/BlockExtra$Companion;


# instance fields
.field private final accountBlocks:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/AccountBlock;",
            "Lorg/ton/block/CurrencyCollection;",
            ">;>;"
        }
    .end annotation
.end field

.field private final createdBy:Lorg/ton/bitstring/BitString;

.field private final custom:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McBlockExtra;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inMsgDescr:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/InMsg;",
            "Lorg/ton/block/ImportFees;",
            ">;>;"
        }
    .end annotation
.end field

.field private final outMsgDescr:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/OutMsg;",
            "Lorg/ton/block/CurrencyCollection;",
            ">;>;"
        }
    .end annotation
.end field

.field private final randSeed:Lorg/ton/bitstring/BitString;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-class v0, Ljava/lang/Object;

    const-class v1, Lorg/ton/tlb/CellRef;

    new-instance v2, Lorg/ton/block/BlockExtra$Companion;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/ton/block/BlockExtra$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lorg/ton/block/BlockExtra;->Companion:Lorg/ton/block/BlockExtra$Companion;

    const/4 v2, 0x6

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    .line 35
    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v4, v5, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    aput-object v4, v2, v6

    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v4, v5, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v5, 0x1

    aput-object v4, v2, v5

    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-array v7, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v4, v1, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v1, 0x2

    aput-object v4, v2, v1

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v4, 0x4

    aput-object v3, v2, v4

    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lorg/ton/block/Maybe;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v1, [Lkotlin/reflect/KClass;

    const-class v4, Lorg/ton/block/Just;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    aput-object v4, v10, v6

    const-class v4, Lorg/ton/block/Nothing;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    aput-object v4, v10, v5

    new-array v11, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v4, v7, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v1, v4}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v11, v6

    sget-object v1, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v7, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v4, v0, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v1, v4}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v11, v5

    new-array v12, v5, [Ljava/lang/annotation/Annotation;

    .line 16
    new-instance v0, Lorg/ton/block/BlockExtra$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v1, "@type"

    invoke-direct {v0, v1}, Lorg/ton/block/BlockExtra$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v12, v6

    const-string v8, "org.ton.block.Maybe"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x5

    aput-object v3, v2, v0

    .line 35
    sput-object v2, Lorg/ton/block/BlockExtra;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lorg/ton/block/Maybe;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p1, 0x3f

    const/16 v0, 0x3f

    if-eq v0, p8, :cond_0

    .line 12
    sget-object p8, Lorg/ton/block/BlockExtra$$serializer;->INSTANCE:Lorg/ton/block/BlockExtra$$serializer;

    invoke-virtual {p8}, Lorg/ton/block/BlockExtra$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/BlockExtra;->inMsgDescr:Lorg/ton/tlb/CellRef;

    iput-object p3, p0, Lorg/ton/block/BlockExtra;->outMsgDescr:Lorg/ton/tlb/CellRef;

    iput-object p4, p0, Lorg/ton/block/BlockExtra;->accountBlocks:Lorg/ton/tlb/CellRef;

    iput-object p5, p0, Lorg/ton/block/BlockExtra;->randSeed:Lorg/ton/bitstring/BitString;

    iput-object p6, p0, Lorg/ton/block/BlockExtra;->createdBy:Lorg/ton/bitstring/BitString;

    iput-object p7, p0, Lorg/ton/block/BlockExtra;->custom:Lorg/ton/block/Maybe;

    return-void
.end method

.method public constructor <init>(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lorg/ton/block/Maybe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/InMsg;",
            "Lorg/ton/block/ImportFees;",
            ">;>;",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/OutMsg;",
            "Lorg/ton/block/CurrencyCollection;",
            ">;>;",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/AccountBlock;",
            "Lorg/ton/block/CurrencyCollection;",
            ">;>;",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McBlockExtra;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "inMsgDescr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outMsgDescr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountBlocks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "randSeed"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdBy"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "custom"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/ton/block/BlockExtra;->inMsgDescr:Lorg/ton/tlb/CellRef;

    .line 16
    iput-object p2, p0, Lorg/ton/block/BlockExtra;->outMsgDescr:Lorg/ton/tlb/CellRef;

    .line 17
    iput-object p3, p0, Lorg/ton/block/BlockExtra;->accountBlocks:Lorg/ton/tlb/CellRef;

    .line 18
    iput-object p4, p0, Lorg/ton/block/BlockExtra;->randSeed:Lorg/ton/bitstring/BitString;

    .line 19
    iput-object p5, p0, Lorg/ton/block/BlockExtra;->createdBy:Lorg/ton/bitstring/BitString;

    .line 20
    iput-object p6, p0, Lorg/ton/block/BlockExtra;->custom:Lorg/ton/block/Maybe;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/block/BlockExtra;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/BlockExtra;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 12
    sget-object v0, Lorg/ton/block/BlockExtra;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/BlockExtra;->inMsgDescr:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/BlockExtra;->outMsgDescr:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/BlockExtra;->accountBlocks:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object v2, p0, Lorg/ton/block/BlockExtra;->randSeed:Lorg/ton/bitstring/BitString;

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/ton/block/BlockExtra;->createdBy:Lorg/ton/bitstring/BitString;

    const/4 v3, 0x4

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/BlockExtra;->custom:Lorg/ton/block/Maybe;

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
    instance-of v1, p1, Lorg/ton/block/BlockExtra;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/BlockExtra;

    iget-object v1, p0, Lorg/ton/block/BlockExtra;->inMsgDescr:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/BlockExtra;->inMsgDescr:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/BlockExtra;->outMsgDescr:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/BlockExtra;->outMsgDescr:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/BlockExtra;->accountBlocks:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/BlockExtra;->accountBlocks:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/BlockExtra;->randSeed:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/BlockExtra;->randSeed:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/block/BlockExtra;->createdBy:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/BlockExtra;->createdBy:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/ton/block/BlockExtra;->custom:Lorg/ton/block/Maybe;

    iget-object p1, p1, Lorg/ton/block/BlockExtra;->custom:Lorg/ton/block/Maybe;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAccountBlocks()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/AccountBlock;",
            "Lorg/ton/block/CurrencyCollection;",
            ">;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/ton/block/BlockExtra;->accountBlocks:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getCreatedBy()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/block/BlockExtra;->createdBy:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getCustom()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McBlockExtra;",
            ">;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/ton/block/BlockExtra;->custom:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final getInMsgDescr()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/InMsg;",
            "Lorg/ton/block/ImportFees;",
            ">;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/ton/block/BlockExtra;->inMsgDescr:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getOutMsgDescr()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/OutMsg;",
            "Lorg/ton/block/CurrencyCollection;",
            ">;>;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/ton/block/BlockExtra;->outMsgDescr:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getRandSeed()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/block/BlockExtra;->randSeed:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/BlockExtra;->inMsgDescr:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/BlockExtra;->outMsgDescr:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/BlockExtra;->accountBlocks:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/BlockExtra;->randSeed:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/BlockExtra;->createdBy:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/BlockExtra;->custom:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block_extra"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lorg/ton/block/BlockExtra;->inMsgDescr:Lorg/ton/tlb/CellRef;

    const-string v2, "in_msg_descr"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 25
    iget-object v1, p0, Lorg/ton/block/BlockExtra;->outMsgDescr:Lorg/ton/tlb/CellRef;

    const-string v2, "out_msg_descr"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 26
    iget-object v1, p0, Lorg/ton/block/BlockExtra;->accountBlocks:Lorg/ton/tlb/CellRef;

    const-string v2, "account_blocks"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 27
    iget-object v1, p0, Lorg/ton/block/BlockExtra;->randSeed:Lorg/ton/bitstring/BitString;

    const-string v2, "rand_seed"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 28
    iget-object v1, p0, Lorg/ton/block/BlockExtra;->createdBy:Lorg/ton/bitstring/BitString;

    const-string v2, "created_by"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 29
    iget-object v1, p0, Lorg/ton/block/BlockExtra;->custom:Lorg/ton/block/Maybe;

    const-string v2, "custom"

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

    .line 33
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
