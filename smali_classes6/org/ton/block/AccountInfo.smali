.class public final Lorg/ton/block/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.kt"

# interfaces
.implements Lorg/ton/block/Account;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/AccountInfo$$serializer;,
        Lorg/ton/block/AccountInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountInfo.kt\norg/ton/block/AccountInfo\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,68:1\n86#2,2:69\n82#2,3:71\n88#2:74\n*S KotlinDebug\n*F\n+ 1 AccountInfo.kt\norg/ton/block/AccountInfo\n*L\n36#1:69,2\n37#1:71,3\n36#1:74\n*E\n"
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

.field public static final Companion:Lorg/ton/block/AccountInfo$Companion;


# instance fields
.field private final addr:Lorg/ton/block/MsgAddressInt;

.field private final storage:Lorg/ton/block/AccountStorage;

.field private final storageStat:Lorg/ton/block/StorageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/ton/block/AccountInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/AccountInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/AccountInfo;->Companion:Lorg/ton/block/AccountInfo$Companion;

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 30
    new-instance v8, Lkotlinx/serialization/SealedClassSerializer;

    const-class v2, Lorg/ton/block/MsgAddressInt;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v9, 0x2

    new-array v5, v9, [Lkotlin/reflect/KClass;

    const-class v2, Lorg/ton/block/AddrStd;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v5, v10

    const-class v2, Lorg/ton/block/AddrVar;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v11, 0x1

    aput-object v2, v5, v11

    new-array v6, v9, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lorg/ton/block/AddrStd$$serializer;->INSTANCE:Lorg/ton/block/AddrStd$$serializer;

    aput-object v2, v6, v10

    sget-object v2, Lorg/ton/block/AddrVar$$serializer;->INSTANCE:Lorg/ton/block/AddrVar$$serializer;

    aput-object v2, v6, v11

    new-array v7, v11, [Ljava/lang/annotation/Annotation;

    .line 18
    new-instance v2, Lorg/ton/block/AccountInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v3, "@type"

    invoke-direct {v2, v3}, Lorg/ton/block/AccountInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v2, v7, v10

    const-string v3, "org.ton.block.MsgAddressInt"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v8, v0, v10

    aput-object v1, v0, v11

    aput-object v1, v0, v9

    .line 30
    sput-object v0, Lorg/ton/block/AccountInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/MsgAddressInt;Lorg/ton/block/StorageInfo;Lorg/ton/block/AccountStorage;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 15
    sget-object p5, Lorg/ton/block/AccountInfo$$serializer;->INSTANCE:Lorg/ton/block/AccountInfo$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/AccountInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/AccountInfo;->addr:Lorg/ton/block/MsgAddressInt;

    iput-object p3, p0, Lorg/ton/block/AccountInfo;->storageStat:Lorg/ton/block/StorageInfo;

    iput-object p4, p0, Lorg/ton/block/AccountInfo;->storage:Lorg/ton/block/AccountStorage;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/MsgAddressInt;Lorg/ton/block/StorageInfo;Lorg/ton/block/AccountStorage;)V
    .locals 1

    const-string v0, "addr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageStat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/ton/block/AccountInfo;->addr:Lorg/ton/block/MsgAddressInt;

    .line 22
    iput-object p2, p0, Lorg/ton/block/AccountInfo;->storageStat:Lorg/ton/block/StorageInfo;

    .line 26
    iput-object p3, p0, Lorg/ton/block/AccountInfo;->storage:Lorg/ton/block/AccountStorage;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 15
    sget-object v0, Lorg/ton/block/AccountInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/AccountInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 15
    sget-object v0, Lorg/ton/block/AccountInfo;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/block/AccountInfo;->addr:Lorg/ton/block/MsgAddressInt;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/StorageInfo$$serializer;->INSTANCE:Lorg/ton/block/StorageInfo$$serializer;

    iget-object v1, p0, Lorg/ton/block/AccountInfo;->storageStat:Lorg/ton/block/StorageInfo;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/AccountStorage$$serializer;->INSTANCE:Lorg/ton/block/AccountStorage$$serializer;

    iget-object p0, p0, Lorg/ton/block/AccountInfo;->storage:Lorg/ton/block/AccountStorage;

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addr()Lorg/ton/block/MsgAddressInt;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/ton/block/AccountInfo;->addr:Lorg/ton/block/MsgAddressInt;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/AccountInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/AccountInfo;

    iget-object v1, p0, Lorg/ton/block/AccountInfo;->addr:Lorg/ton/block/MsgAddressInt;

    iget-object v3, p1, Lorg/ton/block/AccountInfo;->addr:Lorg/ton/block/MsgAddressInt;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/AccountInfo;->storageStat:Lorg/ton/block/StorageInfo;

    iget-object v3, p1, Lorg/ton/block/AccountInfo;->storageStat:Lorg/ton/block/StorageInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/AccountInfo;->storage:Lorg/ton/block/AccountStorage;

    iget-object p1, p1, Lorg/ton/block/AccountInfo;->storage:Lorg/ton/block/AccountStorage;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/AccountInfo;->addr:Lorg/ton/block/MsgAddressInt;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/AccountInfo;->storageStat:Lorg/ton/block/StorageInfo;

    invoke-virtual {v1}, Lorg/ton/block/StorageInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/AccountInfo;->storage:Lorg/ton/block/AccountStorage;

    invoke-virtual {v1}, Lorg/ton/block/AccountStorage;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lorg/ton/block/AccountInfo;->addr:Lorg/ton/block/MsgAddressInt;

    const-string v2, "addr"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 39
    iget-object v1, p0, Lorg/ton/block/AccountInfo;->storageStat:Lorg/ton/block/StorageInfo;

    const-string v2, "storage_stat"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 40
    iget-object v1, p0, Lorg/ton/block/AccountInfo;->storage:Lorg/ton/block/AccountStorage;

    const-string v2, "storage"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public final storage()Lorg/ton/block/AccountStorage;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/ton/block/AccountInfo;->storage:Lorg/ton/block/AccountStorage;

    return-object v0
.end method

.method public final storageStat()Lorg/ton/block/StorageInfo;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/ton/block/AccountInfo;->storageStat:Lorg/ton/block/StorageInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 44
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
