.class public final Lcom/iMe/di/module/FeatureModuleKt$devToolsFeature$1$invoke$$inlined$singleOf$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SingleOf.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/di/module/FeatureModuleKt$devToolsFeature$1;->invoke(Lorg/koin/core/module/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lcom/iMe/feature/devTools/DevToolRepository;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSingleOf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SingleOf.kt\norg/koin/core/module/dsl/SingleOfKt$singleOf$1\n+ 2 New.kt\norg/koin/core/module/dsl/NewKt\n+ 3 FeatureModule.kt\ncom/iMe/di/module/FeatureModuleKt$devToolsFeature$1\n*L\n1#1,222:1\n35#2:223\n22#3:224\n*S KotlinDebug\n*F\n+ 1 SingleOf.kt\norg/koin/core/module/dsl/SingleOfKt$singleOf$1\n*L\n45#1:223\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/di/module/FeatureModuleKt$devToolsFeature$1$invoke$$inlined$singleOf$default$1;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ")",
            "Lcom/iMe/feature/devTools/DevToolRepository;"
        }
    .end annotation

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance p1, Lcom/iMe/feature/devTools/DevToolRepository;

    invoke-direct {p1}, Lcom/iMe/feature/devTools/DevToolRepository;-><init>()V

    return-object p1
.end method
