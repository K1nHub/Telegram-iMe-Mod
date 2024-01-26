.class public final Lorg/ton/block/Coins;
.super Ljava/lang/Object;
.source "Coins.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/Coins$$serializer;,
        Lorg/ton/block/Coins$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoins.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Coins.kt\norg/ton/block/Coins\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,84:1\n82#2,3:85\n1#3:88\n*S KotlinDebug\n*F\n+ 1 Coins.kt\norg/ton/block/Coins\n*L\n20#1:85,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/Coins$Companion;

.field private static final DECIMALS:I


# instance fields
.field private final amount:Lorg/ton/block/VarUInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/Coins$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/Coins$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    const/16 v0, 0x9

    .line 40
    sput v0, Lorg/ton/block/Coins;->DECIMALS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lorg/ton/block/Coins;-><init>(Lorg/ton/block/VarUInteger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/VarUInteger;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 14
    sget-object p3, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    invoke-virtual {p3}, Lorg/ton/block/Coins$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_1

    .line 18
    new-instance p1, Lorg/ton/block/VarUInteger;

    invoke-direct {p1, v0}, Lorg/ton/block/VarUInteger;-><init>(I)V

    .line 14
    iput-object p1, p0, Lorg/ton/block/Coins;->amount:Lorg/ton/block/VarUInteger;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lorg/ton/block/Coins;->amount:Lorg/ton/block/VarUInteger;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/ton/block/VarUInteger;)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/ton/block/Coins;->amount:Lorg/ton/block/VarUInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/block/VarUInteger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 18
    new-instance p1, Lorg/ton/block/VarUInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/ton/block/VarUInteger;-><init>(I)V

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lorg/ton/block/Coins;-><init>(Lorg/ton/block/VarUInteger;)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/Coins;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/ton/block/Coins;->amount:Lorg/ton/block/VarUInteger;

    .line 18
    new-instance v3, Lorg/ton/block/VarUInteger;

    invoke-direct {v3, v0}, Lorg/ton/block/VarUInteger;-><init>(I)V

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    .line 14
    sget-object v1, Lorg/ton/block/VarUInteger$$serializer;->INSTANCE:Lorg/ton/block/VarUInteger$$serializer;

    iget-object p0, p0, Lorg/ton/block/Coins;->amount:Lorg/ton/block/VarUInteger;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final amount()Lorg/ton/block/VarUInteger;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/block/Coins;->amount:Lorg/ton/block/VarUInteger;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/Coins;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/Coins;

    iget-object v1, p0, Lorg/ton/block/Coins;->amount:Lorg/ton/block/VarUInteger;

    iget-object p1, p1, Lorg/ton/block/Coins;->amount:Lorg/ton/block/VarUInteger;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/ton/block/Coins;->amount:Lorg/ton/block/VarUInteger;

    invoke-virtual {v0}, Lorg/ton/block/VarUInteger;->hashCode()I

    move-result v0

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nanocoins"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lorg/ton/block/Coins;->amount:Lorg/ton/block/VarUInteger;

    const-string v2, "amount"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 24
    sget v0, Lorg/ton/block/Coins;->DECIMALS:I

    invoke-virtual {p0, v0}, Lorg/ton/block/Coins;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(I)Ljava/lang/String;
    .locals 4

    .line 27
    iget-object v0, p0, Lorg/ton/block/Coins;->amount:Lorg/ton/block/VarUInteger;

    invoke-virtual {v0}, Lorg/ton/block/VarUInteger;->value()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const-string v2, "0"

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x30

    invoke-static {v0, p1, v2}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
