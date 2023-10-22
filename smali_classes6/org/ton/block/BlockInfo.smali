.class public final Lorg/ton/block/BlockInfo;
.super Ljava/lang/Object;
.source "BlockInfo.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/BlockInfo$$serializer;,
        Lorg/ton/block/BlockInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockInfo.kt\norg/ton/block/BlockInfo\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,188:1\n82#2,3:189\n*S KotlinDebug\n*F\n+ 1 BlockInfo.kt\norg/ton/block/BlockInfo\n*L\n39#1:189,3\n*E\n"
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

.field public static final Companion:Lorg/ton/block/BlockInfo$Companion;


# instance fields
.field private final afterMerge:Z

.field private final afterSplit:Z

.field private final beforeSplit:Z

.field private final endLt:J

.field private final flags:I

.field private final genCatchainSeqno:I

.field private final genSoftware:Lorg/ton/block/GlobalVersion;

.field private final genUtime:I

.field private final genValidatorListHashShort:I

.field private final keyBlock:Z

.field private final masterRef:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BlkMasterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final minRefMcSeqno:I

.field private final notMaster:Z

.field private final prevKeyBlockSeqno:I

.field private final prevRef:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BlkPrevInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final prevVertRef:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BlkPrevInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final seqNo:I

.field private final shard:Lorg/ton/block/ShardIdent;

.field private final startLt:J

.field private final version:I

.field private final vertSeqNo:I

.field private final vertSeqnoIncr:Z

.field private final wantMerge:Z

.field private final wantSplit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lorg/ton/tlb/CellRef;

    new-instance v1, Lorg/ton/block/BlockInfo$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/BlockInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/BlockInfo;->Companion:Lorg/ton/block/BlockInfo$Companion;

    const/16 v1, 0x18

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const/4 v4, 0x5

    aput-object v2, v1, v4

    const/4 v4, 0x6

    aput-object v2, v1, v4

    const/4 v4, 0x7

    aput-object v2, v1, v4

    const/16 v4, 0x8

    aput-object v2, v1, v4

    const/16 v4, 0x9

    aput-object v2, v1, v4

    const/16 v4, 0xa

    aput-object v2, v1, v4

    const/16 v4, 0xb

    aput-object v2, v1, v4

    const/16 v4, 0xc

    aput-object v2, v1, v4

    const/16 v4, 0xd

    aput-object v2, v1, v4

    const/16 v4, 0xe

    aput-object v2, v1, v4

    const/16 v4, 0xf

    aput-object v2, v1, v4

    const/16 v4, 0x10

    aput-object v2, v1, v4

    const/16 v4, 0x11

    aput-object v2, v1, v4

    const/16 v4, 0x12

    aput-object v2, v1, v4

    const/16 v4, 0x13

    aput-object v2, v1, v4

    const/16 v4, 0x14

    aput-object v2, v1, v4

    .line 69
    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v4, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/16 v4, 0x15

    aput-object v2, v1, v4

    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v4, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/16 v4, 0x16

    aput-object v2, v1, v4

    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v0, v3}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/16 v0, 0x17

    aput-object v2, v1, v0

    sput-object v1, Lorg/ton/block/BlockInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>(ILkotlin/UInt;ZZZZZZZZIIILorg/ton/block/ShardIdent;Lkotlin/UInt;Lkotlin/ULong;Lkotlin/ULong;Lkotlin/UInt;Lkotlin/UInt;Lkotlin/UInt;Lkotlin/UInt;Lorg/ton/block/GlobalVersion;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/UInt;",
            "ZZZZZZZZIII",
            "Lorg/ton/block/ShardIdent;",
            "Lkotlin/UInt;",
            "Lkotlin/ULong;",
            "Lkotlin/ULong;",
            "Lkotlin/UInt;",
            "Lkotlin/UInt;",
            "Lkotlin/UInt;",
            "Lkotlin/UInt;",
            "Lorg/ton/block/GlobalVersion;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BlkMasterInfo;",
            ">;",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BlkPrevInfo;",
            ">;",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BlkPrevInfo;",
            ">;",
            "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    const v2, 0xffffff

    and-int v3, v1, v2

    if-eq v2, v3, :cond_0

    .line 10
    sget-object v3, Lorg/ton/block/BlockInfo$$serializer;->INSTANCE:Lorg/ton/block/BlockInfo$$serializer;

    invoke-virtual {v3}, Lorg/ton/block/BlockInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lkotlin/UInt;->unbox-impl()I

    move-result v1

    iput v1, v0, Lorg/ton/block/BlockInfo;->version:I

    move v1, p3

    iput-boolean v1, v0, Lorg/ton/block/BlockInfo;->notMaster:Z

    move v1, p4

    iput-boolean v1, v0, Lorg/ton/block/BlockInfo;->afterMerge:Z

    move v1, p5

    iput-boolean v1, v0, Lorg/ton/block/BlockInfo;->beforeSplit:Z

    move v1, p6

    iput-boolean v1, v0, Lorg/ton/block/BlockInfo;->afterSplit:Z

    move v1, p7

    iput-boolean v1, v0, Lorg/ton/block/BlockInfo;->wantSplit:Z

    move v1, p8

    iput-boolean v1, v0, Lorg/ton/block/BlockInfo;->wantMerge:Z

    move v1, p9

    iput-boolean v1, v0, Lorg/ton/block/BlockInfo;->keyBlock:Z

    move v1, p10

    iput-boolean v1, v0, Lorg/ton/block/BlockInfo;->vertSeqnoIncr:Z

    move v1, p11

    iput v1, v0, Lorg/ton/block/BlockInfo;->flags:I

    move/from16 v1, p12

    iput v1, v0, Lorg/ton/block/BlockInfo;->seqNo:I

    move/from16 v1, p13

    iput v1, v0, Lorg/ton/block/BlockInfo;->vertSeqNo:I

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/ton/block/BlockInfo;->shard:Lorg/ton/block/ShardIdent;

    invoke-virtual/range {p15 .. p15}, Lkotlin/UInt;->unbox-impl()I

    move-result v1

    iput v1, v0, Lorg/ton/block/BlockInfo;->genUtime:I

    invoke-virtual/range {p16 .. p16}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/ton/block/BlockInfo;->startLt:J

    invoke-virtual/range {p17 .. p17}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/ton/block/BlockInfo;->endLt:J

    invoke-virtual/range {p18 .. p18}, Lkotlin/UInt;->unbox-impl()I

    move-result v1

    iput v1, v0, Lorg/ton/block/BlockInfo;->genValidatorListHashShort:I

    invoke-virtual/range {p19 .. p19}, Lkotlin/UInt;->unbox-impl()I

    move-result v1

    iput v1, v0, Lorg/ton/block/BlockInfo;->genCatchainSeqno:I

    invoke-virtual/range {p20 .. p20}, Lkotlin/UInt;->unbox-impl()I

    move-result v1

    iput v1, v0, Lorg/ton/block/BlockInfo;->minRefMcSeqno:I

    invoke-virtual/range {p21 .. p21}, Lkotlin/UInt;->unbox-impl()I

    move-result v1

    iput v1, v0, Lorg/ton/block/BlockInfo;->prevKeyBlockSeqno:I

    move-object/from16 v1, p22

    iput-object v1, v0, Lorg/ton/block/BlockInfo;->genSoftware:Lorg/ton/block/GlobalVersion;

    move-object/from16 v1, p23

    iput-object v1, v0, Lorg/ton/block/BlockInfo;->masterRef:Lorg/ton/tlb/CellRef;

    move-object/from16 v1, p24

    iput-object v1, v0, Lorg/ton/block/BlockInfo;->prevRef:Lorg/ton/tlb/CellRef;

    move-object/from16 v1, p25

    iput-object v1, v0, Lorg/ton/block/BlockInfo;->prevVertRef:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/UInt;ZZZZZZZZIIILorg/ton/block/ShardIdent;Lkotlin/UInt;Lkotlin/ULong;Lkotlin/ULong;Lkotlin/UInt;Lkotlin/UInt;Lkotlin/UInt;Lkotlin/UInt;Lorg/ton/block/GlobalVersion;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p26}, Lorg/ton/block/BlockInfo;-><init>(ILkotlin/UInt;ZZZZZZZZIIILorg/ton/block/ShardIdent;Lkotlin/UInt;Lkotlin/ULong;Lkotlin/ULong;Lkotlin/UInt;Lkotlin/UInt;Lkotlin/UInt;Lkotlin/UInt;Lorg/ton/block/GlobalVersion;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(IZZZZZZZZIIILorg/ton/block/ShardIdent;IJJIIIILorg/ton/block/GlobalVersion;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZZZZZZIII",
            "Lorg/ton/block/ShardIdent;",
            "IJJIIII",
            "Lorg/ton/block/GlobalVersion;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BlkMasterInfo;",
            ">;",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BlkPrevInfo;",
            ">;",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BlkPrevInfo;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p13

    move-object/from16 v2, p25

    const-string v3, "shard"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "prevRef"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v3, p1

    .line 13
    iput v3, v0, Lorg/ton/block/BlockInfo;->version:I

    move v3, p2

    .line 14
    iput-boolean v3, v0, Lorg/ton/block/BlockInfo;->notMaster:Z

    move v3, p3

    .line 15
    iput-boolean v3, v0, Lorg/ton/block/BlockInfo;->afterMerge:Z

    move v3, p4

    .line 16
    iput-boolean v3, v0, Lorg/ton/block/BlockInfo;->beforeSplit:Z

    move v3, p5

    .line 17
    iput-boolean v3, v0, Lorg/ton/block/BlockInfo;->afterSplit:Z

    move v3, p6

    .line 18
    iput-boolean v3, v0, Lorg/ton/block/BlockInfo;->wantSplit:Z

    move v3, p7

    .line 19
    iput-boolean v3, v0, Lorg/ton/block/BlockInfo;->wantMerge:Z

    move v3, p8

    .line 20
    iput-boolean v3, v0, Lorg/ton/block/BlockInfo;->keyBlock:Z

    move v3, p9

    .line 21
    iput-boolean v3, v0, Lorg/ton/block/BlockInfo;->vertSeqnoIncr:Z

    move v3, p10

    .line 22
    iput v3, v0, Lorg/ton/block/BlockInfo;->flags:I

    move/from16 v3, p11

    .line 23
    iput v3, v0, Lorg/ton/block/BlockInfo;->seqNo:I

    move/from16 v3, p12

    .line 24
    iput v3, v0, Lorg/ton/block/BlockInfo;->vertSeqNo:I

    .line 25
    iput-object v1, v0, Lorg/ton/block/BlockInfo;->shard:Lorg/ton/block/ShardIdent;

    move/from16 v1, p14

    .line 26
    iput v1, v0, Lorg/ton/block/BlockInfo;->genUtime:I

    move-wide/from16 v3, p15

    .line 27
    iput-wide v3, v0, Lorg/ton/block/BlockInfo;->startLt:J

    move-wide/from16 v3, p17

    .line 28
    iput-wide v3, v0, Lorg/ton/block/BlockInfo;->endLt:J

    move/from16 v1, p19

    .line 29
    iput v1, v0, Lorg/ton/block/BlockInfo;->genValidatorListHashShort:I

    move/from16 v1, p20

    .line 30
    iput v1, v0, Lorg/ton/block/BlockInfo;->genCatchainSeqno:I

    move/from16 v1, p21

    .line 31
    iput v1, v0, Lorg/ton/block/BlockInfo;->minRefMcSeqno:I

    move/from16 v1, p22

    .line 32
    iput v1, v0, Lorg/ton/block/BlockInfo;->prevKeyBlockSeqno:I

    move-object/from16 v1, p23

    .line 33
    iput-object v1, v0, Lorg/ton/block/BlockInfo;->genSoftware:Lorg/ton/block/GlobalVersion;

    move-object/from16 v1, p24

    .line 34
    iput-object v1, v0, Lorg/ton/block/BlockInfo;->masterRef:Lorg/ton/tlb/CellRef;

    .line 35
    iput-object v2, v0, Lorg/ton/block/BlockInfo;->prevRef:Lorg/ton/tlb/CellRef;

    move-object/from16 v1, p26

    .line 36
    iput-object v1, v0, Lorg/ton/block/BlockInfo;->prevVertRef:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public synthetic constructor <init>(IZZZZZZZZIIILorg/ton/block/ShardIdent;IJJIIIILorg/ton/block/GlobalVersion;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p26}, Lorg/ton/block/BlockInfo;-><init>(IZZZZZZZZIIILorg/ton/block/ShardIdent;IJJIIIILorg/ton/block/GlobalVersion;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 10
    sget-object v0, Lorg/ton/block/BlockInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/BlockInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5

    .line 10
    sget-object v0, Lorg/ton/block/BlockInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    iget v2, p0, Lorg/ton/block/BlockInfo;->version:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-boolean v2, p0, Lorg/ton/block/BlockInfo;->notMaster:Z

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v2, p0, Lorg/ton/block/BlockInfo;->afterMerge:Z

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v2, p0, Lorg/ton/block/BlockInfo;->beforeSplit:Z

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v2, p0, Lorg/ton/block/BlockInfo;->afterSplit:Z

    const/4 v3, 0x4

    invoke-interface {p1, p2, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v2, p0, Lorg/ton/block/BlockInfo;->wantSplit:Z

    const/4 v3, 0x5

    invoke-interface {p1, p2, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v2, p0, Lorg/ton/block/BlockInfo;->wantMerge:Z

    const/4 v3, 0x6

    invoke-interface {p1, p2, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v2, p0, Lorg/ton/block/BlockInfo;->keyBlock:Z

    const/4 v3, 0x7

    invoke-interface {p1, p2, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v2, p0, Lorg/ton/block/BlockInfo;->vertSeqnoIncr:Z

    const/16 v3, 0x8

    invoke-interface {p1, p2, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget v2, p0, Lorg/ton/block/BlockInfo;->flags:I

    const/16 v3, 0x9

    invoke-interface {p1, p2, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget v2, p0, Lorg/ton/block/BlockInfo;->seqNo:I

    const/16 v3, 0xa

    invoke-interface {p1, p2, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget v2, p0, Lorg/ton/block/BlockInfo;->vertSeqNo:I

    const/16 v3, 0xb

    invoke-interface {p1, p2, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v2, Lorg/ton/block/ShardIdent$$serializer;->INSTANCE:Lorg/ton/block/ShardIdent$$serializer;

    iget-object v3, p0, Lorg/ton/block/BlockInfo;->shard:Lorg/ton/block/ShardIdent;

    const/16 v4, 0xc

    invoke-interface {p1, p2, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v2, p0, Lorg/ton/block/BlockInfo;->genUtime:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/16 v3, 0xd

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v2, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v3, p0, Lorg/ton/block/BlockInfo;->startLt:J

    invoke-static {v3, v4}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v3

    const/16 v4, 0xe

    invoke-interface {p1, p2, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-wide v3, p0, Lorg/ton/block/BlockInfo;->endLt:J

    invoke-static {v3, v4}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v3

    const/16 v4, 0xf

    invoke-interface {p1, p2, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v2, p0, Lorg/ton/block/BlockInfo;->genValidatorListHashShort:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v2, p0, Lorg/ton/block/BlockInfo;->genCatchainSeqno:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/16 v3, 0x11

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v2, p0, Lorg/ton/block/BlockInfo;->minRefMcSeqno:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/16 v3, 0x12

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v2, p0, Lorg/ton/block/BlockInfo;->prevKeyBlockSeqno:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/16 v3, 0x13

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lorg/ton/block/GlobalVersion$$serializer;->INSTANCE:Lorg/ton/block/GlobalVersion$$serializer;

    iget-object v2, p0, Lorg/ton/block/BlockInfo;->genSoftware:Lorg/ton/block/GlobalVersion;

    const/16 v3, 0x14

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x15

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/BlockInfo;->masterRef:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x16

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/BlockInfo;->prevRef:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x17

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/BlockInfo;->prevVertRef:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/BlockInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/BlockInfo;

    iget v1, p0, Lorg/ton/block/BlockInfo;->version:I

    iget v3, p1, Lorg/ton/block/BlockInfo;->version:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->notMaster:Z

    iget-boolean v3, p1, Lorg/ton/block/BlockInfo;->notMaster:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->afterMerge:Z

    iget-boolean v3, p1, Lorg/ton/block/BlockInfo;->afterMerge:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->beforeSplit:Z

    iget-boolean v3, p1, Lorg/ton/block/BlockInfo;->beforeSplit:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->afterSplit:Z

    iget-boolean v3, p1, Lorg/ton/block/BlockInfo;->afterSplit:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->wantSplit:Z

    iget-boolean v3, p1, Lorg/ton/block/BlockInfo;->wantSplit:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->wantMerge:Z

    iget-boolean v3, p1, Lorg/ton/block/BlockInfo;->wantMerge:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->keyBlock:Z

    iget-boolean v3, p1, Lorg/ton/block/BlockInfo;->keyBlock:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->vertSeqnoIncr:Z

    iget-boolean v3, p1, Lorg/ton/block/BlockInfo;->vertSeqnoIncr:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lorg/ton/block/BlockInfo;->flags:I

    iget v3, p1, Lorg/ton/block/BlockInfo;->flags:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lorg/ton/block/BlockInfo;->seqNo:I

    iget v3, p1, Lorg/ton/block/BlockInfo;->seqNo:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lorg/ton/block/BlockInfo;->vertSeqNo:I

    iget v3, p1, Lorg/ton/block/BlockInfo;->vertSeqNo:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lorg/ton/block/BlockInfo;->shard:Lorg/ton/block/ShardIdent;

    iget-object v3, p1, Lorg/ton/block/BlockInfo;->shard:Lorg/ton/block/ShardIdent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lorg/ton/block/BlockInfo;->genUtime:I

    iget v3, p1, Lorg/ton/block/BlockInfo;->genUtime:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lorg/ton/block/BlockInfo;->startLt:J

    iget-wide v5, p1, Lorg/ton/block/BlockInfo;->startLt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lorg/ton/block/BlockInfo;->endLt:J

    iget-wide v5, p1, Lorg/ton/block/BlockInfo;->endLt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lorg/ton/block/BlockInfo;->genValidatorListHashShort:I

    iget v3, p1, Lorg/ton/block/BlockInfo;->genValidatorListHashShort:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lorg/ton/block/BlockInfo;->genCatchainSeqno:I

    iget v3, p1, Lorg/ton/block/BlockInfo;->genCatchainSeqno:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lorg/ton/block/BlockInfo;->minRefMcSeqno:I

    iget v3, p1, Lorg/ton/block/BlockInfo;->minRefMcSeqno:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lorg/ton/block/BlockInfo;->prevKeyBlockSeqno:I

    iget v3, p1, Lorg/ton/block/BlockInfo;->prevKeyBlockSeqno:I

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lorg/ton/block/BlockInfo;->genSoftware:Lorg/ton/block/GlobalVersion;

    iget-object v3, p1, Lorg/ton/block/BlockInfo;->genSoftware:Lorg/ton/block/GlobalVersion;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lorg/ton/block/BlockInfo;->masterRef:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/BlockInfo;->masterRef:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lorg/ton/block/BlockInfo;->prevRef:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/BlockInfo;->prevRef:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lorg/ton/block/BlockInfo;->prevVertRef:Lorg/ton/tlb/CellRef;

    iget-object p1, p1, Lorg/ton/block/BlockInfo;->prevVertRef:Lorg/ton/tlb/CellRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public final getAfterMerge()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lorg/ton/block/BlockInfo;->afterMerge:Z

    return v0
.end method

.method public final getAfterSplit()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lorg/ton/block/BlockInfo;->afterSplit:Z

    return v0
.end method

.method public final getBeforeSplit()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lorg/ton/block/BlockInfo;->beforeSplit:Z

    return v0
.end method

.method public final getEndLt-s-VKNKU()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lorg/ton/block/BlockInfo;->endLt:J

    return-wide v0
.end method

.method public final getFlags()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/ton/block/BlockInfo;->flags:I

    return v0
.end method

.method public final getGenCatchainSeqno-pVg5ArA()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/ton/block/BlockInfo;->genCatchainSeqno:I

    return v0
.end method

.method public final getGenSoftware()Lorg/ton/block/GlobalVersion;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/ton/block/BlockInfo;->genSoftware:Lorg/ton/block/GlobalVersion;

    return-object v0
.end method

.method public final getGenUtime-pVg5ArA()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/ton/block/BlockInfo;->genUtime:I

    return v0
.end method

.method public final getGenValidatorListHashShort-pVg5ArA()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/ton/block/BlockInfo;->genValidatorListHashShort:I

    return v0
.end method

.method public final getKeyBlock()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lorg/ton/block/BlockInfo;->keyBlock:Z

    return v0
.end method

.method public final getMasterRef()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BlkMasterInfo;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/ton/block/BlockInfo;->masterRef:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getMinRefMcSeqno-pVg5ArA()I
    .locals 1

    .line 31
    iget v0, p0, Lorg/ton/block/BlockInfo;->minRefMcSeqno:I

    return v0
.end method

.method public final getNotMaster()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lorg/ton/block/BlockInfo;->notMaster:Z

    return v0
.end method

.method public final getPrevKeyBlockSeqno-pVg5ArA()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/ton/block/BlockInfo;->prevKeyBlockSeqno:I

    return v0
.end method

.method public final getPrevRef()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BlkPrevInfo;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/ton/block/BlockInfo;->prevRef:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getPrevVertRef()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BlkPrevInfo;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/ton/block/BlockInfo;->prevVertRef:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getSeqNo()I
    .locals 1

    .line 23
    iget v0, p0, Lorg/ton/block/BlockInfo;->seqNo:I

    return v0
.end method

.method public final getShard()Lorg/ton/block/ShardIdent;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/ton/block/BlockInfo;->shard:Lorg/ton/block/ShardIdent;

    return-object v0
.end method

.method public final getStartLt-s-VKNKU()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lorg/ton/block/BlockInfo;->startLt:J

    return-wide v0
.end method

.method public final getVersion-pVg5ArA()I
    .locals 1

    .line 13
    iget v0, p0, Lorg/ton/block/BlockInfo;->version:I

    return v0
.end method

.method public final getVertSeqNo()I
    .locals 1

    .line 24
    iget v0, p0, Lorg/ton/block/BlockInfo;->vertSeqNo:I

    return v0
.end method

.method public final getVertSeqnoIncr()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lorg/ton/block/BlockInfo;->vertSeqnoIncr:Z

    return v0
.end method

.method public final getWantMerge()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lorg/ton/block/BlockInfo;->wantMerge:Z

    return v0
.end method

.method public final getWantSplit()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lorg/ton/block/BlockInfo;->wantSplit:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/ton/block/BlockInfo;->version:I

    invoke-static {v0}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->notMaster:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->afterMerge:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->beforeSplit:Z

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->afterSplit:Z

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->wantSplit:Z

    if-eqz v1, :cond_4

    move v1, v2

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->wantMerge:Z

    if-eqz v1, :cond_5

    move v1, v2

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->keyBlock:Z

    if-eqz v1, :cond_6

    move v1, v2

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->vertSeqnoIncr:Z

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/BlockInfo;->flags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/BlockInfo;->seqNo:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/BlockInfo;->vertSeqNo:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/BlockInfo;->shard:Lorg/ton/block/ShardIdent;

    invoke-virtual {v1}, Lorg/ton/block/ShardIdent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/BlockInfo;->genUtime:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/BlockInfo;->startLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/BlockInfo;->endLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/BlockInfo;->genValidatorListHashShort:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/BlockInfo;->genCatchainSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/BlockInfo;->minRefMcSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/BlockInfo;->prevKeyBlockSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/BlockInfo;->genSoftware:Lorg/ton/block/GlobalVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Lorg/ton/block/GlobalVersion;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/BlockInfo;->masterRef:Lorg/ton/tlb/CellRef;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/BlockInfo;->prevRef:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/BlockInfo;->prevVertRef:Lorg/ton/tlb/CellRef;

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block_info"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 40
    iget v1, p0, Lorg/ton/block/BlockInfo;->version:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 41
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->notMaster:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "not_master"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 42
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->afterMerge:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "after_merge"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 43
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->beforeSplit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "before_split"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 44
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->afterSplit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "after_split"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 45
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->wantSplit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "want_split"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 46
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->wantMerge:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "want_merge"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 47
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->keyBlock:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "key_block"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 48
    iget-boolean v1, p0, Lorg/ton/block/BlockInfo;->vertSeqnoIncr:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "ver_seqno_inc"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 49
    iget v1, p0, Lorg/ton/block/BlockInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 50
    iget v1, p0, Lorg/ton/block/BlockInfo;->seqNo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "seq_no"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 51
    iget v1, p0, Lorg/ton/block/BlockInfo;->vertSeqNo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vert_seq_no"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 52
    iget-object v1, p0, Lorg/ton/block/BlockInfo;->shard:Lorg/ton/block/ShardIdent;

    const-string v2, "shard"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 53
    iget v1, p0, Lorg/ton/block/BlockInfo;->genUtime:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "gen_utime"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 54
    iget-wide v1, p0, Lorg/ton/block/BlockInfo;->startLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "start_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 55
    iget-wide v1, p0, Lorg/ton/block/BlockInfo;->endLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "end_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 56
    iget v1, p0, Lorg/ton/block/BlockInfo;->genValidatorListHashShort:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "gen_validator_list_hash_short"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 57
    iget v1, p0, Lorg/ton/block/BlockInfo;->genCatchainSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "gen_catchain_seqno"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 58
    iget v1, p0, Lorg/ton/block/BlockInfo;->minRefMcSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "min_ref_mc_seqno"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 59
    iget v1, p0, Lorg/ton/block/BlockInfo;->prevKeyBlockSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "prevKeyBlockSeqno"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 60
    iget-object v1, p0, Lorg/ton/block/BlockInfo;->genSoftware:Lorg/ton/block/GlobalVersion;

    const-string v2, "gen_software"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 61
    iget-object v1, p0, Lorg/ton/block/BlockInfo;->masterRef:Lorg/ton/tlb/CellRef;

    const-string v2, "master_ref"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 62
    iget-object v1, p0, Lorg/ton/block/BlockInfo;->prevRef:Lorg/ton/tlb/CellRef;

    const-string v2, "prev_ref"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 63
    iget-object v1, p0, Lorg/ton/block/BlockInfo;->prevVertRef:Lorg/ton/tlb/CellRef;

    const-string v2, "prev_vert_ref"

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

    .line 67
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
