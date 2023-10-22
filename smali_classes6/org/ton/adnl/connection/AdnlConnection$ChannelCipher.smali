.class final Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;
.super Ljava/lang/Object;
.source "AdnlConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/adnl/connection/AdnlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChannelCipher"
.end annotation


# instance fields
.field private final input:Lorg/ton/crypto/AesCtr;

.field private final output:Lorg/ton/crypto/AesCtr;


# direct methods
.method public constructor <init>(Lorg/ton/crypto/AesCtr;Lorg/ton/crypto/AesCtr;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;->input:Lorg/ton/crypto/AesCtr;

    .line 195
    iput-object p2, p0, Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;->output:Lorg/ton/crypto/AesCtr;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    const-string v0, "nonce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x20

    .line 204
    invoke-static {p1, v0, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v0

    const/16 v2, 0x40

    .line 205
    invoke-static {p1, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    const/16 v3, 0x50

    .line 206
    invoke-static {p1, v2, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v2

    const/16 v4, 0x60

    .line 207
    invoke-static {p1, v3, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    .line 203
    invoke-direct {p0, v0, v1, v2, p1}, Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;-><init>([B[B[B[B)V

    return-void
.end method

.method public constructor <init>([B[B[B[B)V
    .locals 1

    const-string v0, "s1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "s2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v1"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v2"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    new-instance v0, Lorg/ton/crypto/AesCtr;

    invoke-direct {v0, p1, p3}, Lorg/ton/crypto/AesCtr;-><init>([B[B)V

    new-instance p1, Lorg/ton/crypto/AesCtr;

    invoke-direct {p1, p2, p4}, Lorg/ton/crypto/AesCtr;-><init>([B[B)V

    invoke-direct {p0, v0, p1}, Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;-><init>(Lorg/ton/crypto/AesCtr;Lorg/ton/crypto/AesCtr;)V

    return-void
.end method


# virtual methods
.method public final getInput()Lorg/ton/crypto/AesCtr;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;->input:Lorg/ton/crypto/AesCtr;

    return-object v0
.end method

.method public final getOutput()Lorg/ton/crypto/AesCtr;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;->output:Lorg/ton/crypto/AesCtr;

    return-object v0
.end method
