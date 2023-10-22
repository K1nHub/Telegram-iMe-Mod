.class final Lorg/ton/api/tonnode/TonNodeBlockIdImpl;
.super Ljava/lang/Object;
.source "TonNodeBlockId.kt"

# interfaces
.implements Lorg/ton/api/tonnode/TonNodeBlockId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/tonnode/TonNodeBlockIdImpl$$serializer;,
        Lorg/ton/api/tonnode/TonNodeBlockIdImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonNodeBlockId.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonNodeBlockId.kt\norg/ton/api/tonnode/TonNodeBlockIdImpl\n+ 2 Shard.kt\norg/ton/api/tonnode/ShardKt\n+ 3 Shard.kt\norg/ton/api/tonnode/Shard\n*L\n1#1,87:1\n56#2:88\n19#3:89\n*S KotlinDebug\n*F\n+ 1 TonNodeBlockId.kt\norg/ton/api/tonnode/TonNodeBlockIdImpl\n*L\n68#1:88\n68#1:89\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/tonnode/TonNodeBlockIdImpl$Companion;


# instance fields
.field private final seqno:I

.field private final shard:J

.field private final workchain:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/tonnode/TonNodeBlockIdImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->Companion:Lorg/ton/api/tonnode/TonNodeBlockIdImpl$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IIJILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p6, :cond_0

    .line 60
    sget-object p6, Lorg/ton/api/tonnode/TonNodeBlockIdImpl$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdImpl$$serializer;

    invoke-virtual {p6}, Lorg/ton/api/tonnode/TonNodeBlockIdImpl$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->workchain:I

    iput-wide p3, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->shard:J

    iput p5, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->seqno:I

    return-void
.end method

.method public constructor <init>(IJI)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->workchain:I

    .line 63
    iput-wide p2, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->shard:J

    .line 64
    iput p4, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->seqno:I

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/api/tonnode/TonNodeBlockIdImpl;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 60
    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->getWorkchain()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->getShard()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->getSeqno()I

    move-result p0

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;

    iget v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->workchain:I

    iget v3, p1, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->workchain:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->shard:J

    iget-wide v5, p1, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->shard:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->seqno:I

    iget p1, p1, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->seqno:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getSeqno()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->seqno:I

    return v0
.end method

.method public getShard()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->shard:J

    return-wide v0
.end method

.method public getWorkchain()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->workchain:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->workchain:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->shard:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->seqno:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isMasterchain()Z
    .locals 1

    .line 60
    invoke-static {p0}, Lorg/ton/api/tonnode/TonNodeBlockId$DefaultImpls;->isMasterchain(Lorg/ton/api/tonnode/TonNodeBlockId;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 60
    invoke-static {p0}, Lorg/ton/api/tonnode/TonNodeBlockId$DefaultImpls;->isValid(Lorg/ton/api/tonnode/TonNodeBlockId;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->getWorkchain()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->getShard()J

    move-result-wide v2

    .line 56
    invoke-static {v2, v3}, Lorg/ton/api/tonnode/Shard;->constructor-impl(J)J

    move-result-wide v2

    .line 19
    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lkotlin/text/UStringsKt;->toString-JSWoG40(JI)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x30

    invoke-static {v2, v4, v3}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdImpl;->getSeqno()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
