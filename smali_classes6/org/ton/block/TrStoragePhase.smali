.class public final Lorg/ton/block/TrStoragePhase;
.super Ljava/lang/Object;
.source "TrStoragePhase.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/TrStoragePhase$$serializer;,
        Lorg/ton/block/TrStoragePhase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrStoragePhase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrStoragePhase.kt\norg/ton/block/TrStoragePhase\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,57:1\n86#2,2:58\n82#2,3:60\n88#2:63\n*S KotlinDebug\n*F\n+ 1 TrStoragePhase.kt\norg/ton/block/TrStoragePhase\n*L\n19#1:58,2\n20#1:60,3\n19#1:63\n*E\n"
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

.field public static final Companion:Lorg/ton/block/TrStoragePhase$Companion;


# instance fields
.field private final statusChange:Lorg/ton/block/AccStatusChange;

.field private final storageFeesCollected:Lorg/ton/block/Coins;

.field private final storageFeesDue:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-class v0, Ljava/lang/Object;

    new-instance v1, Lorg/ton/block/TrStoragePhase$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/TrStoragePhase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/TrStoragePhase;->Companion:Lorg/ton/block/TrStoragePhase$Companion;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 28
    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lorg/ton/block/Maybe;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v10, 0x2

    new-array v7, v10, [Lkotlin/reflect/KClass;

    const-class v4, Lorg/ton/block/Just;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    aput-object v4, v7, v3

    const-class v4, Lorg/ton/block/Nothing;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v11, 0x1

    aput-object v4, v7, v11

    new-array v8, v10, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v5, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    new-array v12, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v5, v9, v12}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v4, v5}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v8, v3

    sget-object v4, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v5, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v9, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v5, v0, v9}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v4, v5}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v8, v11

    new-array v9, v11, [Ljava/lang/annotation/Annotation;

    .line 15
    new-instance v0, Lorg/ton/block/TrStoragePhase$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v4, "@type"

    invoke-direct {v0, v4}, Lorg/ton/block/TrStoragePhase$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v9, v3

    const-string v5, "org.ton.block.Maybe"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v2, v1, v11

    .line 28
    sget-object v0, Lorg/ton/block/AccStatusChange;->Companion:Lorg/ton/block/AccStatusChange$Companion;

    invoke-virtual {v0}, Lorg/ton/block/AccStatusChange$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v1, v10

    sput-object v1, Lorg/ton/block/TrStoragePhase;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/Coins;Lorg/ton/block/Maybe;Lorg/ton/block/AccStatusChange;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 11
    sget-object p5, Lorg/ton/block/TrStoragePhase$$serializer;->INSTANCE:Lorg/ton/block/TrStoragePhase$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/TrStoragePhase$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/TrStoragePhase;->storageFeesCollected:Lorg/ton/block/Coins;

    iput-object p3, p0, Lorg/ton/block/TrStoragePhase;->storageFeesDue:Lorg/ton/block/Maybe;

    iput-object p4, p0, Lorg/ton/block/TrStoragePhase;->statusChange:Lorg/ton/block/AccStatusChange;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/Coins;Lorg/ton/block/Maybe;Lorg/ton/block/AccStatusChange;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/Coins;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;",
            "Lorg/ton/block/AccStatusChange;",
            ")V"
        }
    .end annotation

    const-string v0, "storageFeesCollected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageFeesDue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusChange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/block/TrStoragePhase;->storageFeesCollected:Lorg/ton/block/Coins;

    .line 15
    iput-object p2, p0, Lorg/ton/block/TrStoragePhase;->storageFeesDue:Lorg/ton/block/Maybe;

    .line 16
    iput-object p3, p0, Lorg/ton/block/TrStoragePhase;->statusChange:Lorg/ton/block/AccStatusChange;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/block/TrStoragePhase;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/TrStoragePhase;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 11
    sget-object v0, Lorg/ton/block/TrStoragePhase;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    iget-object v2, p0, Lorg/ton/block/TrStoragePhase;->storageFeesCollected:Lorg/ton/block/Coins;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/TrStoragePhase;->storageFeesDue:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/TrStoragePhase;->statusChange:Lorg/ton/block/AccStatusChange;

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
    instance-of v1, p1, Lorg/ton/block/TrStoragePhase;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/TrStoragePhase;

    iget-object v1, p0, Lorg/ton/block/TrStoragePhase;->storageFeesCollected:Lorg/ton/block/Coins;

    iget-object v3, p1, Lorg/ton/block/TrStoragePhase;->storageFeesCollected:Lorg/ton/block/Coins;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/TrStoragePhase;->storageFeesDue:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/TrStoragePhase;->storageFeesDue:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/TrStoragePhase;->statusChange:Lorg/ton/block/AccStatusChange;

    iget-object p1, p1, Lorg/ton/block/TrStoragePhase;->statusChange:Lorg/ton/block/AccStatusChange;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getStatusChange()Lorg/ton/block/AccStatusChange;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/block/TrStoragePhase;->statusChange:Lorg/ton/block/AccStatusChange;

    return-object v0
.end method

.method public final getStorageFeesCollected()Lorg/ton/block/Coins;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/block/TrStoragePhase;->storageFeesCollected:Lorg/ton/block/Coins;

    return-object v0
.end method

.method public final getStorageFeesDue()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/ton/block/TrStoragePhase;->storageFeesDue:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/TrStoragePhase;->storageFeesCollected:Lorg/ton/block/Coins;

    invoke-virtual {v0}, Lorg/ton/block/Coins;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrStoragePhase;->storageFeesDue:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrStoragePhase;->statusChange:Lorg/ton/block/AccStatusChange;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tr_phase_storage"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lorg/ton/block/TrStoragePhase;->storageFeesCollected:Lorg/ton/block/Coins;

    const-string v2, "storage_fees_collected"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 22
    iget-object v1, p0, Lorg/ton/block/TrStoragePhase;->storageFeesDue:Lorg/ton/block/Maybe;

    const-string v2, "storage_fees_due"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 23
    iget-object v1, p0, Lorg/ton/block/TrStoragePhase;->statusChange:Lorg/ton/block/AccStatusChange;

    const-string v2, "status_change"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrStoragePhase(storageFeesCollected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/TrStoragePhase;->storageFeesCollected:Lorg/ton/block/Coins;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storageFeesDue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/TrStoragePhase;->storageFeesDue:Lorg/ton/block/Maybe;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", statusChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/TrStoragePhase;->statusChange:Lorg/ton/block/AccStatusChange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
