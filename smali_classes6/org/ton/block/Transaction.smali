.class public final Lorg/ton/block/Transaction;
.super Ljava/lang/Object;
.source "Transaction.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/Transaction$$serializer;,
        Lorg/ton/block/Transaction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransaction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transaction.kt\norg/ton/block/Transaction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,198:1\n1#2:199\n86#3,2:200\n82#3,3:202\n88#3:205\n*S KotlinDebug\n*F\n+ 1 Transaction.kt\norg/ton/block/Transaction\n*L\n77#1:200,2\n78#1:202,3\n77#1:205\n*E\n"
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

.field public static final Companion:Lorg/ton/block/Transaction$Companion;


# instance fields
.field private final accountAddr:Lorg/ton/bitstring/BitString;

.field private final description:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TransactionDescr;",
            ">;"
        }
    .end annotation
.end field

.field private final endStatus:Lorg/ton/block/AccountStatus;

.field private final lt:J

.field private final now:I

.field private final origStatus:Lorg/ton/block/AccountStatus;

.field private final outMsgCnt:I

.field private final prevTransHash:Lorg/ton/bitstring/BitString;

.field private final prevTransLt:J

.field private final r1:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TransactionAux;",
            ">;"
        }
    .end annotation
.end field

.field private final stateUpdate:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/HashUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private final totalFees:Lorg/ton/block/CurrencyCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Lorg/ton/tlb/CellRef;

    new-instance v1, Lorg/ton/block/Transaction$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/Transaction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/Transaction;->Companion:Lorg/ton/block/Transaction$Companion;

    const/16 v1, 0xc

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

    .line 96
    sget-object v4, Lorg/ton/block/AccountStatus;->Companion:Lorg/ton/block/AccountStatus$Companion;

    invoke-virtual {v4}, Lorg/ton/block/AccountStatus$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v1, v6

    invoke-virtual {v4}, Lorg/ton/block/AccountStatus$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v1, v5

    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v4, v5, v6}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/16 v5, 0x8

    aput-object v4, v1, v5

    const/16 v4, 0x9

    aput-object v2, v1, v4

    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v4, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/16 v4, 0xa

    aput-object v2, v1, v4

    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v0, v3}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/16 v0, 0xb

    aput-object v2, v1, v0

    sput-object v1, Lorg/ton/block/Transaction;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>(ILorg/ton/bitstring/BitString;Lkotlin/ULong;Lorg/ton/bitstring/BitString;Lkotlin/ULong;Lkotlin/UInt;ILorg/ton/block/AccountStatus;Lorg/ton/block/AccountStatus;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/bitstring/BitString;",
            "Lkotlin/ULong;",
            "Lorg/ton/bitstring/BitString;",
            "Lkotlin/ULong;",
            "Lkotlin/UInt;",
            "I",
            "Lorg/ton/block/AccountStatus;",
            "Lorg/ton/block/AccountStatus;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TransactionAux;",
            ">;",
            "Lorg/ton/block/CurrencyCollection;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/HashUpdate;",
            ">;",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/TransactionDescr;",
            ">;",
            "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    and-int/lit16 v2, v1, 0xfff

    const/16 v3, 0xfff

    if-eq v3, v2, :cond_0

    .line 16
    sget-object v2, Lorg/ton/block/Transaction$$serializer;->INSTANCE:Lorg/ton/block/Transaction$$serializer;

    invoke-virtual {v2}, Lorg/ton/block/Transaction$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p2

    iput-object v1, v0, Lorg/ton/block/Transaction;->accountAddr:Lorg/ton/bitstring/BitString;

    invoke-virtual {p3}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/ton/block/Transaction;->lt:J

    move-object v2, p4

    iput-object v2, v0, Lorg/ton/block/Transaction;->prevTransHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {p5}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v3

    iput-wide v3, v0, Lorg/ton/block/Transaction;->prevTransLt:J

    invoke-virtual {p6}, Lkotlin/UInt;->unbox-impl()I

    move-result v3

    iput v3, v0, Lorg/ton/block/Transaction;->now:I

    move v3, p7

    iput v3, v0, Lorg/ton/block/Transaction;->outMsgCnt:I

    move-object v3, p8

    iput-object v3, v0, Lorg/ton/block/Transaction;->origStatus:Lorg/ton/block/AccountStatus;

    move-object/from16 v3, p9

    iput-object v3, v0, Lorg/ton/block/Transaction;->endStatus:Lorg/ton/block/AccountStatus;

    move-object/from16 v3, p10

    iput-object v3, v0, Lorg/ton/block/Transaction;->r1:Lorg/ton/tlb/CellRef;

    move-object/from16 v3, p11

    iput-object v3, v0, Lorg/ton/block/Transaction;->totalFees:Lorg/ton/block/CurrencyCollection;

    move-object/from16 v3, p12

    iput-object v3, v0, Lorg/ton/block/Transaction;->stateUpdate:Lorg/ton/tlb/CellRef;

    move-object/from16 v3, p13

    iput-object v3, v0, Lorg/ton/block/Transaction;->description:Lorg/ton/tlb/CellRef;

    .line 67
    invoke-interface {p2}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x100

    if-ne v3, v6, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-eqz v3, :cond_4

    .line 68
    invoke-interface {p4}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v2

    if-ne v2, v6, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-eqz v4, :cond_3

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected prevTransHash.size == 256, actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected accountAddr.size == 256, actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public synthetic constructor <init>(ILorg/ton/bitstring/BitString;Lkotlin/ULong;Lorg/ton/bitstring/BitString;Lkotlin/ULong;Lkotlin/UInt;ILorg/ton/block/AccountStatus;Lorg/ton/block/AccountStatus;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lorg/ton/block/Transaction;-><init>(ILorg/ton/bitstring/BitString;Lkotlin/ULong;Lorg/ton/bitstring/BitString;Lkotlin/ULong;Lkotlin/UInt;ILorg/ton/block/AccountStatus;Lorg/ton/block/AccountStatus;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lorg/ton/bitstring/BitString;JLorg/ton/bitstring/BitString;JIILorg/ton/block/AccountStatus;Lorg/ton/block/AccountStatus;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "J",
            "Lorg/ton/bitstring/BitString;",
            "JII",
            "Lorg/ton/block/AccountStatus;",
            "Lorg/ton/block/AccountStatus;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TransactionAux;",
            ">;",
            "Lorg/ton/block/CurrencyCollection;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/HashUpdate;",
            ">;",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/TransactionDescr;",
            ">;)V"
        }
    .end annotation

    const-string v0, "accountAddr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prevTransHash"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origStatus"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endStatus"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r1"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "totalFees"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateUpdate"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/ton/block/Transaction;->accountAddr:Lorg/ton/bitstring/BitString;

    .line 23
    iput-wide p2, p0, Lorg/ton/block/Transaction;->lt:J

    .line 27
    iput-object p4, p0, Lorg/ton/block/Transaction;->prevTransHash:Lorg/ton/bitstring/BitString;

    .line 31
    iput-wide p5, p0, Lorg/ton/block/Transaction;->prevTransLt:J

    .line 35
    iput p7, p0, Lorg/ton/block/Transaction;->now:I

    .line 39
    iput p8, p0, Lorg/ton/block/Transaction;->outMsgCnt:I

    .line 43
    iput-object p9, p0, Lorg/ton/block/Transaction;->origStatus:Lorg/ton/block/AccountStatus;

    .line 47
    iput-object p10, p0, Lorg/ton/block/Transaction;->endStatus:Lorg/ton/block/AccountStatus;

    .line 51
    iput-object p11, p0, Lorg/ton/block/Transaction;->r1:Lorg/ton/tlb/CellRef;

    .line 54
    iput-object p12, p0, Lorg/ton/block/Transaction;->totalFees:Lorg/ton/block/CurrencyCollection;

    .line 58
    iput-object p13, p0, Lorg/ton/block/Transaction;->stateUpdate:Lorg/ton/tlb/CellRef;

    .line 62
    iput-object p14, p0, Lorg/ton/block/Transaction;->description:Lorg/ton/tlb/CellRef;

    .line 67
    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p2

    const/4 p3, 0x1

    const/4 p5, 0x0

    const/16 p6, 0x100

    if-ne p2, p6, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, p5

    :goto_0
    if-eqz p2, :cond_3

    .line 68
    invoke-interface {p4}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p2

    if-ne p2, p6, :cond_1

    goto :goto_1

    :cond_1
    move p3, p5

    :goto_1
    if-eqz p3, :cond_2

    return-void

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected prevTransHash.size == 256, actual: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 67
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expected accountAddr.size == 256, actual: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public synthetic constructor <init>(Lorg/ton/bitstring/BitString;JLorg/ton/bitstring/BitString;JIILorg/ton/block/AccountStatus;Lorg/ton/block/AccountStatus;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lorg/ton/block/Transaction;-><init>(Lorg/ton/bitstring/BitString;JLorg/ton/bitstring/BitString;JIILorg/ton/block/AccountStatus;Lorg/ton/block/AccountStatus;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 16
    sget-object v0, Lorg/ton/block/Transaction;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/Transaction;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5

    .line 16
    sget-object v0, Lorg/ton/block/Transaction;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object v2, p0, Lorg/ton/block/Transaction;->accountAddr:Lorg/ton/bitstring/BitString;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v2, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v3, p0, Lorg/ton/block/Transaction;->lt:J

    invoke-static {v3, v4}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p1, p2, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/ton/block/Transaction;->prevTransHash:Lorg/ton/bitstring/BitString;

    const/4 v4, 0x2

    invoke-interface {p1, p2, v4, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-wide v3, p0, Lorg/ton/block/Transaction;->prevTransLt:J

    invoke-static {v3, v4}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    iget v2, p0, Lorg/ton/block/Transaction;->now:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v1, p0, Lorg/ton/block/Transaction;->outMsgCnt:I

    const/4 v2, 0x5

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v1, 0x6

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/Transaction;->origStatus:Lorg/ton/block/AccountStatus;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x7

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/Transaction;->endStatus:Lorg/ton/block/AccountStatus;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x8

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/Transaction;->r1:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    iget-object v2, p0, Lorg/ton/block/Transaction;->totalFees:Lorg/ton/block/CurrencyCollection;

    const/16 v3, 0x9

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xa

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/Transaction;->stateUpdate:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/Transaction;->description:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final accountAddr()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/ton/block/Transaction;->accountAddr:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final description()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TransactionDescr;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/ton/block/Transaction;->description:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final endStatus()Lorg/ton/block/AccountStatus;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/ton/block/Transaction;->endStatus:Lorg/ton/block/AccountStatus;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/Transaction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/Transaction;

    iget-object v1, p0, Lorg/ton/block/Transaction;->accountAddr:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/Transaction;->accountAddr:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/ton/block/Transaction;->lt:J

    iget-wide v5, p1, Lorg/ton/block/Transaction;->lt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/Transaction;->prevTransHash:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/Transaction;->prevTransHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lorg/ton/block/Transaction;->prevTransLt:J

    iget-wide v5, p1, Lorg/ton/block/Transaction;->prevTransLt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lorg/ton/block/Transaction;->now:I

    iget v3, p1, Lorg/ton/block/Transaction;->now:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lorg/ton/block/Transaction;->outMsgCnt:I

    iget v3, p1, Lorg/ton/block/Transaction;->outMsgCnt:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/ton/block/Transaction;->origStatus:Lorg/ton/block/AccountStatus;

    iget-object v3, p1, Lorg/ton/block/Transaction;->origStatus:Lorg/ton/block/AccountStatus;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/ton/block/Transaction;->endStatus:Lorg/ton/block/AccountStatus;

    iget-object v3, p1, Lorg/ton/block/Transaction;->endStatus:Lorg/ton/block/AccountStatus;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lorg/ton/block/Transaction;->r1:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/Transaction;->r1:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lorg/ton/block/Transaction;->totalFees:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/Transaction;->totalFees:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lorg/ton/block/Transaction;->stateUpdate:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/Transaction;->stateUpdate:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lorg/ton/block/Transaction;->description:Lorg/ton/tlb/CellRef;

    iget-object p1, p1, Lorg/ton/block/Transaction;->description:Lorg/ton/tlb/CellRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/ton/block/Transaction;->accountAddr:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/Transaction;->lt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/Transaction;->prevTransHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/Transaction;->prevTransLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/Transaction;->now:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/Transaction;->outMsgCnt:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/Transaction;->origStatus:Lorg/ton/block/AccountStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/Transaction;->endStatus:Lorg/ton/block/AccountStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/Transaction;->r1:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/Transaction;->totalFees:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/Transaction;->stateUpdate:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/Transaction;->description:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final lt()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lorg/ton/block/Transaction;->lt:J

    return-wide v0
.end method

.method public final now()I
    .locals 1

    .line 37
    iget v0, p0, Lorg/ton/block/Transaction;->now:I

    return v0
.end method

.method public final origStatus()Lorg/ton/block/AccountStatus;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/ton/block/Transaction;->origStatus:Lorg/ton/block/AccountStatus;

    return-object v0
.end method

.method public final outMsgCnt()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/ton/block/Transaction;->outMsgCnt:I

    return v0
.end method

.method public final prevTransHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/ton/block/Transaction;->prevTransHash:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final prevTransLt()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lorg/ton/block/Transaction;->prevTransLt:J

    return-wide v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lorg/ton/block/Transaction;->accountAddr:Lorg/ton/bitstring/BitString;

    const-string v2, "account_addr"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 80
    iget-wide v1, p0, Lorg/ton/block/Transaction;->lt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 81
    iget-object v1, p0, Lorg/ton/block/Transaction;->prevTransHash:Lorg/ton/bitstring/BitString;

    const-string v2, "prev_trans_hash"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 82
    iget-wide v1, p0, Lorg/ton/block/Transaction;->prevTransLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "prev_trans_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 83
    iget v1, p0, Lorg/ton/block/Transaction;->now:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "now"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 84
    iget v1, p0, Lorg/ton/block/Transaction;->outMsgCnt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "outmsg_cnt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 85
    iget-object v1, p0, Lorg/ton/block/Transaction;->origStatus:Lorg/ton/block/AccountStatus;

    const-string v2, "orig_status"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 86
    iget-object v1, p0, Lorg/ton/block/Transaction;->endStatus:Lorg/ton/block/AccountStatus;

    const-string v2, "end_status"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 87
    iget-object v1, p0, Lorg/ton/block/Transaction;->r1:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 88
    iget-object v1, p0, Lorg/ton/block/Transaction;->totalFees:Lorg/ton/block/CurrencyCollection;

    const-string v2, "total_fees"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 89
    iget-object v1, p0, Lorg/ton/block/Transaction;->stateUpdate:Lorg/ton/tlb/CellRef;

    const-string v2, "state_update"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 90
    iget-object v1, p0, Lorg/ton/block/Transaction;->description:Lorg/ton/tlb/CellRef;

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public final r1()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TransactionAux;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/ton/block/Transaction;->r1:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final stateUpdate()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/HashUpdate;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/ton/block/Transaction;->stateUpdate:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final totalFees()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/ton/block/Transaction;->totalFees:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method
