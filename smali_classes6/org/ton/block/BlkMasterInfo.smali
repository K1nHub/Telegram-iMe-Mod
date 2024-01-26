.class public final Lorg/ton/block/BlkMasterInfo;
.super Ljava/lang/Object;
.source "BlkMasterInfo.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/BlkMasterInfo$$serializer;,
        Lorg/ton/block/BlkMasterInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlkMasterInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlkMasterInfo.kt\norg/ton/block/BlkMasterInfo\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,41:1\n82#2,3:42\n*S KotlinDebug\n*F\n+ 1 BlkMasterInfo.kt\norg/ton/block/BlkMasterInfo\n*L\n15#1:42,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/BlkMasterInfo$Companion;


# instance fields
.field private final master:Lorg/ton/block/ExtBlkRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/BlkMasterInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/BlkMasterInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/BlkMasterInfo;->Companion:Lorg/ton/block/BlkMasterInfo$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/ExtBlkRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 10
    sget-object p3, Lorg/ton/block/BlkMasterInfo$$serializer;->INSTANCE:Lorg/ton/block/BlkMasterInfo$$serializer;

    invoke-virtual {p3}, Lorg/ton/block/BlkMasterInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/BlkMasterInfo;->master:Lorg/ton/block/ExtBlkRef;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/ExtBlkRef;)V
    .locals 1

    const-string v0, "master"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/ton/block/BlkMasterInfo;->master:Lorg/ton/block/ExtBlkRef;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/BlkMasterInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 10
    sget-object v0, Lorg/ton/block/ExtBlkRef$$serializer;->INSTANCE:Lorg/ton/block/ExtBlkRef$$serializer;

    iget-object p0, p0, Lorg/ton/block/BlkMasterInfo;->master:Lorg/ton/block/ExtBlkRef;

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

    :cond_0
    instance-of v1, p1, Lorg/ton/block/BlkMasterInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/BlkMasterInfo;

    iget-object v1, p0, Lorg/ton/block/BlkMasterInfo;->master:Lorg/ton/block/ExtBlkRef;

    iget-object p1, p1, Lorg/ton/block/BlkMasterInfo;->master:Lorg/ton/block/ExtBlkRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMaster()Lorg/ton/block/ExtBlkRef;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/ton/block/BlkMasterInfo;->master:Lorg/ton/block/ExtBlkRef;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/ton/block/BlkMasterInfo;->master:Lorg/ton/block/ExtBlkRef;

    invoke-virtual {v0}, Lorg/ton/block/ExtBlkRef;->hashCode()I

    move-result v0

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "master_info"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/ton/block/BlkMasterInfo;->master:Lorg/ton/block/ExtBlkRef;

    const-string v2, "master"

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

    .line 19
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
