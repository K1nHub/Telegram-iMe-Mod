.class public final Lcom/iMe/storage/data/utils/extentions/Web3jExtKt;
.super Ljava/lang/Object;
.source "Web3jExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWeb3jExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Web3jExt.kt\ncom/iMe/storage/data/utils/extentions/Web3jExtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,20:1\n1#2:21\n*E\n"
.end annotation


# direct methods
.method public static final createSmartFunctionDataFor(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lorg/web3j/abi/datatypes/Type<",
            "*>;>;",
            "Ljava/util/List<",
            "+",
            "Lorg/web3j/abi/TypeReference<",
            "*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lorg/web3j/abi/datatypes/Function;

    invoke-direct {v0, p0, p1, p2}, Lorg/web3j/abi/datatypes/Function;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/Web3jExtKt;->encode(Lorg/web3j/abi/datatypes/Function;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic createSmartFunctionDataFor$default(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 16
    new-instance p2, Lcom/iMe/storage/data/utils/extentions/Web3jExtKt$createSmartFunctionDataFor$1;

    invoke-direct {p2}, Lcom/iMe/storage/data/utils/extentions/Web3jExtKt$createSmartFunctionDataFor$1;-><init>()V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 13
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/iMe/storage/data/utils/extentions/Web3jExtKt;->createSmartFunctionDataFor(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final encode(Lorg/web3j/abi/datatypes/Function;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lorg/web3j/abi/FunctionEncoder;->encode(Lorg/web3j/abi/datatypes/Function;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "run { FunctionEncoder.encode(this) }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
