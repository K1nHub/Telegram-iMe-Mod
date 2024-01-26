.class public final Lorg/ton/lite/api/liteserver/LiteServerAccountId;
.super Ljava/lang/Object;
.source "LiteServerAccountId.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/api/liteserver/LiteServerAccountId$$serializer;,
        Lorg/ton/lite/api/liteserver/LiteServerAccountId$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/lite/api/liteserver/LiteServerAccountId$Companion;


# instance fields
.field private final id:Lorg/ton/tl/ByteString;

.field private final workchain:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/lite/api/liteserver/LiteServerAccountId$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/lite/api/liteserver/LiteServerAccountId$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->Companion:Lorg/ton/lite/api/liteserver/LiteServerAccountId$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILorg/ton/tl/ByteString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 17
    sget-object p4, Lorg/ton/lite/api/liteserver/LiteServerAccountId$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerAccountId$$serializer;

    invoke-virtual {p4}, Lorg/ton/lite/api/liteserver/LiteServerAccountId$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->workchain:I

    iput-object p3, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->id:Lorg/ton/tl/ByteString;

    return-void
.end method

.method public constructor <init>(ILorg/ton/tl/ByteString;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->workchain:I

    .line 22
    iput-object p2, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->id:Lorg/ton/tl/ByteString;

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 7

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v1, Lorg/ton/tl/ByteString;->Companion:Lorg/ton/tl/ByteString$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lorg/ton/tl/ByteString$Companion;->of$default(Lorg/ton/tl/ByteString$Companion;[BIIILjava/lang/Object;)Lorg/ton/tl/ByteString;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/ton/lite/api/liteserver/LiteServerAccountId;-><init>(ILorg/ton/tl/ByteString;)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/lite/api/liteserver/LiteServerAccountId;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 17
    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->workchain:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v0, Lorg/ton/tl/ByteStringSerializer;->INSTANCE:Lorg/ton/tl/ByteStringSerializer;

    iget-object p0, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->id:Lorg/ton/tl/ByteString;

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

    :cond_0
    instance-of v1, p1, Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->workchain:I

    iget v3, p1, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->workchain:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->id:Lorg/ton/tl/ByteString;

    iget-object p1, p1, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->id:Lorg/ton/tl/ByteString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->workchain:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->id:Lorg/ton/tl/ByteString;

    invoke-virtual {v1}, Lorg/ton/tl/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final id()Lorg/ton/tl/ByteString;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->id:Lorg/ton/tl/ByteString;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteServerAccountId(workchain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->workchain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->id:Lorg/ton/tl/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final workchain()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->workchain:I

    return v0
.end method
