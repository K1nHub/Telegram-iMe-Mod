.class final Lcom/iMe/storage/data/di/module/StorageModuleKt$dataStorageModule$1$5;
.super Lkotlin/jvm/internal/Lambda;
.source "StorageModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/di/module/StorageModuleKt$dataStorageModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorageModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorageModule.kt\ncom/iMe/storage/data/di/module/StorageModuleKt$dataStorageModule$1$5\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,60:1\n129#2,5:61\n*S KotlinDebug\n*F\n+ 1 StorageModule.kt\ncom/iMe/storage/data/di/module/StorageModuleKt$dataStorageModule$1$5\n*L\n55#1:61,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/di/module/StorageModuleKt$dataStorageModule$1$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/di/module/StorageModuleKt$dataStorageModule$1$5;

    invoke-direct {v0}, Lcom/iMe/storage/data/di/module/StorageModuleKt$dataStorageModule$1$5;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/di/module/StorageModuleKt$dataStorageModule$1$5;->INSTANCE:Lcom/iMe/storage/data/di/module/StorageModuleKt$dataStorageModule$1$5;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;
    .locals 2

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lorg/koin/android/ext/koin/ModuleExtKt;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    move-result-object p2

    .line 133
    const-class v0, Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 55
    check-cast p1, Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 53
    new-instance v0, Lcom/iMe/storage/data/locale/prefs/impl/AnalyticsPreference;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/data/locale/prefs/impl/AnalyticsPreference;-><init>(Lcom/iMe/storage/domain/gateway/TelegramGateway;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/di/module/StorageModuleKt$dataStorageModule$1$5;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;

    move-result-object p1

    return-object p1
.end method
