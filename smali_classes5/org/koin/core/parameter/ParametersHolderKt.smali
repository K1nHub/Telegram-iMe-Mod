.class public final Lorg/koin/core/parameter/ParametersHolderKt;
.super Ljava/lang/Object;
.source "ParametersHolder.kt"


# direct methods
.method public static final emptyParametersHolder()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    .line 123
    new-instance v0, Lorg/koin/core/parameter/ParametersHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lorg/koin/core/parameter/ParametersHolder;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final varargs parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 1

    const-string v0, "parameters"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lorg/koin/core/parameter/ParametersHolder;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/koin/core/parameter/ParametersHolder;-><init>(Ljava/util/List;)V

    return-object v0
.end method
