.class public final Lorg/ton/bitstring/FiftHexBitStringSerializer;
.super Ljava/lang/Object;
.source "FiftHexBitStringSerializer.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lorg/ton/bitstring/BitString;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFiftHexBitStringSerializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FiftHexBitStringSerializer.kt\norg/ton/bitstring/FiftHexBitStringSerializer\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,22:1\n16#2:23\n*S KotlinDebug\n*F\n+ 1 FiftHexBitStringSerializer.kt\norg/ton/bitstring/FiftHexBitStringSerializer\n*L\n15#1:23\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;

    invoke-direct {v0}, Lorg/ton/bitstring/FiftHexBitStringSerializer;-><init>()V

    sput-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    .line 11
    sget-object v0, Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;->INSTANCE:Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;

    const-string v1, "BitString"

    invoke-static {v1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->PrimitiveSerialDescriptor(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/ton/bitstring/FiftHexBitStringSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/bitstring/BitString;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeString()Ljava/lang/String;

    move-result-object p1

    .line 16
    sget-object v0, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v0, p1}, Lorg/ton/bitstring/BitString$Companion;->of(Ljava/lang/String;)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lorg/ton/bitstring/BitString;

    invoke-virtual {p0, p1, p2}, Lorg/ton/bitstring/FiftHexBitStringSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/bitstring/BitString;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/bitstring/BitString;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method
