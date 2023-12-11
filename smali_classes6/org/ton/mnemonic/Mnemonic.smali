.class public final Lorg/ton/mnemonic/Mnemonic;
.super Ljava/lang/Object;
.source "Mnemonic.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMnemonic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mnemonic.kt\norg/ton/mnemonic/Mnemonic\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n1#1,174:1\n314#2,11:175\n1726#3,3:186\n7#4,4:189\n*S KotlinDebug\n*F\n+ 1 Mnemonic.kt\norg/ton/mnemonic/Mnemonic\n*L\n55#1:175,11\n111#1:186,3\n137#1:189,4\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/mnemonic/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/mnemonic/Mnemonic;

    invoke-direct {v0}, Lorg/ton/mnemonic/Mnemonic;-><init>()V

    sput-object v0, Lorg/ton/mnemonic/Mnemonic;->INSTANCE:Lorg/ton/mnemonic/Mnemonic;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final generate(Ljava/lang/String;ILjava/util/List;Lkotlin/random/Random;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/random/Random;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 315
    new-instance v7, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v7, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 321
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 56
    sget-object v8, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    .line 57
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {}, Lorg/ton/mnemonic/MnemonicKt;->access$getMnemonicGeneratorCoroutineName$p()Lkotlinx/coroutines/CoroutineName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    .line 56
    new-instance v11, Lorg/ton/mnemonic/Mnemonic$generate$2$1;

    const/4 v6, 0x0

    move-object v0, v11

    move v1, p1

    move-object/from16 v2, p3

    move-object v3, p0

    move-object v4, v7

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/ton/mnemonic/Mnemonic$generate$2$1;-><init>(ILkotlin/random/Random;Ljava/lang/String;Lkotlinx/coroutines/CancellableContinuation;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 323
    invoke-virtual {v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method public static synthetic generate$default(Ljava/lang/String;ILjava/util/List;Lkotlin/random/Random;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-string p0, ""

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/16 p1, 0x18

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 53
    sget-object p2, Lorg/ton/mnemonic/Mnemonic;->INSTANCE:Lorg/ton/mnemonic/Mnemonic;

    invoke-virtual {p2}, Lorg/ton/mnemonic/Mnemonic;->mnemonicWords()Ljava/util/List;

    move-result-object p2

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 54
    sget-object p3, Lorg/ton/crypto/SecureRandom;->INSTANCE:Lorg/ton/crypto/SecureRandom;

    .line 50
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ton/mnemonic/Mnemonic;->generate(Ljava/lang/String;ILjava/util/List;Lkotlin/random/Random;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final isBasicSeed([B)Z
    .locals 2

    const-string v0, "entropy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;

    sget-object v1, Lorg/ton/crypto/digest/Digest;->Companion:Lorg/ton/crypto/digest/Digest$Companion;

    invoke-virtual {v1}, Lorg/ton/crypto/digest/Digest$Companion;->sha512()Lorg/ton/crypto/digest/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;-><init>(Lorg/ton/crypto/digest/Digest;)V

    invoke-static {v0, p0}, Lorg/ton/mnemonic/MnemonicKt;->access$basicValidation(Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;[B)Z

    move-result p0

    return p0
.end method

.method public static final isPasswordNeeded(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "mnemonic"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 101
    invoke-static {p0, v0, v1, v0}, Lorg/ton/mnemonic/Mnemonic;->toEntropy$default(Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)[B

    move-result-object p0

    .line 102
    invoke-static {p0}, Lorg/ton/mnemonic/Mnemonic;->isPasswordSeed([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/ton/mnemonic/Mnemonic;->isBasicSeed([B)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isPasswordSeed([B)Z
    .locals 2

    const-string v0, "entropy"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;

    sget-object v1, Lorg/ton/crypto/digest/Digest;->Companion:Lorg/ton/crypto/digest/Digest$Companion;

    invoke-virtual {v1}, Lorg/ton/crypto/digest/Digest$Companion;->sha512()Lorg/ton/crypto/digest/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;-><init>(Lorg/ton/crypto/digest/Digest;)V

    invoke-static {v0, p0}, Lorg/ton/mnemonic/MnemonicKt;->access$passwordValidation(Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;[B)Z

    move-result p0

    return p0
.end method

.method public static final isValid(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "mnemonic"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wordlist"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1726
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move p2, v1

    goto :goto_0

    .line 1727
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 111
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move p2, v2

    :goto_0
    if-nez p2, :cond_3

    return v2

    .line 115
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    invoke-static {p0}, Lorg/ton/mnemonic/Mnemonic;->isPasswordNeeded(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_5

    return v2

    .line 119
    :cond_5
    invoke-static {p0, p1}, Lorg/ton/mnemonic/Mnemonic;->toEntropy(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/ton/mnemonic/Mnemonic;->isBasicSeed([B)Z

    move-result p0

    return p0
.end method

.method public static synthetic isValid$default(Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    .line 109
    sget-object p2, Lorg/ton/mnemonic/Mnemonic;->INSTANCE:Lorg/ton/mnemonic/Mnemonic;

    invoke-virtual {p2}, Lorg/ton/mnemonic/Mnemonic;->mnemonicWords()Ljava/util/List;

    move-result-object p2

    .line 106
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/ton/mnemonic/Mnemonic;->isValid(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final toEntropy(Ljava/util/List;Ljava/lang/String;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    const-string v0, "mnemonic"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lorg/ton/crypto/digest/Digest;->Companion:Lorg/ton/crypto/digest/Digest$Companion;

    invoke-virtual {v0}, Lorg/ton/crypto/digest/Digest$Companion;->sha512()Lorg/ton/crypto/digest/Digest;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Lorg/ton/crypto/digest/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 137
    new-instance v2, Lorg/ton/crypto/mac/hmac/HMac;

    invoke-direct {v2, v0}, Lorg/ton/crypto/mac/hmac/HMac;-><init>(Lorg/ton/crypto/digest/Digest;)V

    const-string v4, " "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 7
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    invoke-static {v0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "charset.newEncoder()"

    if-eqz v3, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3, p0, v4, v6}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object p0

    .line 8
    :goto_0
    invoke-static {v0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, p1, v4, v3}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object p1

    .line 137
    :goto_1
    invoke-static {v2, p0, p1, v1}, Lorg/ton/mnemonic/MnemonicKt;->access$entropy(Lorg/ton/crypto/mac/hmac/HMac;[B[B[B)V

    return-object v1
.end method

.method public static synthetic toEntropy$default(Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 134
    :cond_0
    invoke-static {p0, p1}, Lorg/ton/mnemonic/Mnemonic;->toEntropy(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final toSeed(Ljava/util/List;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    const-string v0, "mnemonic"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;

    .line 125
    sget-object v1, Lorg/ton/crypto/digest/Digest;->Companion:Lorg/ton/crypto/digest/Digest$Companion;

    invoke-virtual {v1}, Lorg/ton/crypto/digest/Digest$Companion;->sha512()Lorg/ton/crypto/digest/Digest;

    move-result-object v1

    .line 126
    invoke-static {p0, p1}, Lorg/ton/mnemonic/Mnemonic;->toEntropy(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object p0

    .line 127
    invoke-static {}, Lorg/ton/mnemonic/MnemonicKt;->access$getDEFAULT_SALT_BYTES$p()[B

    move-result-object p1

    const v2, 0x186a0

    .line 124
    invoke-direct {v0, v1, p0, p1, v2}, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;-><init>(Lorg/ton/crypto/digest/Digest;[B[BI)V

    const/16 p0, 0x200

    .line 130
    invoke-virtual {v0, p0}, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;->generateDerivedParameters(I)[B

    move-result-object p0

    const/4 p1, 0x0

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toSeed$default(Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 123
    :cond_0
    invoke-static {p0, p1}, Lorg/ton/mnemonic/Mnemonic;->toSeed(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final mnemonicWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lorg/ton/mnemonic/MnemonicWordListKt;->getMNEMONIC_WORD_LIST()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
