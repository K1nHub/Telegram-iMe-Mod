.class public final Lorg/ton/lite/client/internal/FullAccountState;
.super Ljava/lang/Object;
.source "BlockHeaderResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/client/internal/FullAccountState$$serializer;,
        Lorg/ton/lite/client/internal/FullAccountState$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/ton/lite/client/internal/FullAccountState$Companion;


# instance fields
.field private final account:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Account;",
            ">;"
        }
    .end annotation
.end field

.field private final address:Lorg/ton/block/AddrStd;

.field private final blockId:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

.field private final lastTransactionId:Lorg/ton/lite/client/internal/TransactionId;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/lite/client/internal/FullAccountState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/lite/client/internal/FullAccountState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/lite/client/internal/FullAccountState;->Companion:Lorg/ton/lite/client/internal/FullAccountState$Companion;

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 20
    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v3, Lorg/ton/tlb/CellRef;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v3, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/ton/lite/client/internal/FullAccountState;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/block/AddrStd;Lorg/ton/lite/client/internal/TransactionId;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p6, :cond_0

    .line 20
    sget-object p6, Lorg/ton/lite/client/internal/FullAccountState$$serializer;->INSTANCE:Lorg/ton/lite/client/internal/FullAccountState$$serializer;

    invoke-virtual {p6}, Lorg/ton/lite/client/internal/FullAccountState$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/lite/client/internal/FullAccountState;->blockId:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iput-object p3, p0, Lorg/ton/lite/client/internal/FullAccountState;->address:Lorg/ton/block/AddrStd;

    iput-object p4, p0, Lorg/ton/lite/client/internal/FullAccountState;->lastTransactionId:Lorg/ton/lite/client/internal/TransactionId;

    iput-object p5, p0, Lorg/ton/lite/client/internal/FullAccountState;->account:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public constructor <init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/block/AddrStd;Lorg/ton/lite/client/internal/TransactionId;Lorg/ton/tlb/CellRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/api/tonnode/TonNodeBlockIdExt;",
            "Lorg/ton/block/AddrStd;",
            "Lorg/ton/lite/client/internal/TransactionId;",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/Account;",
            ">;)V"
        }
    .end annotation

    const-string v0, "blockId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/ton/lite/client/internal/FullAccountState;->blockId:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 26
    iput-object p2, p0, Lorg/ton/lite/client/internal/FullAccountState;->address:Lorg/ton/block/AddrStd;

    .line 29
    iput-object p3, p0, Lorg/ton/lite/client/internal/FullAccountState;->lastTransactionId:Lorg/ton/lite/client/internal/TransactionId;

    .line 33
    iput-object p4, p0, Lorg/ton/lite/client/internal/FullAccountState;->account:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 20
    sget-object v0, Lorg/ton/lite/client/internal/FullAccountState;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/lite/client/internal/FullAccountState;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 20
    sget-object v0, Lorg/ton/lite/client/internal/FullAccountState;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    iget-object v2, p0, Lorg/ton/lite/client/internal/FullAccountState;->blockId:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lorg/ton/block/AddrStd$$serializer;->INSTANCE:Lorg/ton/block/AddrStd$$serializer;

    iget-object v2, p0, Lorg/ton/lite/client/internal/FullAccountState;->address:Lorg/ton/block/AddrStd;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lorg/ton/lite/client/internal/TransactionId$$serializer;->INSTANCE:Lorg/ton/lite/client/internal/TransactionId$$serializer;

    iget-object v2, p0, Lorg/ton/lite/client/internal/FullAccountState;->lastTransactionId:Lorg/ton/lite/client/internal/TransactionId;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/lite/client/internal/FullAccountState;->account:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final account()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Account;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/ton/lite/client/internal/FullAccountState;->account:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/lite/client/internal/FullAccountState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/lite/client/internal/FullAccountState;

    iget-object v1, p0, Lorg/ton/lite/client/internal/FullAccountState;->blockId:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    iget-object v3, p1, Lorg/ton/lite/client/internal/FullAccountState;->blockId:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/lite/client/internal/FullAccountState;->address:Lorg/ton/block/AddrStd;

    iget-object v3, p1, Lorg/ton/lite/client/internal/FullAccountState;->address:Lorg/ton/block/AddrStd;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/lite/client/internal/FullAccountState;->lastTransactionId:Lorg/ton/lite/client/internal/TransactionId;

    iget-object v3, p1, Lorg/ton/lite/client/internal/FullAccountState;->lastTransactionId:Lorg/ton/lite/client/internal/TransactionId;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/lite/client/internal/FullAccountState;->account:Lorg/ton/tlb/CellRef;

    iget-object p1, p1, Lorg/ton/lite/client/internal/FullAccountState;->account:Lorg/ton/tlb/CellRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/lite/client/internal/FullAccountState;->blockId:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/lite/client/internal/FullAccountState;->address:Lorg/ton/block/AddrStd;

    invoke-virtual {v1}, Lorg/ton/block/AddrStd;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/lite/client/internal/FullAccountState;->lastTransactionId:Lorg/ton/lite/client/internal/TransactionId;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/ton/lite/client/internal/TransactionId;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/lite/client/internal/FullAccountState;->account:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FullAccountState(blockId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/client/internal/FullAccountState;->blockId:Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/client/internal/FullAccountState;->address:Lorg/ton/block/AddrStd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastTransactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/client/internal/FullAccountState;->lastTransactionId:Lorg/ton/lite/client/internal/TransactionId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/client/internal/FullAccountState;->account:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
