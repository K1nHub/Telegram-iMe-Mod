.class final Lorg/ton/mnemonic/Mnemonic$generate$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Mnemonic.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/mnemonic/Mnemonic;->generate(Ljava/lang/String;ILjava/util/List;Lkotlin/random/Random;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMnemonic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mnemonic.kt\norg/ton/mnemonic/Mnemonic$generate$2$1\n+ 2 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n1#1,174:1\n7#2,4:175\n7#2,4:179\n*S KotlinDebug\n*F\n+ 1 Mnemonic.kt\norg/ton/mnemonic/Mnemonic$generate$2$1\n*L\n66#1:175,4\n72#1:179,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ton.mnemonic.Mnemonic$generate$2$1"
    f = "Mnemonic.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $password:Ljava/lang/String;

.field final synthetic $random:Lkotlin/random/Random;

.field final synthetic $wordCount:I

.field final synthetic $wordlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(ILkotlin/random/Random;Ljava/lang/String;Lkotlinx/coroutines/CancellableContinuation;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/random/Random;",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/mnemonic/Mnemonic$generate$2$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$wordCount:I

    iput-object p2, p0, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$random:Lkotlin/random/Random;

    iput-object p3, p0, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$password:Ljava/lang/String;

    iput-object p4, p0, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p5, p0, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$wordlist:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lorg/ton/mnemonic/Mnemonic$generate$2$1;

    iget v1, p0, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$wordCount:I

    iget-object v2, p0, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$random:Lkotlin/random/Random;

    iget-object v3, p0, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$password:Ljava/lang/String;

    iget-object v4, p0, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    iget-object v5, p0, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$wordlist:Ljava/util/List;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/ton/mnemonic/Mnemonic$generate$2$1;-><init>(ILkotlin/random/Random;Ljava/lang/String;Lkotlinx/coroutines/CancellableContinuation;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/ton/mnemonic/Mnemonic$generate$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 58
    iget v0, v1, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->label:I

    if-nez v0, :cond_a

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    :try_start_0
    iget v0, v1, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$wordCount:I

    new-array v11, v0, [Ljava/lang/String;

    const/4 v12, 0x0

    move v2, v12

    :goto_0
    if-ge v2, v0, :cond_0

    const-string v3, ""

    aput-object v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, v1, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$random:Lkotlin/random/Random;

    invoke-virtual {v0}, Lkotlin/random/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/random/RandomKt;->Random(J)Lkotlin/random/Random;

    move-result-object v0

    .line 62
    sget-object v2, Lorg/ton/crypto/digest/Digest;->Companion:Lorg/ton/crypto/digest/Digest$Companion;

    invoke-virtual {v2}, Lorg/ton/crypto/digest/Digest$Companion;->sha512()Lorg/ton/crypto/digest/Digest;

    move-result-object v2

    .line 63
    new-instance v13, Lorg/ton/crypto/mac/hmac/HMac;

    invoke-direct {v13, v2}, Lorg/ton/crypto/mac/hmac/HMac;-><init>(Lorg/ton/crypto/digest/Digest;)V

    .line 64
    invoke-virtual {v13}, Lorg/ton/crypto/mac/hmac/HMac;->getMacSize()I

    move-result v2

    new-array v14, v2, [B

    .line 65
    invoke-virtual {v13}, Lorg/ton/crypto/mac/hmac/HMac;->getMacSize()I

    move-result v2

    new-array v15, v2, [B

    .line 66
    iget-object v2, v1, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$password:Ljava/lang/String;

    .line 7
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    invoke-static {v3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "charset.newEncoder()"

    if-eqz v4, :cond_1

    :try_start_1
    invoke-static {v2}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    :goto_1
    move-object v9, v2

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v2, v12, v4}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object v2

    goto :goto_1

    .line 67
    :goto_2
    new-instance v8, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;

    invoke-direct {v8, v13}, Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;-><init>(Lorg/ton/crypto/mac/hmac/HMac;)V

    .line 68
    :goto_3
    iget-object v2, v1, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v2}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 69
    iget v2, v1, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$wordCount:I

    iget-object v3, v1, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$wordlist:Ljava/util/List;

    move v4, v12

    :goto_4
    if-ge v4, v2, :cond_2

    .line 70
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->random(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_2
    const-string v3, " "

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const/16 v18, 0x0

    move-object v2, v11

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-object/from16 v20, v9

    move/from16 v9, v17

    move-object v12, v10

    move-object/from16 v10, v18

    .line 72
    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    invoke-static {v3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x0

    goto :goto_5

    .line 10
    :cond_3
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v2, v5, v4}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object v2

    .line 74
    :goto_5
    iget-object v3, v1, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$password:Ljava/lang/String;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_6

    :cond_4
    move v3, v5

    :goto_6
    if-eqz v3, :cond_6

    .line 75
    invoke-static {}, Lorg/ton/mnemonic/MnemonicKt;->access$getEMPTY_BYTES$p()[B

    move-result-object v3

    invoke-static {v13, v2, v3, v15}, Lorg/ton/mnemonic/MnemonicKt;->access$entropy(Lorg/ton/crypto/mac/hmac/HMac;[B[B[B)V

    move-object/from16 v3, v19

    .line 76
    invoke-static {v3, v15}, Lorg/ton/mnemonic/MnemonicKt;->access$passwordValidation(Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;[B)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3, v15}, Lorg/ton/mnemonic/MnemonicKt;->access$basicValidation(Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;[B)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    move-object v8, v3

    move-object v10, v12

    move-object/from16 v9, v20

    goto :goto_7

    :cond_6
    move-object/from16 v3, v19

    :cond_7
    move-object/from16 v4, v20

    .line 85
    invoke-static {v13, v2, v4, v14}, Lorg/ton/mnemonic/MnemonicKt;->access$entropy(Lorg/ton/crypto/mac/hmac/HMac;[B[B[B)V

    .line 86
    invoke-static {v3, v14}, Lorg/ton/mnemonic/MnemonicKt;->access$basicValidation(Lorg/ton/crypto/kdf/PKCSS2ParametersGenerator;[B)Z

    move-result v2

    if-nez v2, :cond_8

    move-object v8, v3

    move-object v9, v4

    move-object v10, v12

    :goto_7
    move v12, v5

    goto/16 :goto_3

    .line 90
    :cond_8
    iget-object v0, v1, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v11}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 94
    iget-object v2, v1, Lorg/ton/mnemonic/Mnemonic$generate$2$1;->$continuation:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 96
    :cond_9
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 58
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
