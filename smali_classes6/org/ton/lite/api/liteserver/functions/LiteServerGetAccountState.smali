.class public final Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;
.super Ljava/lang/Object;
.source "LiteServerGetAccountState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState$$serializer;,
        Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState$Companion;


# instance fields
.field private final account:Lorg/ton/lite/api/liteserver/LiteServerAccountId;

.field private final id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/lite/api/liteserver/LiteServerAccountId;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 10
    sget-object p4, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState$$serializer;

    invoke-virtual {p4}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iput-object p3, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->account:Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    return-void
.end method

.method public constructor <init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/lite/api/liteserver/LiteServerAccountId;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 14
    iput-object p2, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->account:Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 10
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/lite/api/liteserver/LiteServerAccountId$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerAccountId$$serializer;

    iget-object p0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->account:Lorg/ton/lite/api/liteserver/LiteServerAccountId;

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
    instance-of v1, p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iget-object v3, p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->account:Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    iget-object p1, p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->account:Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAccount()Lorg/ton/lite/api/liteserver/LiteServerAccountId;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->account:Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    return-object v0
.end method

.method public final getId()Lorg/ton/api/tonnode/TonNodeBlockIdExt;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->account:Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    invoke-virtual {v1}, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteServerGetAccountState(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->id:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->account:Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
