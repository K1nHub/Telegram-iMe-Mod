.class public final Lorg/ton/block/MsgImportIhr;
.super Ljava/lang/Object;
.source "MsgImportIhr.kt"

# interfaces
.implements Lorg/ton/block/InMsg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/MsgImportIhr$$serializer;,
        Lorg/ton/block/MsgImportIhr$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgImportIhr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgImportIhr.kt\norg/ton/block/MsgImportIhr\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,57:1\n86#2,2:58\n82#2,3:60\n88#2:63\n*S KotlinDebug\n*F\n+ 1 MsgImportIhr.kt\norg/ton/block/MsgImportIhr\n*L\n20#1:58,2\n21#1:60,3\n20#1:63\n*E\n"
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

.field public static final Companion:Lorg/ton/block/MsgImportIhr$Companion;


# instance fields
.field private final ihrFee:Lorg/ton/block/Coins;

.field private final msg:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Message<",
            "Lorg/ton/cell/Cell;",
            ">;>;"
        }
    .end annotation
.end field

.field private final proofCreated:Lorg/ton/cell/Cell;

.field private final transaction:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Lorg/ton/tlb/CellRef;

    new-instance v1, Lorg/ton/block/MsgImportIhr$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/MsgImportIhr$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/MsgImportIhr;->Companion:Lorg/ton/block/MsgImportIhr$Companion;

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    .line 31
    new-instance v3, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {v3, v4, v6}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    aput-object v3, v1, v5

    new-instance v3, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {v3, v0, v4}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x1

    aput-object v3, v1, v0

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v3, Lorg/ton/cell/Cell;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    new-instance v4, Lorg/ton/block/MsgImportIhr$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v6, "@type"

    invoke-direct {v4, v6}, Lorg/ton/block/MsgImportIhr$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v5

    invoke-direct {v2, v3, v0}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x3

    aput-object v2, v1, v0

    sput-object v1, Lorg/ton/block/MsgImportIhr;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/block/Coins;Lorg/ton/cell/Cell;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-eq v0, p6, :cond_0

    .line 12
    sget-object p6, Lorg/ton/block/MsgImportIhr$$serializer;->INSTANCE:Lorg/ton/block/MsgImportIhr$$serializer;

    invoke-virtual {p6}, Lorg/ton/block/MsgImportIhr$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/MsgImportIhr;->msg:Lorg/ton/tlb/CellRef;

    iput-object p3, p0, Lorg/ton/block/MsgImportIhr;->transaction:Lorg/ton/tlb/CellRef;

    iput-object p4, p0, Lorg/ton/block/MsgImportIhr;->ihrFee:Lorg/ton/block/Coins;

    iput-object p5, p0, Lorg/ton/block/MsgImportIhr;->proofCreated:Lorg/ton/cell/Cell;

    return-void
.end method

.method public constructor <init>(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/block/Coins;Lorg/ton/cell/Cell;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Message<",
            "Lorg/ton/cell/Cell;",
            ">;>;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;",
            "Lorg/ton/block/Coins;",
            "Lorg/ton/cell/Cell;",
            ")V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ihrFee"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proofCreated"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/ton/block/MsgImportIhr;->msg:Lorg/ton/tlb/CellRef;

    .line 16
    iput-object p2, p0, Lorg/ton/block/MsgImportIhr;->transaction:Lorg/ton/tlb/CellRef;

    .line 17
    iput-object p3, p0, Lorg/ton/block/MsgImportIhr;->ihrFee:Lorg/ton/block/Coins;

    .line 18
    iput-object p4, p0, Lorg/ton/block/MsgImportIhr;->proofCreated:Lorg/ton/cell/Cell;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/block/MsgImportIhr;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/MsgImportIhr;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 12
    sget-object v0, Lorg/ton/block/MsgImportIhr;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/MsgImportIhr;->msg:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/MsgImportIhr;->transaction:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    iget-object v2, p0, Lorg/ton/block/MsgImportIhr;->ihrFee:Lorg/ton/block/Coins;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/MsgImportIhr;->proofCreated:Lorg/ton/cell/Cell;

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
    instance-of v1, p1, Lorg/ton/block/MsgImportIhr;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/MsgImportIhr;

    iget-object v1, p0, Lorg/ton/block/MsgImportIhr;->msg:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/MsgImportIhr;->msg:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/MsgImportIhr;->transaction:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/MsgImportIhr;->transaction:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/MsgImportIhr;->ihrFee:Lorg/ton/block/Coins;

    iget-object v3, p1, Lorg/ton/block/MsgImportIhr;->ihrFee:Lorg/ton/block/Coins;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/MsgImportIhr;->proofCreated:Lorg/ton/cell/Cell;

    iget-object p1, p1, Lorg/ton/block/MsgImportIhr;->proofCreated:Lorg/ton/cell/Cell;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getIhrFee()Lorg/ton/block/Coins;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/block/MsgImportIhr;->ihrFee:Lorg/ton/block/Coins;

    return-object v0
.end method

.method public final getMsg()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Message<",
            "Lorg/ton/cell/Cell;",
            ">;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/ton/block/MsgImportIhr;->msg:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getProofCreated()Lorg/ton/cell/Cell;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/block/MsgImportIhr;->proofCreated:Lorg/ton/cell/Cell;

    return-object v0
.end method

.method public final getTransaction()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lorg/ton/block/MsgImportIhr;->transaction:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/MsgImportIhr;->msg:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/MsgImportIhr;->transaction:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/MsgImportIhr;->ihrFee:Lorg/ton/block/Coins;

    invoke-virtual {v1}, Lorg/ton/block/Coins;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/MsgImportIhr;->proofCreated:Lorg/ton/cell/Cell;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg_import_ihr"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lorg/ton/block/MsgImportIhr;->msg:Lorg/ton/tlb/CellRef;

    const-string v2, "msg"

    invoke-virtual {p1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 23
    iget-object v1, p0, Lorg/ton/block/MsgImportIhr;->transaction:Lorg/ton/tlb/CellRef;

    const-string v2, "transaction"

    invoke-virtual {p1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 24
    iget-object v1, p0, Lorg/ton/block/MsgImportIhr;->ihrFee:Lorg/ton/block/Coins;

    const-string v2, "ihr_fee"

    invoke-virtual {p1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 25
    iget-object v1, p0, Lorg/ton/block/MsgImportIhr;->proofCreated:Lorg/ton/cell/Cell;

    const-string v2, "proof_created"

    invoke-virtual {p1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

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

    .line 29
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
