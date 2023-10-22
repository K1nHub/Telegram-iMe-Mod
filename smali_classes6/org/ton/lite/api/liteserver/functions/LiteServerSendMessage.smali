.class public final Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;
.super Ljava/lang/Object;
.source "LiteServerSendMessage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage$$serializer;,
        Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage$Companion;


# instance fields
.field private final body:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;->Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage$Companion;

    return-void
.end method

.method public synthetic constructor <init>(I[BLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 8
    sget-object p3, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage$$serializer;

    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;->body:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;->body:[B

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 8
    sget-object v0, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    iget-object p0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;->body:[B

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

    .line 19
    :cond_0
    instance-of v1, p1, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 20
    :cond_1
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;->body:[B

    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;

    iget-object p1, p1, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;->body:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getBody()[B
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;->body:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;->body:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteServerSendMessage(body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;->body:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
