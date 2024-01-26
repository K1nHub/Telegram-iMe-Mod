.class public final Lorg/ton/block/CurrencyCollection;
.super Ljava/lang/Object;
.source "CurrencyCollection.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/CurrencyCollection$$serializer;,
        Lorg/ton/block/CurrencyCollection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCurrencyCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CurrencyCollection.kt\norg/ton/block/CurrencyCollection\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,49:1\n82#2,3:50\n*S KotlinDebug\n*F\n+ 1 CurrencyCollection.kt\norg/ton/block/CurrencyCollection\n*L\n21#1:50,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/CurrencyCollection$Companion;


# instance fields
.field private final coins:Lorg/ton/block/Coins;

.field private final other:Lorg/ton/block/ExtraCurrencyCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/CurrencyCollection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/CurrencyCollection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/Coins;Lorg/ton/block/ExtraCurrencyCollection;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 12
    sget-object p4, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/CurrencyCollection$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/CurrencyCollection;->coins:Lorg/ton/block/Coins;

    iput-object p3, p0, Lorg/ton/block/CurrencyCollection;->other:Lorg/ton/block/ExtraCurrencyCollection;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/Coins;Lorg/ton/block/ExtraCurrencyCollection;)V
    .locals 1

    const-string v0, "coins"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/ton/block/CurrencyCollection;->coins:Lorg/ton/block/Coins;

    .line 18
    iput-object p2, p0, Lorg/ton/block/CurrencyCollection;->other:Lorg/ton/block/ExtraCurrencyCollection;

    return-void
.end method

.method public static synthetic copy$default(Lorg/ton/block/CurrencyCollection;Lorg/ton/block/Coins;Lorg/ton/block/ExtraCurrencyCollection;ILjava/lang/Object;)Lorg/ton/block/CurrencyCollection;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lorg/ton/block/CurrencyCollection;->coins:Lorg/ton/block/Coins;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lorg/ton/block/CurrencyCollection;->other:Lorg/ton/block/ExtraCurrencyCollection;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/ton/block/CurrencyCollection;->copy(Lorg/ton/block/Coins;Lorg/ton/block/ExtraCurrencyCollection;)Lorg/ton/block/CurrencyCollection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/CurrencyCollection;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 12
    sget-object v0, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    iget-object v1, p0, Lorg/ton/block/CurrencyCollection;->coins:Lorg/ton/block/Coins;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/ExtraCurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/ExtraCurrencyCollection$$serializer;

    iget-object p0, p0, Lorg/ton/block/CurrencyCollection;->other:Lorg/ton/block/ExtraCurrencyCollection;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final coins()Lorg/ton/block/Coins;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/block/CurrencyCollection;->coins:Lorg/ton/block/Coins;

    return-object v0
.end method

.method public final copy(Lorg/ton/block/Coins;Lorg/ton/block/ExtraCurrencyCollection;)Lorg/ton/block/CurrencyCollection;
    .locals 1

    const-string v0, "coins"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/ton/block/CurrencyCollection;

    invoke-direct {v0, p1, p2}, Lorg/ton/block/CurrencyCollection;-><init>(Lorg/ton/block/Coins;Lorg/ton/block/ExtraCurrencyCollection;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/CurrencyCollection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/CurrencyCollection;

    iget-object v1, p0, Lorg/ton/block/CurrencyCollection;->coins:Lorg/ton/block/Coins;

    iget-object v3, p1, Lorg/ton/block/CurrencyCollection;->coins:Lorg/ton/block/Coins;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/CurrencyCollection;->other:Lorg/ton/block/ExtraCurrencyCollection;

    iget-object p1, p1, Lorg/ton/block/CurrencyCollection;->other:Lorg/ton/block/ExtraCurrencyCollection;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/CurrencyCollection;->coins:Lorg/ton/block/Coins;

    invoke-virtual {v0}, Lorg/ton/block/Coins;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/CurrencyCollection;->other:Lorg/ton/block/ExtraCurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/ExtraCurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final other()Lorg/ton/block/ExtraCurrencyCollection;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/block/CurrencyCollection;->other:Lorg/ton/block/ExtraCurrencyCollection;

    return-object v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencies"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lorg/ton/block/CurrencyCollection;->coins:Lorg/ton/block/Coins;

    const-string v2, "coins"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 23
    iget-object v1, p0, Lorg/ton/block/CurrencyCollection;->other:Lorg/ton/block/ExtraCurrencyCollection;

    const-string v2, "other"

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
