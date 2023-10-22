.class public final Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;
.super Ljava/lang/Object;
.source "LiteServerQuery.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/api/liteserver/functions/LiteServerQuery$$serializer;,
        Lorg/ton/lite/api/liteserver/functions/LiteServerQuery$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerQuery$Companion;


# instance fields
.field private final data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;->Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerQuery$Companion;

    return-void
.end method

.method public synthetic constructor <init>(I[BLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 14
    sget-object p3, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerQuery$$serializer;

    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;->data:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;->data:[B

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 14
    sget-object v0, Lorg/ton/crypto/HexByteArraySerializer;->INSTANCE:Lorg/ton/crypto/HexByteArraySerializer;

    iget-object p0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;->data:[B

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 21
    :cond_0
    instance-of v1, p1, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 22
    :cond_1
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;->data:[B

    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;

    iget-object p1, p1, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;->data:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getData()[B
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;->data:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteServerQuery(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
