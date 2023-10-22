.class public final Lorg/ton/block/AccountFrozen;
.super Ljava/lang/Object;
.source "AccountFrozen.kt"

# interfaces
.implements Lorg/ton/block/AccountState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/AccountFrozen$$serializer;,
        Lorg/ton/block/AccountFrozen$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountFrozen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountFrozen.kt\norg/ton/block/AccountFrozen\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,51:1\n1#2:52\n82#3,3:53\n*S KotlinDebug\n*F\n+ 1 AccountFrozen.kt\norg/ton/block/AccountFrozen\n*L\n25#1:53,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/AccountFrozen$Companion;


# instance fields
.field private final stateHash:Lorg/ton/bitstring/BitString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/AccountFrozen$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/AccountFrozen$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/AccountFrozen;->Companion:Lorg/ton/block/AccountFrozen$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 14
    sget-object p3, Lorg/ton/block/AccountFrozen$$serializer;->INSTANCE:Lorg/ton/block/AccountFrozen$$serializer;

    invoke-virtual {p3}, Lorg/ton/block/AccountFrozen$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/AccountFrozen;->stateHash:Lorg/ton/bitstring/BitString;

    .line 22
    invoke-interface {p2}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    const/16 p2, 0x100

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "stateHash must be 256 bits long"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/ton/bitstring/BitString;)V
    .locals 1

    const-string v0, "stateHash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/ton/block/AccountFrozen;->stateHash:Lorg/ton/bitstring/BitString;

    .line 22
    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stateHash must be 256 bits long"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic write$Self(Lorg/ton/block/AccountFrozen;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 14
    sget-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object p0, p0, Lorg/ton/block/AccountFrozen;->stateHash:Lorg/ton/bitstring/BitString;

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
    instance-of v1, p1, Lorg/ton/block/AccountFrozen;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/AccountFrozen;

    iget-object v1, p0, Lorg/ton/block/AccountFrozen;->stateHash:Lorg/ton/bitstring/BitString;

    iget-object p1, p1, Lorg/ton/block/AccountFrozen;->stateHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/ton/block/AccountFrozen;->stateHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account_frozen"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lorg/ton/block/AccountFrozen;->stateHash:Lorg/ton/bitstring/BitString;

    const-string v2, "state_hash"

    invoke-virtual {p1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public final stateHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/block/AccountFrozen;->stateHash:Lorg/ton/bitstring/BitString;

    return-object v0
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
