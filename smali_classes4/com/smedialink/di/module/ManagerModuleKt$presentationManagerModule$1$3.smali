.class final Lcom/smedialink/di/module/ManagerModuleKt$presentationManagerModule$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ManagerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/di/module/ManagerModuleKt$presentationManagerModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManagerModule.kt\ncom/smedialink/di/module/ManagerModuleKt$presentationManagerModule$1$3\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,26:1\n127#2,5:27\n*S KotlinDebug\n*F\n+ 1 ManagerModule.kt\ncom/smedialink/di/module/ManagerModuleKt$presentationManagerModule$1$3\n*L\n16#1:27,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/di/module/ManagerModuleKt$presentationManagerModule$1$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/di/module/ManagerModuleKt$presentationManagerModule$1$3;

    invoke-direct {v0}, Lcom/smedialink/di/module/ManagerModuleKt$presentationManagerModule$1$3;-><init>()V

    sput-object v0, Lcom/smedialink/di/module/ManagerModuleKt$presentationManagerModule$1$3;->INSTANCE:Lcom/smedialink/di/module/ManagerModuleKt$presentationManagerModule$1$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;
    .locals 4

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const-class p2, Lcom/smedialink/storage/domain/interactor/firebase/DynamicLinksInteractor;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 16
    check-cast p2, Lcom/smedialink/storage/domain/interactor/firebase/DynamicLinksInteractor;

    .line 131
    const-class v1, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 131
    const-class v2, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    check-cast v2, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 131
    const-class v3, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    check-cast p1, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    new-instance v0, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;

    invoke-direct {v0, v1, p2, v2, p1}, Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;-><init>(Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/smedialink/storage/domain/interactor/firebase/DynamicLinksInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/di/module/ManagerModuleKt$presentationManagerModule$1$3;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/manager/crypto/pay/BinancePayProcessManager;

    move-result-object p1

    return-object p1
.end method
