.class final Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$2;
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
        "Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInteractorModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InteractorModule.kt\ncom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$2\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,77:1\n129#2,5:78\n129#2,5:83\n*S KotlinDebug\n*F\n+ 1 InteractorModule.kt\ncom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$2\n*L\n32#1:78,5\n33#1:83,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$2;

    invoke-direct {v0}, Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$2;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$2;->INSTANCE:Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;
    .locals 7

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const-class p2, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 32
    move-object v6, p2

    check-cast v6, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 133
    const-class p2, Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 33
    move-object v5, p2

    check-cast v5, Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    .line 133
    const-class p2, Lcom/iMe/storage/domain/repository/wallet/WalletRepository;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 33
    move-object v4, p2

    check-cast v4, Lcom/iMe/storage/domain/repository/wallet/WalletRepository;

    .line 133
    const-class p2, Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 33
    move-object v3, p2

    check-cast v3, Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;

    .line 133
    const-class p2, Lcom/iMe/storage/domain/storage/PreferenceHelper;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 33
    move-object v2, p1

    check-cast v2, Lcom/iMe/storage/domain/storage/PreferenceHelper;

    .line 32
    new-instance p1, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;-><init>(Lcom/iMe/storage/domain/storage/PreferenceHelper;Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;Lcom/iMe/storage/domain/repository/wallet/WalletRepository;Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$2;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    move-result-object p1

    return-object p1
.end method
