.class public final Lorg/ton/block/ShardStateUnsplit;
.super Ljava/lang/Object;
.source "ShardStateUnsplit.kt"

# interfaces
.implements Lorg/ton/block/ShardState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ShardStateUnsplit$$serializer;,
        Lorg/ton/block/ShardStateUnsplit$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShardStateUnsplit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShardStateUnsplit.kt\norg/ton/block/ShardStateUnsplit\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,185:1\n82#2,3:186\n*S KotlinDebug\n*F\n+ 1 ShardStateUnsplit.kt\norg/ton/block/ShardStateUnsplit\n*L\n29#1:186,3\n*E\n"
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

.field public static final Companion:Lorg/ton/block/ShardStateUnsplit$Companion;


# instance fields
.field private final accounts:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/ShardAccounts;",
            ">;"
        }
    .end annotation
.end field

.field private final beforeSplit:Z

.field private final custom:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McStateExtra;",
            ">;>;"
        }
    .end annotation
.end field

.field private final genLt:J

.field private final genUtime:I

.field private final globalId:I

.field private final minRefMcSeqno:I

.field private final outMsgQueueInfo:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/OutMsgQueueInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final r1:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/ShardStateUnsplitAux;",
            ">;"
        }
    .end annotation
.end field

.field private final seqNo:I

.field private final shardId:Lorg/ton/block/ShardIdent;

.field private final vertSeqNo:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-class v0, Ljava/lang/Object;

    const-class v1, Lorg/ton/tlb/CellRef;

    new-instance v2, Lorg/ton/block/ShardStateUnsplit$Companion;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/ton/block/ShardStateUnsplit$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lorg/ton/block/ShardStateUnsplit;->Companion:Lorg/ton/block/ShardStateUnsplit$Companion;

    const/16 v2, 0xc

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const/4 v7, 0x4

    aput-object v3, v2, v7

    const/4 v7, 0x5

    aput-object v3, v2, v7

    const/4 v7, 0x6

    aput-object v3, v2, v7

    .line 47
    new-instance v7, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v8, v9}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v8, 0x7

    aput-object v7, v2, v8

    const/16 v7, 0x8

    aput-object v3, v2, v7

    new-instance v3, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {v3, v7, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/16 v7, 0x9

    aput-object v3, v2, v7

    new-instance v3, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-array v7, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {v3, v1, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/16 v1, 0xa

    aput-object v3, v2, v1

    new-instance v1, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lorg/ton/block/Maybe;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v6, [Lkotlin/reflect/KClass;

    const-class v3, Lorg/ton/block/Just;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    aput-object v3, v10, v4

    const-class v3, Lorg/ton/block/Nothing;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    aput-object v3, v10, v5

    new-array v11, v6, [Lkotlinx/serialization/KSerializer;

    sget-object v3, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v7, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v3, v6}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v11, v4

    sget-object v3, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v7, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v0, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v3, v6}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v11, v5

    new-array v12, v5, [Ljava/lang/annotation/Annotation;

    .line 16
    new-instance v0, Lorg/ton/block/ShardStateUnsplit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v3, "@type"

    invoke-direct {v0, v3}, Lorg/ton/block/ShardStateUnsplit$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v12, v4

    const-string v8, "org.ton.block.Maybe"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    const/16 v0, 0xb

    aput-object v1, v2, v0

    .line 47
    sput-object v2, Lorg/ton/block/ShardStateUnsplit;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>(IILorg/ton/block/ShardIdent;Lkotlin/UInt;ILkotlin/UInt;Lkotlin/ULong;Lkotlin/UInt;Lorg/ton/tlb/CellRef;ZLorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/block/Maybe;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/ton/block/ShardIdent;",
            "Lkotlin/UInt;",
            "I",
            "Lkotlin/UInt;",
            "Lkotlin/ULong;",
            "Lkotlin/UInt;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/OutMsgQueueInfo;",
            ">;Z",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/ShardAccounts;",
            ">;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/ShardStateUnsplitAux;",
            ">;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McStateExtra;",
            ">;>;",
            "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
            ")V"
        }
    .end annotation

    and-int/lit16 p14, p1, 0xfff

    const/16 v0, 0xfff

    if-eq v0, p14, :cond_0

    .line 12
    sget-object p14, Lorg/ton/block/ShardStateUnsplit$$serializer;->INSTANCE:Lorg/ton/block/ShardStateUnsplit$$serializer;

    invoke-virtual {p14}, Lorg/ton/block/ShardStateUnsplit$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p14

    invoke-static {p1, v0, p14}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/block/ShardStateUnsplit;->globalId:I

    iput-object p3, p0, Lorg/ton/block/ShardStateUnsplit;->shardId:Lorg/ton/block/ShardIdent;

    invoke-virtual {p4}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/ShardStateUnsplit;->seqNo:I

    iput p5, p0, Lorg/ton/block/ShardStateUnsplit;->vertSeqNo:I

    invoke-virtual {p6}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/ShardStateUnsplit;->genUtime:I

    invoke-virtual {p7}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/ShardStateUnsplit;->genLt:J

    invoke-virtual {p8}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/ShardStateUnsplit;->minRefMcSeqno:I

    iput-object p9, p0, Lorg/ton/block/ShardStateUnsplit;->outMsgQueueInfo:Lorg/ton/tlb/CellRef;

    iput-boolean p10, p0, Lorg/ton/block/ShardStateUnsplit;->beforeSplit:Z

    iput-object p11, p0, Lorg/ton/block/ShardStateUnsplit;->accounts:Lorg/ton/tlb/CellRef;

    iput-object p12, p0, Lorg/ton/block/ShardStateUnsplit;->r1:Lorg/ton/tlb/CellRef;

    iput-object p13, p0, Lorg/ton/block/ShardStateUnsplit;->custom:Lorg/ton/block/Maybe;

    return-void
.end method

.method public synthetic constructor <init>(IILorg/ton/block/ShardIdent;Lkotlin/UInt;ILkotlin/UInt;Lkotlin/ULong;Lkotlin/UInt;Lorg/ton/tlb/CellRef;ZLorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/block/Maybe;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lorg/ton/block/ShardStateUnsplit;-><init>(IILorg/ton/block/ShardIdent;Lkotlin/UInt;ILkotlin/UInt;Lkotlin/ULong;Lkotlin/UInt;Lorg/ton/tlb/CellRef;ZLorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/block/Maybe;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(ILorg/ton/block/ShardIdent;IIIJILorg/ton/tlb/CellRef;ZLorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/block/Maybe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/block/ShardIdent;",
            "IIIJI",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/OutMsgQueueInfo;",
            ">;Z",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/ShardAccounts;",
            ">;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/ShardStateUnsplitAux;",
            ">;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McStateExtra;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "shardId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outMsgQueueInfo"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accounts"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r1"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "custom"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/ton/block/ShardStateUnsplit;->globalId:I

    .line 16
    iput-object p2, p0, Lorg/ton/block/ShardStateUnsplit;->shardId:Lorg/ton/block/ShardIdent;

    .line 17
    iput p3, p0, Lorg/ton/block/ShardStateUnsplit;->seqNo:I

    .line 18
    iput p4, p0, Lorg/ton/block/ShardStateUnsplit;->vertSeqNo:I

    .line 19
    iput p5, p0, Lorg/ton/block/ShardStateUnsplit;->genUtime:I

    .line 20
    iput-wide p6, p0, Lorg/ton/block/ShardStateUnsplit;->genLt:J

    .line 21
    iput p8, p0, Lorg/ton/block/ShardStateUnsplit;->minRefMcSeqno:I

    .line 22
    iput-object p9, p0, Lorg/ton/block/ShardStateUnsplit;->outMsgQueueInfo:Lorg/ton/tlb/CellRef;

    .line 23
    iput-boolean p10, p0, Lorg/ton/block/ShardStateUnsplit;->beforeSplit:Z

    .line 24
    iput-object p11, p0, Lorg/ton/block/ShardStateUnsplit;->accounts:Lorg/ton/tlb/CellRef;

    .line 25
    iput-object p12, p0, Lorg/ton/block/ShardStateUnsplit;->r1:Lorg/ton/tlb/CellRef;

    .line 26
    iput-object p13, p0, Lorg/ton/block/ShardStateUnsplit;->custom:Lorg/ton/block/Maybe;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/ShardIdent;IIIJILorg/ton/tlb/CellRef;ZLorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/block/Maybe;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lorg/ton/block/ShardStateUnsplit;-><init>(ILorg/ton/block/ShardIdent;IIIJILorg/ton/tlb/CellRef;ZLorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/block/Maybe;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/block/ShardStateUnsplit;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/ShardStateUnsplit;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5

    .line 12
    sget-object v0, Lorg/ton/block/ShardStateUnsplit;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->globalId:I

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v1, Lorg/ton/block/ShardIdent$$serializer;->INSTANCE:Lorg/ton/block/ShardIdent$$serializer;

    iget-object v2, p0, Lorg/ton/block/ShardStateUnsplit;->shardId:Lorg/ton/block/ShardIdent;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    iget v2, p0, Lorg/ton/block/ShardStateUnsplit;->seqNo:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v2, p0, Lorg/ton/block/ShardStateUnsplit;->vertSeqNo:I

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget v2, p0, Lorg/ton/block/ShardStateUnsplit;->genUtime:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v2, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v3, p0, Lorg/ton/block/ShardStateUnsplit;->genLt:J

    invoke-static {v3, v4}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v3

    const/4 v4, 0x5

    invoke-interface {p1, p2, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v2, p0, Lorg/ton/block/ShardStateUnsplit;->minRefMcSeqno:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x7

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/ShardStateUnsplit;->outMsgQueueInfo:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lorg/ton/block/ShardStateUnsplit;->beforeSplit:Z

    const/16 v2, 0x8

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v1, 0x9

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/ShardStateUnsplit;->accounts:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xa

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/ShardStateUnsplit;->r1:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/ShardStateUnsplit;->custom:Lorg/ton/block/Maybe;

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
    instance-of v1, p1, Lorg/ton/block/ShardStateUnsplit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/ShardStateUnsplit;

    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->globalId:I

    iget v3, p1, Lorg/ton/block/ShardStateUnsplit;->globalId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->shardId:Lorg/ton/block/ShardIdent;

    iget-object v3, p1, Lorg/ton/block/ShardStateUnsplit;->shardId:Lorg/ton/block/ShardIdent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->seqNo:I

    iget v3, p1, Lorg/ton/block/ShardStateUnsplit;->seqNo:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->vertSeqNo:I

    iget v3, p1, Lorg/ton/block/ShardStateUnsplit;->vertSeqNo:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->genUtime:I

    iget v3, p1, Lorg/ton/block/ShardStateUnsplit;->genUtime:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lorg/ton/block/ShardStateUnsplit;->genLt:J

    iget-wide v5, p1, Lorg/ton/block/ShardStateUnsplit;->genLt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->minRefMcSeqno:I

    iget v3, p1, Lorg/ton/block/ShardStateUnsplit;->minRefMcSeqno:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->outMsgQueueInfo:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/ShardStateUnsplit;->outMsgQueueInfo:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lorg/ton/block/ShardStateUnsplit;->beforeSplit:Z

    iget-boolean v3, p1, Lorg/ton/block/ShardStateUnsplit;->beforeSplit:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->accounts:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/ShardStateUnsplit;->accounts:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->r1:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/ShardStateUnsplit;->r1:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->custom:Lorg/ton/block/Maybe;

    iget-object p1, p1, Lorg/ton/block/ShardStateUnsplit;->custom:Lorg/ton/block/Maybe;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getAccounts()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/ShardAccounts;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/ton/block/ShardStateUnsplit;->accounts:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getBeforeSplit()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lorg/ton/block/ShardStateUnsplit;->beforeSplit:Z

    return v0
.end method

.method public final getCustom()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McStateExtra;",
            ">;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/ton/block/ShardStateUnsplit;->custom:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public final getGenLt-s-VKNKU()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lorg/ton/block/ShardStateUnsplit;->genLt:J

    return-wide v0
.end method

.method public final getGenUtime-pVg5ArA()I
    .locals 1

    .line 19
    iget v0, p0, Lorg/ton/block/ShardStateUnsplit;->genUtime:I

    return v0
.end method

.method public final getGlobalId()I
    .locals 1

    .line 15
    iget v0, p0, Lorg/ton/block/ShardStateUnsplit;->globalId:I

    return v0
.end method

.method public final getMinRefMcSeqno-pVg5ArA()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/ton/block/ShardStateUnsplit;->minRefMcSeqno:I

    return v0
.end method

.method public final getOutMsgQueueInfo()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/OutMsgQueueInfo;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/ton/block/ShardStateUnsplit;->outMsgQueueInfo:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getR1()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/ShardStateUnsplitAux;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/ton/block/ShardStateUnsplit;->r1:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getSeqNo-pVg5ArA()I
    .locals 1

    .line 17
    iget v0, p0, Lorg/ton/block/ShardStateUnsplit;->seqNo:I

    return v0
.end method

.method public final getShardId()Lorg/ton/block/ShardIdent;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/block/ShardStateUnsplit;->shardId:Lorg/ton/block/ShardIdent;

    return-object v0
.end method

.method public final getVertSeqNo()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/ton/block/ShardStateUnsplit;->vertSeqNo:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/ton/block/ShardStateUnsplit;->globalId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->shardId:Lorg/ton/block/ShardIdent;

    invoke-virtual {v1}, Lorg/ton/block/ShardIdent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->seqNo:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->vertSeqNo:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->genUtime:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/ShardStateUnsplit;->genLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->minRefMcSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->outMsgQueueInfo:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/ShardStateUnsplit;->beforeSplit:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->accounts:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->r1:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->custom:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shard_state"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 30
    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->globalId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_id"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 31
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->shardId:Lorg/ton/block/ShardIdent;

    const-string v2, "shard_id"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 32
    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->seqNo:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "seq_no"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 33
    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->vertSeqNo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vert_seq_no"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 34
    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->genUtime:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "gen_utime"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 35
    iget-wide v1, p0, Lorg/ton/block/ShardStateUnsplit;->genLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "gen_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 36
    iget v1, p0, Lorg/ton/block/ShardStateUnsplit;->minRefMcSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "min_ref_mc_seqno"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 37
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->outMsgQueueInfo:Lorg/ton/tlb/CellRef;

    const-string v2, "out_msg_queue_info"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 38
    iget-boolean v1, p0, Lorg/ton/block/ShardStateUnsplit;->beforeSplit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "before_split"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 39
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->accounts:Lorg/ton/tlb/CellRef;

    const-string v2, "accounts"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 40
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->r1:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 41
    iget-object v1, p0, Lorg/ton/block/ShardStateUnsplit;->custom:Lorg/ton/block/Maybe;

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

    .line 45
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
