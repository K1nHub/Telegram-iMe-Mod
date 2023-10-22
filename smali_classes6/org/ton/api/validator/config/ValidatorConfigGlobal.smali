.class public final Lorg/ton/api/validator/config/ValidatorConfigGlobal;
.super Ljava/lang/Object;
.source "ValidatorConfigGlobal.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/validator/config/ValidatorConfigGlobal$$serializer;,
        Lorg/ton/api/validator/config/ValidatorConfigGlobal$Companion;
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

.field public static final Companion:Lorg/ton/api/validator/config/ValidatorConfigGlobal$Companion;


# instance fields
.field private final hardforks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/ton/api/tonnode/TonNodeBlockIdExt;",
            ">;"
        }
    .end annotation
.end field

.field private final initBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

.field private final zeroState:Lorg/ton/api/tonnode/TonNodeBlockIdExt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/api/validator/config/ValidatorConfigGlobal$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/validator/config/ValidatorConfigGlobal$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->Companion:Lorg/ton/api/validator/config/ValidatorConfigGlobal$Companion;

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 22
    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/ton/api/validator/config/ValidatorConfigGlobal;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Ljava/util/Collection;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 6

    and-int/lit8 p5, p1, 0x0

    if-eqz p5, :cond_0

    .line 11
    sget-object p5, Lorg/ton/api/validator/config/ValidatorConfigGlobal$$serializer;->INSTANCE:Lorg/ton/api/validator/config/ValidatorConfigGlobal$$serializer;

    invoke-virtual {p5}, Lorg/ton/api/validator/config/ValidatorConfigGlobal$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    const/4 v0, 0x0

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p5, p1, 0x1

    if-nez p5, :cond_1

    .line 16
    new-instance p2, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;-><init>(Lorg/ton/api/tonnode/TonNodeBlockId;Lorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    :cond_1
    iput-object p2, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->zeroState:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_2

    .line 18
    new-instance p2, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;-><init>(Lorg/ton/api/tonnode/TonNodeBlockId;Lorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    iput-object p2, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->initBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    goto :goto_0

    :cond_2
    iput-object p3, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->initBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_3

    .line 20
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->hardforks:Ljava/util/Collection;

    goto :goto_1

    :cond_3
    iput-object p4, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->hardforks:Ljava/util/Collection;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/api/tonnode/TonNodeBlockIdExt;",
            "Lorg/ton/api/tonnode/TonNodeBlockIdExt;",
            "Ljava/util/Collection<",
            "Lorg/ton/api/tonnode/TonNodeBlockIdExt;",
            ">;)V"
        }
    .end annotation

    const-string v0, "zeroState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hardforks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->zeroState:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 17
    iput-object p2, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->initBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 19
    iput-object p3, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->hardforks:Ljava/util/Collection;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 16
    new-instance p1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;-><init>(Lorg/ton/api/tonnode/TonNodeBlockId;Lorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 18
    new-instance p2, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;-><init>(Lorg/ton/api/tonnode/TonNodeBlockId;Lorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 20
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 14
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/ton/api/validator/config/ValidatorConfigGlobal;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Ljava/util/Collection;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/api/validator/config/ValidatorConfigGlobal;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 11

    .line 11
    sget-object v0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->zeroState:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 16
    new-instance v10, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;-><init>(Lorg/ton/api/tonnode/TonNodeBlockId;Lorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 11
    sget-object v2, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    iget-object v4, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->zeroState:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-interface {p1, p2, v1, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->initBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 18
    new-instance v10, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;-><init>(Lorg/ton/api/tonnode/TonNodeBlockId;Lorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_3
    if-eqz v2, :cond_5

    .line 11
    sget-object v2, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    iget-object v4, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->initBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-interface {p1, p2, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v2, 0x2

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_4
    move v1, v3

    goto :goto_5

    :cond_6
    iget-object v4, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->hardforks:Ljava/util/Collection;

    .line 20
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    .line 11
    aget-object v0, v0, v2

    iget-object p0, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->hardforks:Ljava/util/Collection;

    invoke-interface {p1, p2, v2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    iget-object v1, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->zeroState:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iget-object v3, p1, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->zeroState:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->initBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iget-object v3, p1, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->initBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->hardforks:Ljava/util/Collection;

    iget-object p1, p1, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->hardforks:Ljava/util/Collection;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getHardforks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/ton/api/tonnode/TonNodeBlockIdExt;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->hardforks:Ljava/util/Collection;

    return-object v0
.end method

.method public final getInitBlock()Lorg/ton/api/tonnode/TonNodeBlockIdExt;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->initBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    return-object v0
.end method

.method public final getZeroState()Lorg/ton/api/tonnode/TonNodeBlockIdExt;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->zeroState:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->zeroState:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->initBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v1}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->hardforks:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValidatorConfigGlobal(zeroState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->zeroState:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initBlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->initBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hardforks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->hardforks:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
