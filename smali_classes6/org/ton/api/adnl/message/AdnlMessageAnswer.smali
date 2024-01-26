.class public final Lorg/ton/api/adnl/message/AdnlMessageAnswer;
.super Ljava/lang/Object;
.source "AdnlMessageAnswer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/adnl/message/AdnlMessageAnswer$$serializer;,
        Lorg/ton/api/adnl/message/AdnlMessageAnswer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdnlMessageAnswer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdnlMessageAnswer.kt\norg/ton/api/adnl/message/AdnlMessageAnswer\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,58:1\n20#2:59\n10#2:60\n*S KotlinDebug\n*F\n+ 1 AdnlMessageAnswer.kt\norg/ton/api/adnl/message/AdnlMessageAnswer\n*L\n20#1:59\n20#1:60\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/adnl/message/AdnlMessageAnswer$Companion;


# instance fields
.field private final answer:[B

.field private final queryId:Lorg/ton/bitstring/BitString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/adnl/message/AdnlMessageAnswer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/adnl/message/AdnlMessageAnswer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->Companion:Lorg/ton/api/adnl/message/AdnlMessageAnswer$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/bitstring/BitString;[BLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 13
    sget-object p4, Lorg/ton/api/adnl/message/AdnlMessageAnswer$$serializer;->INSTANCE:Lorg/ton/api/adnl/message/AdnlMessageAnswer$$serializer;

    invoke-virtual {p4}, Lorg/ton/api/adnl/message/AdnlMessageAnswer$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->queryId:Lorg/ton/bitstring/BitString;

    iput-object p3, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->answer:[B

    .line 23
    invoke-interface {p2}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    const/16 p2, 0x100

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/ton/bitstring/BitString;[B)V
    .locals 1

    const-string v0, "queryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "answer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->queryId:Lorg/ton/bitstring/BitString;

    .line 18
    iput-object p2, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->answer:[B

    .line 23
    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    const/16 p2, 0x100

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B[B)V
    .locals 2

    const-string v0, "queryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "answer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 10
    sget-object v1, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v1, p1, v0}, Lorg/ton/bitstring/BitString$Companion;->of([BI)Lorg/ton/bitstring/BitString;

    move-result-object p1

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/ton/api/adnl/message/AdnlMessageAnswer;-><init>(Lorg/ton/bitstring/BitString;[B)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/api/adnl/message/AdnlMessageAnswer;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 13
    sget-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object v1, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->queryId:Lorg/ton/bitstring/BitString;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    iget-object p0, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->answer:[B

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lorg/ton/api/adnl/message/AdnlMessageAnswer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 29
    :cond_1
    iget-object v1, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->queryId:Lorg/ton/bitstring/BitString;

    check-cast p1, Lorg/ton/api/adnl/message/AdnlMessageAnswer;

    iget-object v3, p1, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->queryId:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 30
    :cond_2
    iget-object v1, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->answer:[B

    iget-object p1, p1, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->answer:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAnswer()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->answer:[B

    return-object v0
.end method

.method public final getQueryId()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->queryId:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->queryId:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-object v1, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->answer:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdnlMessageAnswer(queryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->queryId:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", answer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->answer:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
