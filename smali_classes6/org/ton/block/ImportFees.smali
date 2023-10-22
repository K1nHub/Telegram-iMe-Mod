.class public final Lorg/ton/block/ImportFees;
.super Ljava/lang/Object;
.source "ImportFees.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ImportFees$$serializer;,
        Lorg/ton/block/ImportFees$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImportFees.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportFees.kt\norg/ton/block/ImportFees\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,47:1\n82#2,3:48\n*S KotlinDebug\n*F\n+ 1 ImportFees.kt\norg/ton/block/ImportFees\n*L\n18#1:48,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/ImportFees$Companion;


# instance fields
.field private final feesCollected:Lorg/ton/block/Coins;

.field private final valueImported:Lorg/ton/block/CurrencyCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/ImportFees$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/ImportFees$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/ImportFees;->Companion:Lorg/ton/block/ImportFees$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/Coins;Lorg/ton/block/CurrencyCollection;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 11
    sget-object p4, Lorg/ton/block/ImportFees$$serializer;->INSTANCE:Lorg/ton/block/ImportFees$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/ImportFees$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/ImportFees;->feesCollected:Lorg/ton/block/Coins;

    iput-object p3, p0, Lorg/ton/block/ImportFees;->valueImported:Lorg/ton/block/CurrencyCollection;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/Coins;Lorg/ton/block/CurrencyCollection;)V
    .locals 1

    const-string v0, "feesCollected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueImported"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/block/ImportFees;->feesCollected:Lorg/ton/block/Coins;

    .line 15
    iput-object p2, p0, Lorg/ton/block/ImportFees;->valueImported:Lorg/ton/block/CurrencyCollection;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/ImportFees;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 11
    sget-object v0, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    iget-object v1, p0, Lorg/ton/block/ImportFees;->feesCollected:Lorg/ton/block/Coins;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    iget-object p0, p0, Lorg/ton/block/ImportFees;->valueImported:Lorg/ton/block/CurrencyCollection;

    const/4 v1, 0x1

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
    instance-of v1, p1, Lorg/ton/block/ImportFees;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/ImportFees;

    iget-object v1, p0, Lorg/ton/block/ImportFees;->feesCollected:Lorg/ton/block/Coins;

    iget-object v3, p1, Lorg/ton/block/ImportFees;->feesCollected:Lorg/ton/block/Coins;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/ImportFees;->valueImported:Lorg/ton/block/CurrencyCollection;

    iget-object p1, p1, Lorg/ton/block/ImportFees;->valueImported:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFeesCollected()Lorg/ton/block/Coins;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/block/ImportFees;->feesCollected:Lorg/ton/block/Coins;

    return-object v0
.end method

.method public final getValueImported()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/block/ImportFees;->valueImported:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/ImportFees;->feesCollected:Lorg/ton/block/Coins;

    invoke-virtual {v0}, Lorg/ton/block/Coins;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ImportFees;->valueImported:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "import_fees"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lorg/ton/block/ImportFees;->feesCollected:Lorg/ton/block/Coins;

    const-string v2, "fees_collected"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 20
    iget-object v1, p0, Lorg/ton/block/ImportFees;->valueImported:Lorg/ton/block/CurrencyCollection;

    const-string v2, "value_imported"

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

    .line 24
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
