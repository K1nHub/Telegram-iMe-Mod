.class public final Lorg/ton/block/AccountStorage;
.super Ljava/lang/Object;
.source "AccountStorage.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/AccountStorage$$serializer;,
        Lorg/ton/block/AccountStorage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountStorage.kt\norg/ton/block/AccountStorage\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,58:1\n82#2,3:59\n*S KotlinDebug\n*F\n+ 1 AccountStorage.kt\norg/ton/block/AccountStorage\n*L\n25#1:59,3\n*E\n"
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

.field public static final Companion:Lorg/ton/block/AccountStorage$Companion;


# instance fields
.field private final balance:Lorg/ton/block/CurrencyCollection;

.field private final lastTransLt:J

.field private final state:Lorg/ton/block/AccountState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/ton/block/AccountStorage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/AccountStorage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/AccountStorage;->Companion:Lorg/ton/block/AccountStorage$Companion;

    const/4 v0, 0x3

    new-array v2, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v4, 0x1

    aput-object v1, v2, v4

    .line 33
    new-instance v1, Lkotlinx/serialization/SealedClassSerializer;

    const-class v5, Lorg/ton/block/AccountState;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    new-array v8, v0, [Lkotlin/reflect/KClass;

    const-class v5, Lorg/ton/block/AccountActive;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v8, v3

    const-class v5, Lorg/ton/block/AccountFrozen;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v8, v4

    const-class v5, Lorg/ton/block/AccountUninit;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v11, 0x2

    aput-object v5, v8, v11

    new-array v9, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/block/AccountActive$$serializer;->INSTANCE:Lorg/ton/block/AccountActive$$serializer;

    aput-object v0, v9, v3

    sget-object v0, Lorg/ton/block/AccountFrozen$$serializer;->INSTANCE:Lorg/ton/block/AccountFrozen$$serializer;

    aput-object v0, v9, v4

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v5, Lorg/ton/block/AccountUninit;->INSTANCE:Lorg/ton/block/AccountUninit;

    new-array v6, v4, [Ljava/lang/annotation/Annotation;

    .line 10
    new-instance v10, Lorg/ton/block/AccountStorage$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v12, "@type"

    invoke-direct {v10, v12}, Lorg/ton/block/AccountStorage$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v10, v6, v3

    const-string v10, "account_uninit"

    invoke-direct {v0, v10, v5, v6}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v0, v9, v11

    new-array v10, v4, [Ljava/lang/annotation/Annotation;

    new-instance v0, Lorg/ton/block/AccountStorage$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v0, v12}, Lorg/ton/block/AccountStorage$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v10, v3

    const-string v6, "org.ton.block.AccountState"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v2, v11

    .line 33
    sput-object v2, Lorg/ton/block/AccountStorage;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method private constructor <init>(ILkotlin/ULong;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/AccountState;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 12
    sget-object p5, Lorg/ton/block/AccountStorage$$serializer;->INSTANCE:Lorg/ton/block/AccountStorage$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/AccountStorage$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/AccountStorage;->lastTransLt:J

    iput-object p3, p0, Lorg/ton/block/AccountStorage;->balance:Lorg/ton/block/CurrencyCollection;

    iput-object p4, p0, Lorg/ton/block/AccountStorage;->state:Lorg/ton/block/AccountState;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/ULong;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/AccountState;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/ton/block/AccountStorage;-><init>(ILkotlin/ULong;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/AccountState;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(JLorg/ton/block/CurrencyCollection;Lorg/ton/block/AccountState;)V
    .locals 1

    const-string v0, "balance"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lorg/ton/block/AccountStorage;->lastTransLt:J

    .line 19
    iput-object p3, p0, Lorg/ton/block/AccountStorage;->balance:Lorg/ton/block/CurrencyCollection;

    .line 22
    iput-object p4, p0, Lorg/ton/block/AccountStorage;->state:Lorg/ton/block/AccountState;

    return-void
.end method

.method public synthetic constructor <init>(JLorg/ton/block/CurrencyCollection;Lorg/ton/block/AccountState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/block/AccountStorage;-><init>(JLorg/ton/block/CurrencyCollection;Lorg/ton/block/AccountState;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/block/AccountStorage;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/AccountStorage;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 12
    sget-object v0, Lorg/ton/block/AccountStorage;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v2, p0, Lorg/ton/block/AccountStorage;->lastTransLt:J

    invoke-static {v2, v3}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    iget-object v2, p0, Lorg/ton/block/AccountStorage;->balance:Lorg/ton/block/CurrencyCollection;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/AccountStorage;->state:Lorg/ton/block/AccountState;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final balance()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/ton/block/AccountStorage;->balance:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/AccountStorage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/AccountStorage;

    iget-wide v3, p0, Lorg/ton/block/AccountStorage;->lastTransLt:J

    iget-wide v5, p1, Lorg/ton/block/AccountStorage;->lastTransLt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/AccountStorage;->balance:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/AccountStorage;->balance:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/AccountStorage;->state:Lorg/ton/block/AccountState;

    iget-object p1, p1, Lorg/ton/block/AccountStorage;->state:Lorg/ton/block/AccountState;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lorg/ton/block/AccountStorage;->lastTransLt:J

    invoke-static {v0, v1}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/AccountStorage;->balance:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/AccountStorage;->state:Lorg/ton/block/AccountState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final lastTransLt()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lorg/ton/block/AccountStorage;->lastTransLt:J

    return-wide v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account_storage"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 26
    iget-wide v1, p0, Lorg/ton/block/AccountStorage;->lastTransLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "last_trans_lt"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 27
    iget-object v1, p0, Lorg/ton/block/AccountStorage;->balance:Lorg/ton/block/CurrencyCollection;

    const-string v2, "balance"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 28
    iget-object v1, p0, Lorg/ton/block/AccountStorage;->state:Lorg/ton/block/AccountState;

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public final state()Lorg/ton/block/AccountState;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/ton/block/AccountStorage;->state:Lorg/ton/block/AccountState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 31
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
