.class final Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$7;
.super Lkotlin/jvm/internal/Lambda;
.source "TelegramModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/smedialink/domain/contacts/ContactsInteractor;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramModule.kt\ncom/smedialink/di/module/TelegramModuleKt$telegramModule$1$7\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,28:1\n127#2,5:29\n*S KotlinDebug\n*F\n+ 1 TelegramModule.kt\ncom/smedialink/di/module/TelegramModuleKt$telegramModule$1$7\n*L\n26#1:29,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$7;

    invoke-direct {v0}, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$7;-><init>()V

    sput-object v0, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$7;->INSTANCE:Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$7;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/domain/contacts/ContactsInteractor;
    .locals 5

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance p2, Lcom/smedialink/domain/contacts/ContactsInteractor;

    .line 131
    const-class v0, Lcom/smedialink/manager/contacts/SelectedContactsDataStore;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/manager/contacts/SelectedContactsDataStore;

    const-class v2, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    const-class v3, Lcom/smedialink/manager/TelegramApi;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smedialink/manager/TelegramApi;

    const-class v4, Lcom/smedialink/gateway/TelegramControllersGateway;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {p1, v4, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/gateway/TelegramControllersGateway;

    .line 26
    invoke-direct {p2, v0, v2, v3, p1}, Lcom/smedialink/domain/contacts/ContactsInteractor;-><init>(Lcom/smedialink/manager/contacts/SelectedContactsDataStore;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/manager/TelegramApi;Lcom/smedialink/gateway/TelegramControllersGateway;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/di/module/TelegramModuleKt$telegramModule$1$7;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/domain/contacts/ContactsInteractor;

    move-result-object p1

    return-object p1
.end method
