.class public final Lorg/ton/crypto/Base64ByteArraySerializer;
.super Ljava/lang/Object;
.source "base64.kt"

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
    value = "SMAP\nbase64.kt\nKotlin\n*S Kotlin\n*F\n+ 1 base64.kt\norg/ton/crypto/Base64ByteArraySerializer\n+ 2 base64.kt\norg/ton/crypto/Base64Kt\n+ 3 SerialDescriptors.kt\nkotlinx/serialization/descriptors/SerialDescriptorsKt\n*L\n1#1,27:1\n10#2:28\n12#2:29\n153#3:30\n*S KotlinDebug\n*F\n+ 1 base64.kt\norg/ton/crypto/Base64ByteArraySerializer\n*L\n21#1:28\n24#1:29\n19#1:30\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/crypto/Base64ByteArraySerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/crypto/Base64ByteArraySerializer;

    invoke-direct {v0}, Lorg/ton/crypto/Base64ByteArraySerializer;-><init>()V

    sput-object v0, Lorg/ton/crypto/Base64ByteArraySerializer;->INSTANCE:Lorg/ton/crypto/Base64ByteArraySerializer;

    .line 153
    sget-object v0, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    .line 19
    sput-object v0, Lorg/ton/crypto/Base64ByteArraySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lorg/ton/crypto/Base64ByteArraySerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)[B

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)[B
    .locals 7

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->decodeString()Ljava/lang/String;

    move-result-object v2

    .line 10
    sget-object v1, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->decode$default(Lkotlin/io/encoding/Base64;Ljava/lang/CharSequence;IIILjava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 19
    sget-object v0, Lorg/ton/crypto/Base64ByteArraySerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/ton/crypto/Base64ByteArraySerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;[B)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;[B)V
    .locals 7

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v1, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lkotlin/io/encoding/Base64;->encode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method
