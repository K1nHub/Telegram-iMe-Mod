.class public final Lorg/ton/block/LibDescr;
.super Ljava/lang/Object;
.source "LibDescr.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/LibDescr$$serializer;,
        Lorg/ton/block/LibDescr$Companion;
    }
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

.field public static final Companion:Lorg/ton/block/LibDescr$Companion;


# instance fields
.field private final lib:Lorg/ton/cell/Cell;

.field private final publishers:Lorg/ton/hashmap/HmEdge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HmEdge<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/ton/block/LibDescr$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/LibDescr$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/LibDescr;->Companion:Lorg/ton/block/LibDescr$Companion;

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 22
    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v2, Lorg/ton/cell/Cell;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/annotation/Annotation;

    new-instance v5, Lorg/ton/block/LibDescr$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v6, "@type"

    invoke-direct {v5, v6}, Lorg/ton/block/LibDescr$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {v1, v2, v4}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v0, v6

    sget-object v1, Lorg/ton/hashmap/HmEdge;->Companion:Lorg/ton/hashmap/HmEdge$Companion;

    sget-object v2, Lkotlinx/serialization/internal/UnitSerializer;->INSTANCE:Lkotlinx/serialization/internal/UnitSerializer;

    invoke-virtual {v1, v2}, Lorg/ton/hashmap/HmEdge$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lorg/ton/block/LibDescr;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/cell/Cell;Lorg/ton/hashmap/HmEdge;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 16
    sget-object p4, Lorg/ton/block/LibDescr$$serializer;->INSTANCE:Lorg/ton/block/LibDescr$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/LibDescr$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/LibDescr;->lib:Lorg/ton/cell/Cell;

    iput-object p3, p0, Lorg/ton/block/LibDescr;->publishers:Lorg/ton/hashmap/HmEdge;

    return-void
.end method

.method public constructor <init>(Lorg/ton/cell/Cell;Lorg/ton/hashmap/HmEdge;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/Cell;",
            "Lorg/ton/hashmap/HmEdge<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lib"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/ton/block/LibDescr;->lib:Lorg/ton/cell/Cell;

    .line 20
    iput-object p2, p0, Lorg/ton/block/LibDescr;->publishers:Lorg/ton/hashmap/HmEdge;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 16
    sget-object v0, Lorg/ton/block/LibDescr;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/LibDescr;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 16
    sget-object v0, Lorg/ton/block/LibDescr;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/LibDescr;->lib:Lorg/ton/cell/Cell;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/LibDescr;->publishers:Lorg/ton/hashmap/HmEdge;

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
    instance-of v1, p1, Lorg/ton/block/LibDescr;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/LibDescr;

    iget-object v1, p0, Lorg/ton/block/LibDescr;->lib:Lorg/ton/cell/Cell;

    iget-object v3, p1, Lorg/ton/block/LibDescr;->lib:Lorg/ton/cell/Cell;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/LibDescr;->publishers:Lorg/ton/hashmap/HmEdge;

    iget-object p1, p1, Lorg/ton/block/LibDescr;->publishers:Lorg/ton/hashmap/HmEdge;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLib()Lorg/ton/cell/Cell;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/block/LibDescr;->lib:Lorg/ton/cell/Cell;

    return-object v0
.end method

.method public final getPublishers()Lorg/ton/hashmap/HmEdge;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HmEdge<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/ton/block/LibDescr;->publishers:Lorg/ton/hashmap/HmEdge;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/LibDescr;->lib:Lorg/ton/cell/Cell;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/LibDescr;->publishers:Lorg/ton/hashmap/HmEdge;

    invoke-virtual {v1}, Lorg/ton/hashmap/HmEdge;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LibDescr(lib="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/LibDescr;->lib:Lorg/ton/cell/Cell;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", publishers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/LibDescr;->publishers:Lorg/ton/hashmap/HmEdge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
