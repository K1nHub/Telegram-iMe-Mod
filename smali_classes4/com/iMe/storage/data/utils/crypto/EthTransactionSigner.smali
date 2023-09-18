.class public final Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;
.super Ljava/lang/Object;
.source "EthTransactionSigner.kt"


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;

    invoke-direct {v0}, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/EthTransactionSigner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createTransferTransactionByType(Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$Transaction;
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v0

    if-eqz p3, :cond_1

    .line 19
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-eqz p3, :cond_2

    .line 21
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;

    move-result-object p2

    .line 22
    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p2, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;->setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;->setTransfer(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object p1

    goto :goto_2

    .line 26
    :cond_2
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;

    move-result-object p3

    .line 27
    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p3, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;->setAmount(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p2}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;->setTo(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;->setErc20Transfer(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object p1

    .line 32
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string p2, "newBuilder()\n           \u2026   }\n            .build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction;

    return-object p1
.end method

.method public final sign(JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lwallet/core/jni/proto/Ethereum$Transaction;[B)Ljava/lang/String;
    .locals 1

    const-string v0, "gasPrice"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gasLimit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toAddress"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privateKey"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningInput;->newBuilder()Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;

    move-result-object v0

    .line 44
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    const-string p2, "valueOf(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;->setChainId(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;

    move-result-object p1

    .line 45
    invoke-static {p3}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;->setGasPrice(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;

    move-result-object p1

    .line 46
    invoke-static {p4}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;->setGasLimit(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;

    move-result-object p1

    .line 47
    invoke-static {p5}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString(Ljava/math/BigInteger;)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;->setNonce(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1, p6}, Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;->setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1, p7}, Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;->setTransaction(Lwallet/core/jni/proto/Ethereum$Transaction;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;

    move-result-object p1

    .line 50
    invoke-static {p8}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toByteString([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;->setPrivateKey(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$SigningInput;

    .line 53
    sget-object p2, Lwallet/core/jni/CoinType;->ETHEREUM:Lwallet/core/jni/CoinType;

    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->parser()Lcom/google/protobuf/Parser;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lwallet/core/java/AnySigner;->sign(Lcom/google/protobuf/MessageLite;Lwallet/core/jni/CoinType;Lcom/google/protobuf/Parser;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    .line 54
    invoke-virtual {p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    const-string p2, "signerOutput.encoded.toByteArray()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->toHexString$default([BZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
