.class public final Lorg/ton/crypto/HexByteArraySerializer;
.super Ljava/lang/Object;
.source "hex.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "[B>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nhex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 hex.kt\norg/ton/crypto/HexByteArraySerializer\n+ 2 SerialDescriptors.kt\nkotlinx/serialization/descriptors/SerialDescriptorsKt\n*L\n1#1,65:1\n153#2:66\n*S KotlinDebug\n*F\n+ 1 hex.kt\norg/ton/crypto/HexByteArraySerializer\n*L\n57#1:66\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/crypto/HexByteArraySerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/crypto/HexByteArraySerializer;

    invoke-direct {v0}, Lorg/ton/crypto/HexByteArraySerializer;-><init>()V

    sput-object v0, Lorg/ton/crypto/HexByteArraySerializer;->INSTANCE:Lorg/ton/crypto/HexByteArraySerializer;

    .line 153
    sget-object v0, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    .line 57
    sput-object v0, Lorg/ton/crypto/HexByteArraySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lorg/ton/crypto/HexByteArraySerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)[B

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)[B
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/ton/crypto/HexKt;->hex(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 57
    sget-object v0, Lorg/ton/crypto/HexByteArraySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/ton/crypto/HexByteArraySerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;[B)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;[B)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p2}, Lorg/ton/crypto/HexKt;->hex([B)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method
