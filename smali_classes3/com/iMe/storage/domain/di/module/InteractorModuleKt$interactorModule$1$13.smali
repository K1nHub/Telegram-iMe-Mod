.class final Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$13;
.super Lkotlin/jvm/internal/Lambda;
.source "InteractorModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1;->invoke(Lorg/koin/core/module/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInteractorModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InteractorModule.kt\ncom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$13\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,77:1\n129#2,5:78\n*S KotlinDebug\n*F\n+ 1 InteractorModule.kt\ncom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$13\n*L\n60#1:78,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$13;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$13;

    invoke-direct {v0}, Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$13;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$13;->INSTANCE:Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$13;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;
    .locals 3

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance p2, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    .line 133
    const-class v0, Lcom/iMe/storage/domain/repository/crypto/simplex/SimplexRepository;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/repository/crypto/simplex/SimplexRepository;

    const-class v2, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 60
    invoke-direct {p2, v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;-><init>(Lcom/iMe/storage/domain/repository/crypto/simplex/SimplexRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$13;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    move-result-object p1

    return-object p1
.end method
