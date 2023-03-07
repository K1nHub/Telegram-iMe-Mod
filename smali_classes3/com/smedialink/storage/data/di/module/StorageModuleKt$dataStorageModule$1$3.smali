.class final Lcom/smedialink/storage/data/di/module/StorageModuleKt$dataStorageModule$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "StorageModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/di/module/StorageModuleKt$dataStorageModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorageModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorageModule.kt\ncom/smedialink/storage/data/di/module/StorageModuleKt$dataStorageModule$1$3\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,22:1\n127#2,5:23\n*S KotlinDebug\n*F\n+ 1 StorageModule.kt\ncom/smedialink/storage/data/di/module/StorageModuleKt$dataStorageModule$1$3\n*L\n19#1:23,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/di/module/StorageModuleKt$dataStorageModule$1$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/di/module/StorageModuleKt$dataStorageModule$1$3;

    invoke-direct {v0}, Lcom/smedialink/storage/data/di/module/StorageModuleKt$dataStorageModule$1$3;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/di/module/StorageModuleKt$dataStorageModule$1$3;->INSTANCE:Lcom/smedialink/storage/data/di/module/StorageModuleKt$dataStorageModule$1$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;
    .locals 3

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance p2, Lcom/smedialink/storage/data/locale/prefs/impl/HintsPreference;

    invoke-static {p1}, Lorg/koin/android/ext/koin/ModuleExtKt;->androidContext(Lorg/koin/core/scope/Scope;)Landroid/content/Context;

    move-result-object v0

    .line 131
    const-class v1, Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    .line 19
    invoke-direct {p2, v0, p1}, Lcom/smedialink/storage/data/locale/prefs/impl/HintsPreference;-><init>(Landroid/content/Context;Lcom/smedialink/storage/domain/gateway/TelegramGateway;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/di/module/StorageModuleKt$dataStorageModule$1$3;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    move-result-object p1

    return-object p1
.end method
