.class public final Lorg/ton/lite/api/liteserver/LiteServerError;
.super Ljava/lang/Object;
.source "LiteServerError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/api/liteserver/LiteServerError$$serializer;,
        Lorg/ton/lite/api/liteserver/LiteServerError$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/lite/api/liteserver/LiteServerError$Companion;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/lite/api/liteserver/LiteServerError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/lite/api/liteserver/LiteServerError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/lite/api/liteserver/LiteServerError;->Companion:Lorg/ton/lite/api/liteserver/LiteServerError$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 9
    sget-object p4, Lorg/ton/lite/api/liteserver/LiteServerError$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerError$$serializer;

    invoke-virtual {p4}, Lorg/ton/lite/api/liteserver/LiteServerError$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->code:I

    iput-object p3, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->code:I

    .line 13
    iput-object p2, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->message:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/lite/api/liteserver/LiteServerError;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 9
    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->code:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget-object p0, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->message:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/lite/api/liteserver/LiteServerError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/lite/api/liteserver/LiteServerError;

    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->code:I

    iget v3, p1, Lorg/ton/lite/api/liteserver/LiteServerError;->code:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->message:Ljava/lang/String;

    iget-object p1, p1, Lorg/ton/lite/api/liteserver/LiteServerError;->message:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCode()I
    .locals 1

    .line 12
    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->code:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->code:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteServerError(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
