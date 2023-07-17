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
    value = "SMAP\nInteractorModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InteractorModule.kt\ncom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$2\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,90:1\n129#2,5:91\n129#2,5:96\n129#2,5:101\n129#2,5:106\n*S KotlinDebug\n*F\n+ 1 InteractorModule.kt\ncom/iMe/storage/domain/di/module/InteractorModuleKt$interactorModule$1$2\n*L\n33#1:91,5\n34#1:96,5\n35#1:101,5\n36#1:106,5\n*E\n"
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
    .locals 4

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const-class p2, Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 33
    check-cast p2, Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    .line 133
    const-class v1, Lcom/iMe/storage/domain/repository/wallet/WalletRepository;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    check-cast v1, Lcom/iMe/storage/domain/repository/wallet/WalletRepository;

    .line 133
    const-class v2, Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    .line 35
    check-cast v2, Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;

    .line 133
    const-class v3, Lcom/iMe/storage/domain/storage/PreferenceHelper;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p1, v3, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    check-cast p1, Lcom/iMe/storage/domain/storage/PreferenceHelper;

    .line 32
    new-instance v0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-direct {v0, p1, v2, v1, p2}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;-><init>(Lcom/iMe/storage/domain/storage/PreferenceHelper;Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;Lcom/iMe/storage/domain/repository/wallet/WalletRepository;Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;)V

    return-object v0
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
