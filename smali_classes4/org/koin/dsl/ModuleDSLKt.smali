.class public final Lorg/koin/dsl/ModuleDSLKt;
.super Ljava/lang/Object;
.source "ModuleDSL.kt"


# direct methods
.method public static final module(ZLkotlin/jvm/functions/Function1;)Lorg/koin/core/module/Module;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/core/module/Module;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/koin/core/module/Module;"
        }
    .end annotation

    const-string/jumbo v0, "moduleDeclaration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lorg/koin/core/module/Module;

    invoke-direct {v0, p0}, Lorg/koin/core/module/Module;-><init>(Z)V

    .line 44
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 42
    :cond_0
    invoke-static {p0, p1}, Lorg/koin/dsl/ModuleDSLKt;->module(ZLkotlin/jvm/functions/Function1;)Lorg/koin/core/module/Module;

    move-result-object p0

    return-object p0
.end method
