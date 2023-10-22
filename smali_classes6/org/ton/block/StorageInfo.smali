.class public final Lorg/ton/block/StorageInfo;
.super Ljava/lang/Object;
.source "StorageInfo.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/StorageInfo$$serializer;,
        Lorg/ton/block/StorageInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorageInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorageInfo.kt\norg/ton/block/StorageInfo\n+ 2 Maybe.kt\norg/ton/block/MaybeKt\n+ 3 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,65:1\n16#2:66\n82#3,3:67\n*S KotlinDebug\n*F\n+ 1 StorageInfo.kt\norg/ton/block/StorageInfo\n*L\n27#1:66\n31#1:67,3\n*E\n"
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

.field public static final Companion:Lorg/ton/block/StorageInfo$Companion;


# instance fields
.field private final duePayment:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;"
        }
    .end annotation
.end field

.field private final lastPaid:I

.field private final used:Lorg/ton/block/StorageUsed;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-class v0, Ljava/lang/Object;

    new-instance v1, Lorg/ton/block/StorageInfo$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/StorageInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/StorageInfo;->Companion:Lorg/ton/block/StorageInfo$Companion;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 40
    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lorg/ton/block/Maybe;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const/4 v11, 0x2

    new-array v8, v11, [Lkotlin/reflect/KClass;

    const-class v5, Lorg/ton/block/Just;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v8, v3

    const-class v5, Lorg/ton/block/Nothing;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v8, v4

    new-array v9, v11, [Lkotlinx/serialization/KSerializer;

    sget-object v5, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    new-array v12, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v10, v12}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v6}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v9, v3

    sget-object v5, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v6, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v10, v3, [Ljava/lang/annotation/Annotation;

    invoke-direct {v6, v0, v10}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v5, v6}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v9, v4

    new-array v10, v4, [Ljava/lang/annotation/Annotation;

    .line 19
    new-instance v0, Lorg/ton/block/StorageInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v4, "@type"

    invoke-direct {v0, v4}, Lorg/ton/block/StorageInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v10, v3

    const-string v6, "org.ton.block.Maybe"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v2, v1, v11

    .line 40
    sput-object v1, Lorg/ton/block/StorageInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>(ILorg/ton/block/StorageUsed;Lkotlin/UInt;Lorg/ton/block/Maybe;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/block/StorageUsed;",
            "Lkotlin/UInt;",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;",
            "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
            ")V"
        }
    .end annotation

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 12
    sget-object p5, Lorg/ton/block/StorageInfo$$serializer;->INSTANCE:Lorg/ton/block/StorageInfo$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/StorageInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/StorageInfo;->used:Lorg/ton/block/StorageUsed;

    invoke-virtual {p3}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/StorageInfo;->lastPaid:I

    iput-object p4, p0, Lorg/ton/block/StorageInfo;->duePayment:Lorg/ton/block/Maybe;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/StorageUsed;Lkotlin/UInt;Lorg/ton/block/Maybe;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/ton/block/StorageInfo;-><init>(ILorg/ton/block/StorageUsed;Lkotlin/UInt;Lorg/ton/block/Maybe;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lorg/ton/block/StorageUsed;ILorg/ton/block/Maybe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/StorageUsed;",
            "I",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;)V"
        }
    .end annotation

    const-string v0, "used"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "duePayment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/ton/block/StorageInfo;->used:Lorg/ton/block/StorageUsed;

    .line 18
    iput p2, p0, Lorg/ton/block/StorageInfo;->lastPaid:I

    .line 21
    iput-object p3, p0, Lorg/ton/block/StorageInfo;->duePayment:Lorg/ton/block/Maybe;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/block/StorageUsed;ILorg/ton/block/Maybe;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/ton/block/StorageInfo;-><init>(Lorg/ton/block/StorageUsed;ILorg/ton/block/Maybe;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/block/StorageInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/StorageInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 12
    sget-object v0, Lorg/ton/block/StorageInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/block/StorageUsed$$serializer;->INSTANCE:Lorg/ton/block/StorageUsed$$serializer;

    iget-object v2, p0, Lorg/ton/block/StorageInfo;->used:Lorg/ton/block/StorageUsed;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    iget v2, p0, Lorg/ton/block/StorageInfo;->lastPaid:I

    invoke-static {v2}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/StorageInfo;->duePayment:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final duePayment()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/ton/block/StorageInfo;->duePayment:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/StorageInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/StorageInfo;

    iget-object v1, p0, Lorg/ton/block/StorageInfo;->used:Lorg/ton/block/StorageUsed;

    iget-object v3, p1, Lorg/ton/block/StorageInfo;->used:Lorg/ton/block/StorageUsed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/block/StorageInfo;->lastPaid:I

    iget v3, p1, Lorg/ton/block/StorageInfo;->lastPaid:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/StorageInfo;->duePayment:Lorg/ton/block/Maybe;

    iget-object p1, p1, Lorg/ton/block/StorageInfo;->duePayment:Lorg/ton/block/Maybe;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/StorageInfo;->used:Lorg/ton/block/StorageUsed;

    invoke-virtual {v0}, Lorg/ton/block/StorageUsed;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/StorageInfo;->lastPaid:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/StorageInfo;->duePayment:Lorg/ton/block/Maybe;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final lastPaid()I
    .locals 1

    .line 19
    iget v0, p0, Lorg/ton/block/StorageInfo;->lastPaid:I

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage_info"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lorg/ton/block/StorageInfo;->used:Lorg/ton/block/StorageUsed;

    const-string v2, "used"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 33
    iget v1, p0, Lorg/ton/block/StorageInfo;->lastPaid:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "last_paid"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 34
    iget-object v1, p0, Lorg/ton/block/StorageInfo;->duePayment:Lorg/ton/block/Maybe;

    const-string v2, "due_payment"

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

    .line 38
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final used()Lorg/ton/block/StorageUsed;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/block/StorageInfo;->used:Lorg/ton/block/StorageUsed;

    return-object v0
.end method
