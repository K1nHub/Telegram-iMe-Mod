.class public final Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;
.super Ljava/lang/Object;
.source "TonNodeZeroStateIdExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;,
        Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$Companion;


# instance fields
.field private final fileHash:Lorg/ton/tl/ByteString;

.field private final rootHash:Lorg/ton/tl/ByteString;

.field private final workchain:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 14
    sget-object p5, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;

    invoke-virtual {p5}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->workchain:I

    iput-object p3, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->rootHash:Lorg/ton/tl/ByteString;

    iput-object p4, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->fileHash:Lorg/ton/tl/ByteString;

    return-void
.end method

.method public constructor <init>(ILorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;)V
    .locals 1

    const-string v0, "rootHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileHash"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->workchain:I

    .line 17
    iput-object p2, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->rootHash:Lorg/ton/tl/ByteString;

    .line 19
    iput-object p3, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->fileHash:Lorg/ton/tl/ByteString;

    return-void
.end method

.method public constructor <init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V
    .locals 2

    const-string v0, "tonNodeBlockIdExt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->workchain()I

    move-result v0

    .line 24
    invoke-virtual {p1}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->rootHash()Lorg/ton/tl/ByteString;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->fileHash()Lorg/ton/tl/ByteString;

    move-result-object p1

    .line 22
    invoke-direct {p0, v0, v1, p1}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;-><init>(ILorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 14
    iget v0, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->workchain:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v0, Lorg/ton/tl/ByteStringSerializer;->INSTANCE:Lorg/ton/tl/ByteStringSerializer;

    iget-object v1, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->rootHash:Lorg/ton/tl/ByteString;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->fileHash:Lorg/ton/tl/ByteString;

    const/4 v1, 0x2

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
    instance-of v1, p1, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    iget v1, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->workchain:I

    iget v3, p1, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->workchain:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->rootHash:Lorg/ton/tl/ByteString;

    iget-object v3, p1, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->rootHash:Lorg/ton/tl/ByteString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->fileHash:Lorg/ton/tl/ByteString;

    iget-object p1, p1, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->fileHash:Lorg/ton/tl/ByteString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFileHash()Lorg/ton/tl/ByteString;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->fileHash:Lorg/ton/tl/ByteString;

    return-object v0
.end method

.method public final getRootHash()Lorg/ton/tl/ByteString;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->rootHash:Lorg/ton/tl/ByteString;

    return-object v0
.end method

.method public final getWorkchain()I
    .locals 1

    .line 16
    iget v0, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->workchain:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->workchain:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->rootHash:Lorg/ton/tl/ByteString;

    invoke-virtual {v1}, Lorg/ton/tl/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->fileHash:Lorg/ton/tl/ByteString;

    invoke-virtual {v1}, Lorg/ton/tl/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isValid()Z
    .locals 2

    .line 29
    iget v0, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->workchain:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->workchain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->rootHash:Lorg/ton/tl/ByteString;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->fileHash:Lorg/ton/tl/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
