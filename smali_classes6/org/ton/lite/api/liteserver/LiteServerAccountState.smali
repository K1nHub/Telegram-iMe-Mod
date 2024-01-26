.class public final Lorg/ton/lite/api/liteserver/LiteServerAccountState;
.super Ljava/lang/Object;
.source "LiteServerAccountState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/api/liteserver/LiteServerAccountState$$serializer;,
        Lorg/ton/lite/api/liteserver/LiteServerAccountState$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/lite/api/liteserver/LiteServerAccountState$Companion;


# instance fields
.field private final id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

.field private final proof:[B

.field private final shardBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

.field private final shardProof:[B

.field private final state:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/lite/api/liteserver/LiteServerAccountState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/lite/api/liteserver/LiteServerAccountState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->Companion:Lorg/ton/lite/api/liteserver/LiteServerAccountState$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/api/tonnode/TonNodeBlockIdExt;[B[B[BLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p7, :cond_0

    .line 12
    sget-object p7, Lorg/ton/lite/api/liteserver/LiteServerAccountState$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerAccountState$$serializer;

    invoke-virtual {p7}, Lorg/ton/lite/api/liteserver/LiteServerAccountState$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iput-object p3, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iput-object p4, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardProof:[B

    iput-object p5, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->proof:[B

    iput-object p6, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->state:[B

    return-void
.end method

.method public constructor <init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/api/tonnode/TonNodeBlockIdExt;[B[B[B)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shardBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shardProof"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proof"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 16
    iput-object p2, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 18
    iput-object p3, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardProof:[B

    .line 20
    iput-object p4, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->proof:[B

    .line 21
    iput-object p5, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->state:[B

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/lite/api/liteserver/LiteServerAccountState;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 12
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/crypto/Base64ByteArraySerializer;->INSTANCE:Lorg/ton/crypto/Base64ByteArraySerializer;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardProof:[B

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->proof:[B

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->state:[B

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 25
    :cond_0
    instance-of v1, p1, Lorg/ton/lite/api/liteserver/LiteServerAccountState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 27
    :cond_1
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    check-cast p1, Lorg/ton/lite/api/liteserver/LiteServerAccountState;

    iget-object v3, p1, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 28
    :cond_2
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iget-object v3, p1, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 29
    :cond_3
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardProof:[B

    iget-object v3, p1, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardProof:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 30
    :cond_4
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->proof:[B

    iget-object v3, p1, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->proof:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 31
    :cond_5
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->state:[B

    iget-object p1, p1, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->state:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getId()Lorg/ton/api/tonnode/TonNodeBlockIdExt;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    return-object v0
.end method

.method public final getProof()[B
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->proof:[B

    return-object v0
.end method

.method public final getShardBlock()Lorg/ton/api/tonnode/TonNodeBlockIdExt;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    return-object v0
.end method

.method public final getShardProof()[B
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardProof:[B

    return-object v0
.end method

.method public final getState()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->state:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v1}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 39
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardProof:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 40
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->proof:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 41
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->state:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteServerAccountState(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shardBlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardBlock:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shardProof="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->shardProof:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", proof="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->proof:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->state:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
