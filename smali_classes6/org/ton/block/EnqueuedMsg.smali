.class public final Lorg/ton/block/EnqueuedMsg;
.super Ljava/lang/Object;
.source "EnqueuedMsg.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/EnqueuedMsg$$serializer;,
        Lorg/ton/block/EnqueuedMsg$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnqueuedMsg.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnqueuedMsg.kt\norg/ton/block/EnqueuedMsg\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,45:1\n82#2,3:46\n*S KotlinDebug\n*F\n+ 1 EnqueuedMsg.kt\norg/ton/block/EnqueuedMsg\n*L\n17#1:46,3\n*E\n"
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

.field public static final Companion:Lorg/ton/block/EnqueuedMsg$Companion;


# instance fields
.field private final enqueuedLt:J

.field private final outMsg:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/EnqueuedMsg$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/EnqueuedMsg$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/EnqueuedMsg;->Companion:Lorg/ton/block/EnqueuedMsg$Companion;

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 23
    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v3, Lorg/ton/tlb/CellRef;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v3, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/ton/block/EnqueuedMsg;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>(ILkotlin/ULong;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/ULong;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;",
            "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
            ")V"
        }
    .end annotation

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 11
    sget-object p4, Lorg/ton/block/EnqueuedMsg$$serializer;->INSTANCE:Lorg/ton/block/EnqueuedMsg$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/EnqueuedMsg$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/EnqueuedMsg;->enqueuedLt:J

    iput-object p3, p0, Lorg/ton/block/EnqueuedMsg;->outMsg:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/ULong;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/block/EnqueuedMsg;-><init>(ILkotlin/ULong;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(JLorg/ton/tlb/CellRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;)V"
        }
    .end annotation

    const-string v0, "outMsg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lorg/ton/block/EnqueuedMsg;->enqueuedLt:J

    .line 14
    iput-object p3, p0, Lorg/ton/block/EnqueuedMsg;->outMsg:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public synthetic constructor <init>(JLorg/ton/tlb/CellRef;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/ton/block/EnqueuedMsg;-><init>(JLorg/ton/tlb/CellRef;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/block/EnqueuedMsg;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/EnqueuedMsg;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 11
    sget-object v0, Lorg/ton/block/EnqueuedMsg;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v2, p0, Lorg/ton/block/EnqueuedMsg;->enqueuedLt:J

    invoke-static {v2, v3}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/EnqueuedMsg;->outMsg:Lorg/ton/tlb/CellRef;

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
    instance-of v1, p1, Lorg/ton/block/EnqueuedMsg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/EnqueuedMsg;

    iget-wide v3, p0, Lorg/ton/block/EnqueuedMsg;->enqueuedLt:J

    iget-wide v5, p1, Lorg/ton/block/EnqueuedMsg;->enqueuedLt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/EnqueuedMsg;->outMsg:Lorg/ton/tlb/CellRef;

    iget-object p1, p1, Lorg/ton/block/EnqueuedMsg;->outMsg:Lorg/ton/tlb/CellRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEnqueuedLt-s-VKNKU()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lorg/ton/block/EnqueuedMsg;->enqueuedLt:J

    return-wide v0
.end method

.method public final getOutMsg()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lorg/ton/block/EnqueuedMsg;->outMsg:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lorg/ton/block/EnqueuedMsg;->enqueuedLt:J

    invoke-static {v0, v1}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/EnqueuedMsg;->outMsg:Lorg/ton/tlb/CellRef;

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

    .line 18
    iget-wide v1, p0, Lorg/ton/block/EnqueuedMsg;->enqueuedLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "enqueued_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 19
    iget-object v1, p0, Lorg/ton/block/EnqueuedMsg;->outMsg:Lorg/ton/tlb/CellRef;

    const-string v2, "out_msg"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnqueuedMsg(enqueuedLt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/ton/block/EnqueuedMsg;->enqueuedLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/EnqueuedMsg;->outMsg:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
