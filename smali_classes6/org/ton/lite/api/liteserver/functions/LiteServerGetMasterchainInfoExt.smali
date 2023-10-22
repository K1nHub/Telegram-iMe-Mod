.class public final Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;
.super Ljava/lang/Object;
.source "LiteServerGetMasterchainInfoExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$$serializer;,
        Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;


# instance fields
.field private final mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;->Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;->mode:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 8
    sget-object p3, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$$serializer;

    invoke-virtual {p3}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;->mode:I

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1

    .line 8
    iget p0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;->mode:I

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    iget v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;->mode:I

    iget p1, p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;->mode:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMode()I
    .locals 1

    .line 11
    iget v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;->mode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;->mode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteServerGetMasterchainInfoExt(mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
