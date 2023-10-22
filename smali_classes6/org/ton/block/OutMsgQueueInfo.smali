.class public final Lorg/ton/block/OutMsgQueueInfo;
.super Ljava/lang/Object;
.source "OutMsgQueueInfo.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/OutMsgQueueInfo$$serializer;,
        Lorg/ton/block/OutMsgQueueInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutMsgQueueInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutMsgQueueInfo.kt\norg/ton/block/OutMsgQueueInfo\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,61:1\n82#2,3:62\n*S KotlinDebug\n*F\n+ 1 OutMsgQueueInfo.kt\norg/ton/block/OutMsgQueueInfo\n*L\n21#1:62,3\n*E\n"
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

.field public static final Companion:Lorg/ton/block/OutMsgQueueInfo$Companion;


# instance fields
.field private final ihrPending:Lorg/ton/hashmap/HashMapE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/IhrPendingSince;",
            ">;"
        }
    .end annotation
.end field

.field private final outQueue:Lorg/ton/hashmap/HashmapAugE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/EnqueuedMsg;",
            "Lkotlin/ULong;",
            ">;"
        }
    .end annotation
.end field

.field private final procInfo:Lorg/ton/hashmap/HashMapE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/ProcessedUpto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-class v0, Ljava/lang/Object;

    new-instance v1, Lorg/ton/block/OutMsgQueueInfo$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/OutMsgQueueInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/OutMsgQueueInfo;->Companion:Lorg/ton/block/OutMsgQueueInfo$Companion;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    .line 30
    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v3, Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/annotation/Annotation;

    new-instance v6, Lorg/ton/block/OutMsgQueueInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v7, "@type"

    invoke-direct {v6, v7}, Lorg/ton/block/OutMsgQueueInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v6, v5, v8

    invoke-direct {v2, v3, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    aput-object v2, v1, v8

    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lorg/ton/hashmap/HashMapE;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const/4 v3, 0x2

    new-array v12, v3, [Lkotlin/reflect/KClass;

    const-class v5, Lorg/ton/hashmap/HmeEmpty;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v12, v8

    const-class v5, Lorg/ton/hashmap/HmeRoot;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v12, v4

    new-array v13, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lorg/ton/hashmap/HmeEmpty;->Companion:Lorg/ton/hashmap/HmeEmpty$Companion;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v9, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v6}, Lorg/ton/hashmap/HmeEmpty$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    aput-object v6, v13, v8

    sget-object v6, Lorg/ton/hashmap/HmeRoot;->Companion:Lorg/ton/hashmap/HmeRoot$Companion;

    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v14, v8, [Ljava/lang/annotation/Annotation;

    invoke-direct {v9, v10, v14}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v6, v9}, Lorg/ton/hashmap/HmeRoot$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    aput-object v9, v13, v4

    new-array v14, v4, [Ljava/lang/annotation/Annotation;

    new-instance v9, Lorg/ton/block/OutMsgQueueInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v9, v7}, Lorg/ton/block/OutMsgQueueInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v9, v14, v8

    const-string v10, "org.ton.hashmap.HashMapE"

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v2, v1, v4

    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v9, Lorg/ton/hashmap/HashMapE;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v17

    new-array v9, v3, [Lkotlin/reflect/KClass;

    const-class v10, Lorg/ton/hashmap/HmeEmpty;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v9, v8

    const-class v10, Lorg/ton/hashmap/HmeRoot;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    aput-object v10, v9, v4

    new-array v10, v3, [Lkotlinx/serialization/KSerializer;

    new-instance v11, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    new-array v13, v8, [Ljava/lang/annotation/Annotation;

    invoke-direct {v11, v12, v13}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v11}, Lorg/ton/hashmap/HmeEmpty$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v10, v8

    new-instance v5, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v11, v8, [Ljava/lang/annotation/Annotation;

    invoke-direct {v5, v0, v11}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v6, v5}, Lorg/ton/hashmap/HmeRoot$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v10, v4

    new-array v0, v4, [Ljava/lang/annotation/Annotation;

    new-instance v4, Lorg/ton/block/OutMsgQueueInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v4, v7}, Lorg/ton/block/OutMsgQueueInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v8

    const-string v16, "org.ton.hashmap.HashMapE"

    move-object v15, v2

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v0

    invoke-direct/range {v15 .. v20}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v2, v1, v3

    sput-object v1, Lorg/ton/block/OutMsgQueueInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/hashmap/HashmapAugE;Lorg/ton/hashmap/HashMapE;Lorg/ton/hashmap/HashMapE;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 14
    sget-object p5, Lorg/ton/block/OutMsgQueueInfo$$serializer;->INSTANCE:Lorg/ton/block/OutMsgQueueInfo$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/OutMsgQueueInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/OutMsgQueueInfo;->outQueue:Lorg/ton/hashmap/HashmapAugE;

    iput-object p3, p0, Lorg/ton/block/OutMsgQueueInfo;->procInfo:Lorg/ton/hashmap/HashMapE;

    iput-object p4, p0, Lorg/ton/block/OutMsgQueueInfo;->ihrPending:Lorg/ton/hashmap/HashMapE;

    return-void
.end method

.method public constructor <init>(Lorg/ton/hashmap/HashmapAugE;Lorg/ton/hashmap/HashMapE;Lorg/ton/hashmap/HashMapE;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/EnqueuedMsg;",
            "Lkotlin/ULong;",
            ">;",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/ProcessedUpto;",
            ">;",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/IhrPendingSince;",
            ">;)V"
        }
    .end annotation

    const-string v0, "outQueue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "procInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ihrPending"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/ton/block/OutMsgQueueInfo;->outQueue:Lorg/ton/hashmap/HashmapAugE;

    .line 17
    iput-object p2, p0, Lorg/ton/block/OutMsgQueueInfo;->procInfo:Lorg/ton/hashmap/HashMapE;

    .line 18
    iput-object p3, p0, Lorg/ton/block/OutMsgQueueInfo;->ihrPending:Lorg/ton/hashmap/HashMapE;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 14
    sget-object v0, Lorg/ton/block/OutMsgQueueInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/OutMsgQueueInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 14
    sget-object v0, Lorg/ton/block/OutMsgQueueInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/OutMsgQueueInfo;->outQueue:Lorg/ton/hashmap/HashmapAugE;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/OutMsgQueueInfo;->procInfo:Lorg/ton/hashmap/HashMapE;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/OutMsgQueueInfo;->ihrPending:Lorg/ton/hashmap/HashMapE;

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
    instance-of v1, p1, Lorg/ton/block/OutMsgQueueInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/OutMsgQueueInfo;

    iget-object v1, p0, Lorg/ton/block/OutMsgQueueInfo;->outQueue:Lorg/ton/hashmap/HashmapAugE;

    iget-object v3, p1, Lorg/ton/block/OutMsgQueueInfo;->outQueue:Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/OutMsgQueueInfo;->procInfo:Lorg/ton/hashmap/HashMapE;

    iget-object v3, p1, Lorg/ton/block/OutMsgQueueInfo;->procInfo:Lorg/ton/hashmap/HashMapE;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/OutMsgQueueInfo;->ihrPending:Lorg/ton/hashmap/HashMapE;

    iget-object p1, p1, Lorg/ton/block/OutMsgQueueInfo;->ihrPending:Lorg/ton/hashmap/HashMapE;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getIhrPending()Lorg/ton/hashmap/HashMapE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/IhrPendingSince;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/ton/block/OutMsgQueueInfo;->ihrPending:Lorg/ton/hashmap/HashMapE;

    return-object v0
.end method

.method public final getOutQueue()Lorg/ton/hashmap/HashmapAugE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/EnqueuedMsg;",
            "Lkotlin/ULong;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/ton/block/OutMsgQueueInfo;->outQueue:Lorg/ton/hashmap/HashmapAugE;

    return-object v0
.end method

.method public final getProcInfo()Lorg/ton/hashmap/HashMapE;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/ProcessedUpto;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/ton/block/OutMsgQueueInfo;->procInfo:Lorg/ton/hashmap/HashMapE;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/OutMsgQueueInfo;->outQueue:Lorg/ton/hashmap/HashmapAugE;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/OutMsgQueueInfo;->procInfo:Lorg/ton/hashmap/HashMapE;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/OutMsgQueueInfo;->ihrPending:Lorg/ton/hashmap/HashMapE;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out_msg_queue_info"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lorg/ton/block/OutMsgQueueInfo;->outQueue:Lorg/ton/hashmap/HashmapAugE;

    const-string v2, "out_queue"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 23
    iget-object v1, p0, Lorg/ton/block/OutMsgQueueInfo;->procInfo:Lorg/ton/hashmap/HashMapE;

    const-string v2, "proc_info"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 24
    iget-object v1, p0, Lorg/ton/block/OutMsgQueueInfo;->ihrPending:Lorg/ton/hashmap/HashMapE;

    const-string v2, "ihr_pending"

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

    .line 28
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
