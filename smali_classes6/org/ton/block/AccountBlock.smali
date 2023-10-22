.class public final Lorg/ton/block/AccountBlock;
.super Ljava/lang/Object;
.source "AccountBlock.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/AccountBlock$$serializer;,
        Lorg/ton/block/AccountBlock$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountBlock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountBlock.kt\norg/ton/block/AccountBlock\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,68:1\n86#2,2:69\n82#2,3:71\n88#2:74\n*S KotlinDebug\n*F\n+ 1 AccountBlock.kt\norg/ton/block/AccountBlock\n*L\n20#1:69,2\n21#1:71,3\n20#1:74\n*E\n"
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

.field public static final Companion:Lorg/ton/block/AccountBlock$Companion;


# instance fields
.field private final accountAddr:Lorg/ton/bitstring/BitString;

.field private final stateUpdate:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/HashUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private final transactions:Lorg/ton/hashmap/HashmapAug;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashmapAug<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;",
            "Lorg/ton/block/CurrencyCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/ton/block/AccountBlock$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/AccountBlock$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/AccountBlock;->Companion:Lorg/ton/block/AccountBlock$Companion;

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 30
    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v3, Lorg/ton/hashmap/HashmapAug;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v3, v4}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v3, Lorg/ton/tlb/CellRef;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v3, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/ton/block/AccountBlock;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/bitstring/BitString;Lorg/ton/hashmap/HashmapAug;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 13
    sget-object p5, Lorg/ton/block/AccountBlock$$serializer;->INSTANCE:Lorg/ton/block/AccountBlock$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/AccountBlock$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/AccountBlock;->accountAddr:Lorg/ton/bitstring/BitString;

    iput-object p3, p0, Lorg/ton/block/AccountBlock;->transactions:Lorg/ton/hashmap/HashmapAug;

    iput-object p4, p0, Lorg/ton/block/AccountBlock;->stateUpdate:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public constructor <init>(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HashmapAug;Lorg/ton/tlb/CellRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HashmapAug<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;",
            "Lorg/ton/block/CurrencyCollection;",
            ">;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/HashUpdate;",
            ">;)V"
        }
    .end annotation

    const-string v0, "accountAddr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateUpdate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/ton/block/AccountBlock;->accountAddr:Lorg/ton/bitstring/BitString;

    .line 17
    iput-object p2, p0, Lorg/ton/block/AccountBlock;->transactions:Lorg/ton/hashmap/HashmapAug;

    .line 18
    iput-object p3, p0, Lorg/ton/block/AccountBlock;->stateUpdate:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 13
    sget-object v0, Lorg/ton/block/AccountBlock;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/AccountBlock;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 13
    sget-object v0, Lorg/ton/block/AccountBlock;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object v2, p0, Lorg/ton/block/AccountBlock;->accountAddr:Lorg/ton/bitstring/BitString;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/AccountBlock;->transactions:Lorg/ton/hashmap/HashmapAug;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/AccountBlock;->stateUpdate:Lorg/ton/tlb/CellRef;

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
    instance-of v1, p1, Lorg/ton/block/AccountBlock;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/AccountBlock;

    iget-object v1, p0, Lorg/ton/block/AccountBlock;->accountAddr:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/AccountBlock;->accountAddr:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/AccountBlock;->transactions:Lorg/ton/hashmap/HashmapAug;

    iget-object v3, p1, Lorg/ton/block/AccountBlock;->transactions:Lorg/ton/hashmap/HashmapAug;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/AccountBlock;->stateUpdate:Lorg/ton/tlb/CellRef;

    iget-object p1, p1, Lorg/ton/block/AccountBlock;->stateUpdate:Lorg/ton/tlb/CellRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAccountAddr()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/block/AccountBlock;->accountAddr:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getStateUpdate()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/HashUpdate;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/ton/block/AccountBlock;->stateUpdate:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getTransactions()Lorg/ton/hashmap/HashmapAug;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAug<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;",
            "Lorg/ton/block/CurrencyCollection;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lorg/ton/block/AccountBlock;->transactions:Lorg/ton/hashmap/HashmapAug;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/AccountBlock;->accountAddr:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/AccountBlock;->transactions:Lorg/ton/hashmap/HashmapAug;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/AccountBlock;->stateUpdate:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acc_trans"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lorg/ton/block/AccountBlock;->accountAddr:Lorg/ton/bitstring/BitString;

    const-string v2, "account_addr"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 23
    iget-object v1, p0, Lorg/ton/block/AccountBlock;->transactions:Lorg/ton/hashmap/HashmapAug;

    const-string v2, "transactions"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 24
    iget-object v1, p0, Lorg/ton/block/AccountBlock;->stateUpdate:Lorg/ton/tlb/CellRef;

    const-string v2, "state_update"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 28
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
