.class public final Lorg/ton/api/adnl/AdnlAddressList;
.super Ljava/lang/Object;
.source "AdnlAddressList.kt"

# interfaces
.implements Ljava/util/Collection;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;
.implements Lj$/util/Collection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/adnl/AdnlAddressList$$serializer;,
        Lorg/ton/api/adnl/AdnlAddressList$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "Lorg/ton/api/adnl/AdnlAddress;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;",
        "Lj$/util/Collection;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
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

.field public static final Companion:Lorg/ton/api/adnl/AdnlAddressList$Companion;


# instance fields
.field private final addrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/ton/api/adnl/AdnlAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final expireAt:I

.field private final priority:I

.field private final reinitDate:I

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-class v0, Lorg/ton/api/adnl/AdnlAddressUdp6;

    const-class v1, Lorg/ton/api/adnl/AdnlAddressUdp;

    new-instance v2, Lorg/ton/api/adnl/AdnlAddressList$Companion;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/ton/api/adnl/AdnlAddressList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lorg/ton/api/adnl/AdnlAddressList;->Companion:Lorg/ton/api/adnl/AdnlAddressList$Companion;

    const/4 v2, 0x5

    new-array v4, v2, [Lkotlinx/serialization/KSerializer;

    .line 24
    new-instance v5, Lkotlinx/serialization/internal/ArrayListSerializer;

    new-instance v12, Lkotlinx/serialization/SealedClassSerializer;

    const-class v6, Lorg/ton/api/adnl/AdnlAddress;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v9, v2, [Lkotlin/reflect/KClass;

    const-class v6, Lorg/ton/api/adnl/AdnlAddressTunnel;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v13, 0x0

    aput-object v6, v9, v13

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v14, 0x1

    aput-object v6, v9, v14

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v15, 0x2

    aput-object v6, v9, v15

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/16 v16, 0x3

    aput-object v1, v9, v16

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v9, v1

    new-array v10, v2, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/api/adnl/AdnlAddressTunnel$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressTunnel$$serializer;

    aput-object v0, v10, v13

    sget-object v0, Lorg/ton/api/adnl/AdnlAddressUdp$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressUdp$$serializer;

    aput-object v0, v10, v14

    sget-object v2, Lorg/ton/api/adnl/AdnlAddressUdp6$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressUdp6$$serializer;

    aput-object v2, v10, v15

    aput-object v0, v10, v16

    aput-object v2, v10, v1

    new-array v11, v14, [Ljava/lang/annotation/Annotation;

    .line 14
    new-instance v0, Lorg/ton/api/adnl/AdnlAddressList$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v2, "@type"

    invoke-direct {v0, v2}, Lorg/ton/api/adnl/AdnlAddressList$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v11, v13

    const-string v7, "org.ton.api.adnl.AdnlAddress"

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    invoke-direct {v5, v12}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    aput-object v5, v4, v13

    aput-object v3, v4, v14

    aput-object v3, v4, v15

    aput-object v3, v4, v16

    aput-object v3, v4, v1

    .line 24
    sput-object v4, Lorg/ton/api/adnl/AdnlAddressList;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/ton/api/adnl/AdnlAddressList;-><init>(Ljava/util/Collection;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/Collection;IIIILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p1, 0x0

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 8
    sget-object p7, Lorg/ton/api/adnl/AdnlAddressList$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressList$$serializer;

    invoke-virtual {p7}, Lorg/ton/api/adnl/AdnlAddressList$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p7, p1, 0x1

    if-nez p7, :cond_1

    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 8
    :cond_1
    iput-object p2, p0, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_2

    iput v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->version:I

    goto :goto_0

    :cond_2
    iput p3, p0, Lorg/ton/api/adnl/AdnlAddressList;->version:I

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_3

    iput v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->reinitDate:I

    goto :goto_1

    :cond_3
    iput p4, p0, Lorg/ton/api/adnl/AdnlAddressList;->reinitDate:I

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_4

    iput v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->priority:I

    goto :goto_2

    :cond_4
    iput p5, p0, Lorg/ton/api/adnl/AdnlAddressList;->priority:I

    :goto_2
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_5

    iput v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->expireAt:I

    goto :goto_3

    :cond_5
    iput p6, p0, Lorg/ton/api/adnl/AdnlAddressList;->expireAt:I

    :goto_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/ton/api/adnl/AdnlAddress;",
            ">;IIII)V"
        }
    .end annotation

    const-string v0, "addrs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    .line 13
    iput p2, p0, Lorg/ton/api/adnl/AdnlAddressList;->version:I

    .line 14
    iput p3, p0, Lorg/ton/api/adnl/AdnlAddressList;->reinitDate:I

    .line 16
    iput p4, p0, Lorg/ton/api/adnl/AdnlAddressList;->priority:I

    .line 17
    iput p5, p0, Lorg/ton/api/adnl/AdnlAddressList;->expireAt:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    move p7, v0

    goto :goto_0

    :cond_1
    move p7, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move v0, p5

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v1

    move p6, v2

    move p7, v0

    .line 11
    invoke-direct/range {p2 .. p7}, Lorg/ton/api/adnl/AdnlAddressList;-><init>(Ljava/util/Collection;IIII)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 8
    sget-object v0, Lorg/ton/api/adnl/AdnlAddressList;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/api/adnl/AdnlAddressList;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5

    .line 8
    sget-object v0, Lorg/ton/api/adnl/AdnlAddressList;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 8
    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    move v0, v3

    goto :goto_3

    :cond_3
    iget v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->version:I

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    iget v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->version:I

    invoke-interface {p1, p2, v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_5
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_4
    move v2, v3

    goto :goto_5

    :cond_6
    iget v2, p0, Lorg/ton/api/adnl/AdnlAddressList;->reinitDate:I

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move v2, v1

    :goto_5
    if-eqz v2, :cond_8

    iget v2, p0, Lorg/ton/api/adnl/AdnlAddressList;->reinitDate:I

    invoke-interface {p1, p2, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_8
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_6
    move v2, v3

    goto :goto_7

    :cond_9
    iget v2, p0, Lorg/ton/api/adnl/AdnlAddressList;->priority:I

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    move v2, v1

    :goto_7
    if-eqz v2, :cond_b

    iget v2, p0, Lorg/ton/api/adnl/AdnlAddressList;->priority:I

    invoke-interface {p1, p2, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_b
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_8
    move v1, v3

    goto :goto_9

    :cond_c
    iget v2, p0, Lorg/ton/api/adnl/AdnlAddressList;->expireAt:I

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    :goto_9
    if-eqz v1, :cond_e

    iget p0, p0, Lorg/ton/api/adnl/AdnlAddressList;->expireAt:I

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_e
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/ton/api/adnl/AdnlAddress;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 8
    instance-of v0, p1, Lorg/ton/api/adnl/AdnlAddress;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/ton/api/adnl/AdnlAddress;

    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/AdnlAddressList;->contains(Lorg/ton/api/adnl/AdnlAddress;)Z

    move-result p1

    return p1
.end method

.method public contains(Lorg/ton/api/adnl/AdnlAddress;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/api/adnl/AdnlAddressList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/api/adnl/AdnlAddressList;

    iget-object v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    iget-object v3, p1, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->version:I

    iget v3, p1, Lorg/ton/api/adnl/AdnlAddressList;->version:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->reinitDate:I

    iget v3, p1, Lorg/ton/api/adnl/AdnlAddressList;->reinitDate:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->priority:I

    iget v3, p1, Lorg/ton/api/adnl/AdnlAddressList;->priority:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->expireAt:I

    iget p1, p1, Lorg/ton/api/adnl/AdnlAddressList;->expireAt:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public synthetic forEach(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/lang/Iterable$-CC;->$default$forEach(Ljava/lang/Iterable;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final getAddrs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/ton/api/adnl/AdnlAddress;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    return-object v0
.end method

.method public final getExpireAt()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->expireAt:I

    return v0
.end method

.method public final getPriority()I
    .locals 1

    .line 16
    iget v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->priority:I

    return v0
.end method

.method public final getReinitDate()I
    .locals 1

    .line 15
    iget v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->reinitDate:I

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public final getVersion()I
    .locals 1

    .line 13
    iget v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->version:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->reinitDate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->priority:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->expireAt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/ton/api/adnl/AdnlAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parallelStream()Lj$/util/stream/Stream;
    .locals 1

    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeIf(Lj$/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/function/Predicate<",
            "-",
            "Lorg/ton/api/adnl/AdnlAddress;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic removeIf(Ljava/util/function/Predicate;)Z
    .locals 0

    invoke-static {p1}, Lj$/wrappers/$r8$wrapper$java$util$function$Predicate$-V-WRP;->convert(Ljava/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/AdnlAddressList;->removeIf(Lj$/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge size()I
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/ton/api/adnl/AdnlAddressList;->getSize()I

    move-result v0

    return v0
.end method

.method public synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Lj$/util/stream/Stream;
    .locals 1

    invoke-static {p0}, Lj$/util/Collection$-CC;->$default$stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toArray(Lj$/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Lj$/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdnlAddressList(addrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->addrs:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reinitDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->reinitDate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expireAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/api/adnl/AdnlAddressList;->expireAt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
