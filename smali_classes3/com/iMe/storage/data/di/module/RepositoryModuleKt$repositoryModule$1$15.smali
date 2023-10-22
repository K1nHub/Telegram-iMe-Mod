.class final Lcom/iMe/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$15;
.super Lkotlin/jvm/internal/Lambda;
.source "RepositoryModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/di/module/RepositoryModuleKt$repositoryModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRepositoryModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RepositoryModule.kt\ncom/iMe/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$15\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,285:1\n129#2,5:286\n129#2,5:291\n129#2,5:296\n129#2,5:301\n129#2,5:306\n*S KotlinDebug\n*F\n+ 1 RepositoryModule.kt\ncom/iMe/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$15\n*L\n170#1:286,5\n171#1:291,5\n172#1:296,5\n173#1:301,5\n174#1:306,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$15;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$15;

    invoke-direct {v0}, Lcom/iMe/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$15;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$15;->INSTANCE:Lcom/iMe/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$15;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;
    .locals 7

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const-class p2, Lcom/iMe/storage/data/network/api/own/AccountLevelApi;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 170
    move-object v2, p2

    check-cast v2, Lcom/iMe/storage/data/network/api/own/AccountLevelApi;

    .line 133
    const-class p2, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 171
    move-object v6, p2

    check-cast v6, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 133
    const-class p2, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 172
    move-object v5, p2

    check-cast v5, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 133
    const-class p2, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 173
    move-object v4, p2

    check-cast v4, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 133
    const-class p2, Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 174
    move-object v3, p1

    check-cast v3, Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 169
    new-instance p1, Lcom/iMe/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;-><init>(Lcom/iMe/storage/data/network/api/own/AccountLevelApi;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 168
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$15;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/domain/repository/crypto/level/AccountLevelRepository;

    move-result-object p1

    return-object p1
.end method
