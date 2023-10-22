.class public final Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;
.super Ljava/lang/Object;
.source "LiteServerWaitMasterchainSeqno.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$$serializer;,
        Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;


# instance fields
.field private final seqno:I

.field private final timeoutMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->seqno:I

    .line 14
    iput p2, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->timeoutMs:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 10
    sget-object p4, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$$serializer;

    invoke-virtual {p4}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->seqno:I

    iput p3, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->timeoutMs:I

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 10
    iget v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->seqno:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget p0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->timeoutMs:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    iget v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->seqno:I

    iget v3, p1, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->seqno:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->timeoutMs:I

    iget p1, p1, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->timeoutMs:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getSeqno()I
    .locals 1

    .line 13
    iget v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->seqno:I

    return v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    .line 15
    iget v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->timeoutMs:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->seqno:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->timeoutMs:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteServerWaitMasterchainSeqno(seqno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->seqno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->timeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
