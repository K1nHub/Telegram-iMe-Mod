.class final Lcom/iMe/di/module/ManagerModuleKt$presentationManagerModule$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ManagerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/di/module/ManagerModuleKt$presentationManagerModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManagerModule.kt\ncom/iMe/di/module/ManagerModuleKt$presentationManagerModule$1$2\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,47:1\n129#2,5:48\n129#2,5:53\n129#2,5:58\n129#2,5:63\n129#2,5:68\n129#2,5:73\n*S KotlinDebug\n*F\n+ 1 ManagerModule.kt\ncom/iMe/di/module/ManagerModuleKt$presentationManagerModule$1$2\n*L\n19#1:48,5\n20#1:53,5\n21#1:58,5\n22#1:63,5\n23#1:68,5\n24#1:73,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/di/module/ManagerModuleKt$presentationManagerModule$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/di/module/ManagerModuleKt$presentationManagerModule$1$2;

    invoke-direct {v0}, Lcom/iMe/di/module/ManagerModuleKt$presentationManagerModule$1$2;-><init>()V

    sput-object v0, Lcom/iMe/di/module/ManagerModuleKt$presentationManagerModule$1$2;->INSTANCE:Lcom/iMe/di/module/ManagerModuleKt$presentationManagerModule$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;
    .locals 8

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const-class p2, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 19
    move-object v7, p2

    check-cast v7, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;

    .line 133
    const-class p2, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 20
    move-object v6, p2

    check-cast v6, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 133
    const-class p2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 21
    move-object v2, p2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 133
    const-class p2, Lcom/iMe/manager/TelegramApi;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 22
    move-object v3, p2

    check-cast v3, Lcom/iMe/manager/TelegramApi;

    .line 133
    const-class p2, Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 23
    move-object v4, p2

    check-cast v4, Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 133
    const-class p2, Lcom/iMe/gateway/TelegramControllersGateway;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 24
    move-object v5, p1

    check-cast v5, Lcom/iMe/gateway/TelegramControllersGateway;

    .line 18
    new-instance p1, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;-><init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/manager/TelegramApi;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/gateway/TelegramControllersGateway;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/di/module/ManagerModuleKt$presentationManagerModule$1$2;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    move-result-object p1

    return-object p1
.end method
