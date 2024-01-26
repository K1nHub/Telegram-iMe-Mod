.class public final Lorg/ton/hashmap/HmlSame;
.super Ljava/lang/Object;
.source "HmlSame.kt"

# interfaces
.implements Lorg/ton/hashmap/HmLabel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HmlSame$$serializer;,
        Lorg/ton/hashmap/HmlSame$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHmlSame.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HmlSame.kt\norg/ton/hashmap/HmlSame\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n+ 3 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,79:1\n13#2:80\n82#3,3:81\n*S KotlinDebug\n*F\n+ 1 HmlSame.kt\norg/ton/hashmap/HmlSame\n*L\n21#1:80\n23#1:81,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/hashmap/HmlSame$Companion;


# instance fields
.field private final n:I

.field private final v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/hashmap/HmlSame$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/hashmap/HmlSame$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/hashmap/HmlSame;->Companion:Lorg/ton/hashmap/HmlSame$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IZILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 13
    sget-object p4, Lorg/ton/hashmap/HmlSame$$serializer;->INSTANCE:Lorg/ton/hashmap/HmlSame$$serializer;

    invoke-virtual {p4}, Lorg/ton/hashmap/HmlSame$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/ton/hashmap/HmlSame;->v:Z

    iput p3, p0, Lorg/ton/hashmap/HmlSame;->n:I

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lorg/ton/hashmap/HmlSame;->v:Z

    .line 17
    iput p2, p0, Lorg/ton/hashmap/HmlSame;->n:I

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/hashmap/HmlSame;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 13
    iget-boolean v0, p0, Lorg/ton/hashmap/HmlSame;->v:Z

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget p0, p0, Lorg/ton/hashmap/HmlSame;->n:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/hashmap/HmlSame;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/hashmap/HmlSame;

    iget-boolean v1, p0, Lorg/ton/hashmap/HmlSame;->v:Z

    iget-boolean v3, p1, Lorg/ton/hashmap/HmlSame;->v:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/hashmap/HmlSame;->n:I

    iget p1, p1, Lorg/ton/hashmap/HmlSame;->n:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getN()I
    .locals 1

    .line 17
    iget v0, p0, Lorg/ton/hashmap/HmlSame;->n:I

    return v0
.end method

.method public final getV()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lorg/ton/hashmap/HmlSame;->v:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lorg/ton/hashmap/HmlSame;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/hashmap/HmlSame;->n:I

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hml_same"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 24
    iget-boolean v1, p0, Lorg/ton/hashmap/HmlSame;->v:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 25
    iget v1, p0, Lorg/ton/hashmap/HmlSame;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "n"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toBitString()Lorg/ton/bitstring/BitString;
    .locals 4

    .line 21
    iget v0, p0, Lorg/ton/hashmap/HmlSame;->n:I

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-boolean v3, p0, Lorg/ton/hashmap/HmlSame;->v:Z

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_0
    sget-object v2, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/ton/bitstring/BitString$Companion;->of([Z)Lorg/ton/bitstring/BitString;

    move-result-object v0

    return-object v0
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
