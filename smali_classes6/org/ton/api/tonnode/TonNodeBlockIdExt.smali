.class public final Lorg/ton/api/tonnode/TonNodeBlockIdExt;
.super Ljava/lang/Object;
.source "TonNodeBlockIdExt.kt"

# interfaces
.implements Lorg/ton/api/tonnode/TonNodeBlockId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;,
        Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonNodeBlockIdExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonNodeBlockIdExt.kt\norg/ton/api/tonnode/TonNodeBlockIdExt\n+ 2 TonNodeBlockId.kt\norg/ton/api/tonnode/TonNodeBlockIdKt\n*L\n1#1,123:1\n12#2,5:124\n*S KotlinDebug\n*F\n+ 1 TonNodeBlockIdExt.kt\norg/ton/api/tonnode/TonNodeBlockIdExt\n*L\n56#1:124,5\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;


# instance fields
.field private final fileHash:Lorg/ton/tl/ByteString;

.field private final rootHash:Lorg/ton/tl/ByteString;

.field private final seqno:I

.field private final shard:J

.field private final workchain:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IIJILorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p8, :cond_0

    .line 13
    sget-object p8, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    invoke-virtual {p8}, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->workchain:I

    iput-wide p3, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->shard:J

    iput p5, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno:I

    iput-object p6, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->rootHash:Lorg/ton/tl/ByteString;

    iput-object p7, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->fileHash:Lorg/ton/tl/ByteString;

    return-void
.end method

.method public constructor <init>(IJILorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;)V
    .locals 1

    const-string v0, "rootHash"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileHash"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->workchain:I

    .line 19
    iput-wide p2, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->shard:J

    .line 23
    iput p4, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno:I

    .line 27
    iput-object p5, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->rootHash:Lorg/ton/tl/ByteString;

    .line 31
    iput-object p6, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->fileHash:Lorg/ton/tl/ByteString;

    return-void
.end method

.method public constructor <init>(IJI[B[B)V
    .locals 14

    const-string v0, "rootHash"

    move-object/from16 v2, p5

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileHash"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lorg/ton/tl/ByteString;->Companion:Lorg/ton/tl/ByteString$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lorg/ton/tl/ByteString$Companion;->of$default(Lorg/ton/tl/ByteString$Companion;[BIIILjava/lang/Object;)Lorg/ton/tl/ByteString;

    move-result-object v12

    move-object/from16 v2, p6

    invoke-static/range {v1 .. v6}, Lorg/ton/tl/ByteString$Companion;->of$default(Lorg/ton/tl/ByteString$Companion;[BIIILjava/lang/Object;)Lorg/ton/tl/ByteString;

    move-result-object v13

    move-object v7, p0

    move v8, p1

    move-wide/from16 v9, p2

    move/from16 v11, p4

    invoke-direct/range {v7 .. v13}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;-><init>(IJILorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lorg/ton/api/tonnode/TonNodeBlockId;Lorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;)V
    .locals 8

    const-string v0, "tonNodeBlockId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileHash"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Lorg/ton/api/tonnode/TonNodeBlockId;->getWorkchain()I

    move-result v2

    .line 61
    invoke-interface {p1}, Lorg/ton/api/tonnode/TonNodeBlockId;->getShard()J

    move-result-wide v3

    .line 62
    invoke-interface {p1}, Lorg/ton/api/tonnode/TonNodeBlockId;->getSeqno()I

    move-result v5

    move-object v1, p0

    move-object v6, p2

    move-object v7, p3

    .line 59
    invoke-direct/range {v1 .. v7}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;-><init>(IJILorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/api/tonnode/TonNodeBlockId;Lorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/high16 p1, -0x80000000

    const-wide/16 v0, 0x0

    const/4 p5, 0x0

    .line 16
    sget-object v2, Lorg/ton/api/tonnode/TonNodeBlockId;->Companion:Lorg/ton/api/tonnode/TonNodeBlockId$Companion;

    invoke-virtual {v2, p1, v0, v1, p5}, Lorg/ton/api/tonnode/TonNodeBlockId$Companion;->of(IJI)Lorg/ton/api/tonnode/TonNodeBlockId;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/16 v0, 0x20

    if-eqz p5, :cond_1

    .line 57
    sget-object p2, Lorg/ton/tl/ByteString;->Companion:Lorg/ton/tl/ByteString$Companion;

    new-array p5, v0, [B

    invoke-virtual {p2, p5}, Lorg/ton/tl/ByteString$Companion;->of([B)Lorg/ton/tl/ByteString;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 58
    sget-object p3, Lorg/ton/tl/ByteString;->Companion:Lorg/ton/tl/ByteString$Companion;

    new-array p4, v0, [B

    invoke-virtual {p3, p4}, Lorg/ton/tl/ByteString$Companion;->of([B)Lorg/ton/tl/ByteString;

    move-result-object p3

    .line 55
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;-><init>(Lorg/ton/api/tonnode/TonNodeBlockId;Lorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 13
    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->workchain()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->shard()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v0, Lorg/ton/tl/ByteStringSerializer;->INSTANCE:Lorg/ton/tl/ByteStringSerializer;

    iget-object v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->rootHash:Lorg/ton/tl/ByteString;

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->fileHash:Lorg/ton/tl/ByteString;

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iget v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->workchain:I

    iget v3, p1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->workchain:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->shard:J

    iget-wide v5, p1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->shard:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno:I

    iget v3, p1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->rootHash:Lorg/ton/tl/ByteString;

    iget-object v3, p1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->rootHash:Lorg/ton/tl/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->fileHash:Lorg/ton/tl/ByteString;

    iget-object p1, p1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->fileHash:Lorg/ton/tl/ByteString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final fileHash()Lorg/ton/tl/ByteString;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->fileHash:Lorg/ton/tl/ByteString;

    return-object v0
.end method

.method public bridge synthetic getSeqno()I
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getShard()J
    .locals 2

    .line 13
    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->shard()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getWorkchain()I
    .locals 1

    .line 13
    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->workchain()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->workchain:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->shard:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->rootHash:Lorg/ton/tl/ByteString;

    invoke-virtual {v1}, Lorg/ton/tl/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->fileHash:Lorg/ton/tl/ByteString;

    invoke-virtual {v1}, Lorg/ton/tl/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isMasterchain()Z
    .locals 1

    .line 13
    invoke-static {p0}, Lorg/ton/api/tonnode/TonNodeBlockId$DefaultImpls;->isMasterchain(Lorg/ton/api/tonnode/TonNodeBlockId;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 13
    invoke-static {p0}, Lorg/ton/api/tonnode/TonNodeBlockId$DefaultImpls;->isValid(Lorg/ton/api/tonnode/TonNodeBlockId;)Z

    move-result v0

    return v0
.end method

.method public isValidFull()Z
    .locals 1

    .line 13
    invoke-static {p0}, Lorg/ton/api/tonnode/TonNodeBlockId$DefaultImpls;->isValidFull(Lorg/ton/api/tonnode/TonNodeBlockId;)Z

    move-result v0

    return v0
.end method

.method public final rootHash()Lorg/ton/tl/ByteString;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->rootHash:Lorg/ton/tl/ByteString;

    return-object v0
.end method

.method public seqno()I
    .locals 1

    .line 25
    iget v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno:I

    return v0
.end method

.method public shard()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->shard:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->workchain()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->shard()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Lkotlin/text/UStringsKt;->toString-JSWoG40(JI)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->seqno()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v2, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->rootHash:Lorg/ton/tl/ByteString;

    invoke-virtual {v2}, Lorg/ton/tl/ByteString;->encodeHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->fileHash:Lorg/ton/tl/ByteString;

    invoke-virtual {v1}, Lorg/ton/tl/ByteString;->encodeHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public workchain()I
    .locals 1

    .line 17
    iget v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->workchain:I

    return v0
.end method
