.class final Lcom/smedialink/storage/domain/di/module/InteractorModuleKt$interactorModule$1$15;
.super Lkotlin/jvm/internal/Lambda;
.source "InteractorModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/di/module/InteractorModuleKt$interactorModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInteractorModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InteractorModule.kt\ncom/smedialink/storage/domain/di/module/InteractorModuleKt$interactorModule$1$15\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,75:1\n127#2,5:76\n*S KotlinDebug\n*F\n+ 1 InteractorModule.kt\ncom/smedialink/storage/domain/di/module/InteractorModuleKt$interactorModule$1$15\n*L\n61#1:76,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/di/module/InteractorModuleKt$interactorModule$1$15;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/di/module/InteractorModuleKt$interactorModule$1$15;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/di/module/InteractorModuleKt$interactorModule$1$15;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/di/module/InteractorModuleKt$interactorModule$1$15;->INSTANCE:Lcom/smedialink/storage/domain/di/module/InteractorModuleKt$interactorModule$1$15;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;
    .locals 3

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const-class p2, Lcom/smedialink/storage/domain/repository/crypto/cancel/CancelRepository;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 61
    check-cast p2, Lcom/smedialink/storage/domain/repository/crypto/cancel/CancelRepository;

    .line 131
    const-class v1, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    check-cast v1, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 131
    const-class v2, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 61
    check-cast p1, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    new-instance v0, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;

    invoke-direct {v0, p1, p2, v1}, Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;-><init>(Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/repository/crypto/cancel/CancelRepository;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/domain/di/module/InteractorModuleKt$interactorModule$1$15;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/domain/interactor/crypto/cancel/CancelInteractor;

    move-result-object p1

    return-object p1
.end method
