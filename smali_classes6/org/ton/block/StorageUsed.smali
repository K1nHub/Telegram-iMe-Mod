.class public final Lorg/ton/block/StorageUsed;
.super Ljava/lang/Object;
.source "StorageUsed.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/StorageUsed$$serializer;,
        Lorg/ton/block/StorageUsed$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorageUsed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorageUsed.kt\norg/ton/block/StorageUsed\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,53:1\n82#2,3:54\n*S KotlinDebug\n*F\n+ 1 StorageUsed.kt\norg/ton/block/StorageUsed\n*L\n19#1:54,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/StorageUsed$Companion;


# instance fields
.field private final bits:Lorg/ton/block/VarUInteger;

.field private final cells:Lorg/ton/block/VarUInteger;

.field private final publicCells:Lorg/ton/block/VarUInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/StorageUsed$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/StorageUsed$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/StorageUsed;->Companion:Lorg/ton/block/StorageUsed$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/VarUInteger;Lorg/ton/block/VarUInteger;Lorg/ton/block/VarUInteger;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 11
    sget-object p5, Lorg/ton/block/StorageUsed$$serializer;->INSTANCE:Lorg/ton/block/StorageUsed$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/StorageUsed$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/StorageUsed;->cells:Lorg/ton/block/VarUInteger;

    iput-object p3, p0, Lorg/ton/block/StorageUsed;->bits:Lorg/ton/block/VarUInteger;

    iput-object p4, p0, Lorg/ton/block/StorageUsed;->publicCells:Lorg/ton/block/VarUInteger;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/VarUInteger;Lorg/ton/block/VarUInteger;Lorg/ton/block/VarUInteger;)V
    .locals 1

    const-string v0, "cells"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bits"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicCells"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/block/StorageUsed;->cells:Lorg/ton/block/VarUInteger;

    .line 15
    iput-object p2, p0, Lorg/ton/block/StorageUsed;->bits:Lorg/ton/block/VarUInteger;

    .line 16
    iput-object p3, p0, Lorg/ton/block/StorageUsed;->publicCells:Lorg/ton/block/VarUInteger;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/StorageUsed;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 11
    sget-object v0, Lorg/ton/block/VarUInteger$$serializer;->INSTANCE:Lorg/ton/block/VarUInteger$$serializer;

    iget-object v1, p0, Lorg/ton/block/StorageUsed;->cells:Lorg/ton/block/VarUInteger;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ton/block/StorageUsed;->bits:Lorg/ton/block/VarUInteger;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/ton/block/StorageUsed;->publicCells:Lorg/ton/block/VarUInteger;

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
    instance-of v1, p1, Lorg/ton/block/StorageUsed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/StorageUsed;

    iget-object v1, p0, Lorg/ton/block/StorageUsed;->cells:Lorg/ton/block/VarUInteger;

    iget-object v3, p1, Lorg/ton/block/StorageUsed;->cells:Lorg/ton/block/VarUInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/StorageUsed;->bits:Lorg/ton/block/VarUInteger;

    iget-object v3, p1, Lorg/ton/block/StorageUsed;->bits:Lorg/ton/block/VarUInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/StorageUsed;->publicCells:Lorg/ton/block/VarUInteger;

    iget-object p1, p1, Lorg/ton/block/StorageUsed;->publicCells:Lorg/ton/block/VarUInteger;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBits()Lorg/ton/block/VarUInteger;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/block/StorageUsed;->bits:Lorg/ton/block/VarUInteger;

    return-object v0
.end method

.method public final getCells()Lorg/ton/block/VarUInteger;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/block/StorageUsed;->cells:Lorg/ton/block/VarUInteger;

    return-object v0
.end method

.method public final getPublicCells()Lorg/ton/block/VarUInteger;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/block/StorageUsed;->publicCells:Lorg/ton/block/VarUInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/StorageUsed;->cells:Lorg/ton/block/VarUInteger;

    invoke-virtual {v0}, Lorg/ton/block/VarUInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/StorageUsed;->bits:Lorg/ton/block/VarUInteger;

    invoke-virtual {v1}, Lorg/ton/block/VarUInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/StorageUsed;->publicCells:Lorg/ton/block/VarUInteger;

    invoke-virtual {v1}, Lorg/ton/block/VarUInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storage_used"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lorg/ton/block/StorageUsed;->cells:Lorg/ton/block/VarUInteger;

    const-string v2, "cells"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 21
    iget-object v1, p0, Lorg/ton/block/StorageUsed;->bits:Lorg/ton/block/VarUInteger;

    const-string v2, "bits"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 22
    iget-object v1, p0, Lorg/ton/block/StorageUsed;->publicCells:Lorg/ton/block/VarUInteger;

    const-string v2, "public_cells"

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

    .line 26
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
