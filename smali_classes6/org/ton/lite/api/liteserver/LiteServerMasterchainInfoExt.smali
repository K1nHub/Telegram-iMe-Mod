.class public final Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;
.super Ljava/lang/Object;
.source "LiteServerMasterchainInfoExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$$serializer;,
        Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$Companion;


# instance fields
.field private final capabilities:J

.field private final init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

.field private final last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

.field private final lastUtime:I

.field private final mode:I

.field private final now:I

.field private final stateRootHash:[B

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->Companion:Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IIIJLorg/ton/api/tonnode/TonNodeBlockIdExt;II[BLorg/ton/api/tonnode/TonNodeZeroStateIdExt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit16 p11, p1, 0xff

    const/16 v0, 0xff

    if-eq v0, p11, :cond_0

    .line 9
    sget-object p11, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$$serializer;

    invoke-virtual {p11}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p11

    invoke-static {p1, v0, p11}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->mode:I

    iput p3, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->version:I

    iput-wide p4, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->capabilities:J

    iput-object p6, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iput p7, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->lastUtime:I

    iput p8, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->now:I

    iput-object p9, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->stateRootHash:[B

    iput-object p10, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    return-void
.end method

.method public constructor <init>(IIJLorg/ton/api/tonnode/TonNodeBlockIdExt;II[BLorg/ton/api/tonnode/TonNodeZeroStateIdExt;)V
    .locals 1

    const-string v0, "last"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateRootHash"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->mode:I

    .line 13
    iput p2, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->version:I

    .line 14
    iput-wide p3, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->capabilities:J

    .line 15
    iput-object p5, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 16
    iput p6, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->lastUtime:I

    .line 18
    iput p7, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->now:I

    .line 19
    iput-object p8, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->stateRootHash:[B

    .line 21
    iput-object p9, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 9
    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->mode:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->version:I

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget-wide v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->capabilities:J

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->lastUtime:I

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->now:I

    const/4 v1, 0x5

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v0, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->stateRootHash:[B

    const/4 v2, 0x6

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;

    iget-object p0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    const/4 v1, 0x7

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 25
    :cond_0
    instance-of v1, p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 26
    :cond_1
    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->mode:I

    check-cast p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;

    iget v3, p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->mode:I

    if-eq v1, v3, :cond_2

    return v2

    .line 27
    :cond_2
    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->version:I

    iget v3, p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->version:I

    if-eq v1, v3, :cond_3

    return v2

    .line 28
    :cond_3
    iget-wide v3, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->capabilities:J

    iget-wide v5, p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->capabilities:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 29
    :cond_4
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iget-object v3, p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 30
    :cond_5
    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->lastUtime:I

    iget v3, p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->lastUtime:I

    if-eq v1, v3, :cond_6

    return v2

    .line 31
    :cond_6
    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->now:I

    iget v3, p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->now:I

    if-eq v1, v3, :cond_7

    return v2

    .line 32
    :cond_7
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->stateRootHash:[B

    iget-object v3, p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->stateRootHash:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 33
    :cond_8
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    iget-object p1, p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getCapabilities()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->capabilities:J

    return-wide v0
.end method

.method public final getInit()Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    return-object v0
.end method

.method public final getLast()Lorg/ton/api/tonnode/TonNodeBlockIdExt;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    return-object v0
.end method

.method public final getLastUtime()I
    .locals 1

    .line 17
    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->lastUtime:I

    return v0
.end method

.method public final getMode()I
    .locals 1

    .line 12
    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->mode:I

    return v0
.end method

.method public final getNow()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->now:I

    return v0
.end method

.method public final getStateRootHash()[B
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->stateRootHash:[B

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 13
    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 38
    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->mode:I

    mul-int/lit8 v0, v0, 0x1f

    .line 39
    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->version:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget-wide v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->capabilities:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v1}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 42
    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->lastUtime:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->now:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->stateRootHash:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    invoke-virtual {v1}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteServerMasterchainInfoExt(mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->capabilities:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->lastUtime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", now="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->now:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stateRootHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->stateRootHash:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", init="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfoExt;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
