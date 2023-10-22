.class public final Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;
.super Ljava/lang/Object;
.source "LiteServerMasterchainInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;,
        Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiteServerMasterchainInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiteServerMasterchainInfo.kt\norg/ton/lite/api/liteserver/LiteServerMasterchainInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$Companion;


# instance fields
.field private final init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

.field private final last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

.field private final stateRootHash:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->Companion:Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/api/tonnode/TonNodeBlockIdExt;[BLorg/ton/api/tonnode/TonNodeZeroStateIdExt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 14
    sget-object p5, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;

    invoke-virtual {p5}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iput-object p3, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->stateRootHash:[B

    iput-object p4, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    .line 22
    array-length p1, p3

    const/16 p2, 0x20

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid stateRootHash size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", expected: 32"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;[BLorg/ton/api/tonnode/TonNodeZeroStateIdExt;)V
    .locals 1

    const-string v0, "last"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateRootHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "init"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 18
    iput-object p2, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->stateRootHash:[B

    .line 19
    iput-object p3, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    .line 22
    array-length p1, p2

    const/16 p3, 0x20

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid stateRootHash size: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", expected: 32"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final synthetic write$Self(Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 14
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/crypto/HexByteArraySerializer;->INSTANCE:Lorg/ton/crypto/HexByteArraySerializer;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->stateRootHash:[B

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;

    iget-object p0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 27
    :cond_0
    instance-of v1, p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 28
    :cond_1
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    check-cast p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;

    iget-object v3, p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 29
    :cond_2
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->stateRootHash:[B

    iget-object v3, p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->stateRootHash:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 30
    :cond_3
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    iget-object p1, p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getInit()Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    return-object v0
.end method

.method public final getLast()Lorg/ton/api/tonnode/TonNodeBlockIdExt;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    return-object v0
.end method

.method public final getStateRootHash()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->stateRootHash:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->stateRootHash:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 37
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    invoke-virtual {v1}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteServerMasterchainInfo(last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->last:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stateRootHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->stateRootHash:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", init="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->init:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
