.class public final Lorg/ton/api/adnl/message/AdnlMessageQuery;
.super Ljava/lang/Object;
.source "AdnlMessageQuery.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/adnl/message/AdnlMessageQuery$$serializer;,
        Lorg/ton/api/adnl/message/AdnlMessageQuery$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Polymorphic;
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/adnl/message/AdnlMessageQuery$Companion;


# instance fields
.field private final query:[B

.field private final queryId:Lorg/ton/tl/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/adnl/message/AdnlMessageQuery$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/adnl/message/AdnlMessageQuery$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->Companion:Lorg/ton/api/adnl/message/AdnlMessageQuery$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/tl/ByteString;[BLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 12
    sget-object p4, Lorg/ton/api/adnl/message/AdnlMessageQuery$$serializer;->INSTANCE:Lorg/ton/api/adnl/message/AdnlMessageQuery$$serializer;

    invoke-virtual {p4}, Lorg/ton/api/adnl/message/AdnlMessageQuery$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->queryId:Lorg/ton/tl/ByteString;

    iput-object p3, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->query:[B

    return-void
.end method

.method public constructor <init>(Lorg/ton/tl/ByteString;[B)V
    .locals 1

    const-string v0, "queryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->queryId:Lorg/ton/tl/ByteString;

    .line 18
    iput-object p2, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->query:[B

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/api/adnl/message/AdnlMessageQuery;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 12
    sget-object v0, Lorg/ton/tl/ByteStringSerializer;->INSTANCE:Lorg/ton/tl/ByteStringSerializer;

    iget-object v1, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->queryId:Lorg/ton/tl/ByteString;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    iget-object p0, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->query:[B

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

    .line 22
    :cond_0
    instance-of v1, p1, Lorg/ton/api/adnl/message/AdnlMessageQuery;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 23
    :cond_1
    iget-object v1, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->queryId:Lorg/ton/tl/ByteString;

    check-cast p1, Lorg/ton/api/adnl/message/AdnlMessageQuery;

    iget-object v3, p1, Lorg/ton/api/adnl/message/AdnlMessageQuery;->queryId:Lorg/ton/tl/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->query:[B

    iget-object p1, p1, Lorg/ton/api/adnl/message/AdnlMessageQuery;->query:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getQuery()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->query:[B

    return-object v0
.end method

.method public final getQueryId()Lorg/ton/tl/ByteString;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->queryId:Lorg/ton/tl/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 29
    iget-object v0, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->queryId:Lorg/ton/tl/ByteString;

    invoke-virtual {v0}, Lorg/ton/tl/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget-object v1, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->query:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdnlMessageQuery(queryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->queryId:Lorg/ton/tl/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/adnl/message/AdnlMessageQuery;->query:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
