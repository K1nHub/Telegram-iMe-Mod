.class final Lcom/iMe/di/module/TelegramModuleKt$telegramModule$1$7;
.super Lkotlin/jvm/internal/Lambda;
.source "TelegramModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/di/module/TelegramModuleKt$telegramModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/iMe/domain/contacts/ContactsInteractor;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramModule.kt\ncom/iMe/di/module/TelegramModuleKt$telegramModule$1$7\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,41:1\n129#2,5:42\n129#2,5:47\n129#2,5:52\n129#2,5:57\n*S KotlinDebug\n*F\n+ 1 TelegramModule.kt\ncom/iMe/di/module/TelegramModuleKt$telegramModule$1$7\n*L\n34#1:42,5\n35#1:47,5\n36#1:52,5\n37#1:57,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/di/module/TelegramModuleKt$telegramModule$1$7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/di/module/TelegramModuleKt$telegramModule$1$7;

    invoke-direct {v0}, Lcom/iMe/di/module/TelegramModuleKt$telegramModule$1$7;-><init>()V

    sput-object v0, Lcom/iMe/di/module/TelegramModuleKt$telegramModule$1$7;->INSTANCE:Lcom/iMe/di/module/TelegramModuleKt$telegramModule$1$7;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/domain/contacts/ContactsInteractor;
    .locals 5

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance p2, Lcom/iMe/domain/contacts/ContactsInteractor;

    .line 133
    const-class v0, Lcom/iMe/manager/contacts/SelectedContactsDataStore;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/manager/contacts/SelectedContactsDataStore;

    .line 133
    const-class v2, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 133
    const-class v3, Lcom/iMe/manager/TelegramApi;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/manager/TelegramApi;

    .line 133
    const-class v4, Lcom/iMe/gateway/TelegramControllersGateway;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {p1, v4, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/gateway/TelegramControllersGateway;

    .line 33
    invoke-direct {p2, v0, v2, v3, p1}, Lcom/iMe/domain/contacts/ContactsInteractor;-><init>(Lcom/iMe/manager/contacts/SelectedContactsDataStore;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/manager/TelegramApi;Lcom/iMe/gateway/TelegramControllersGateway;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/di/module/TelegramModuleKt$telegramModule$1$7;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/domain/contacts/ContactsInteractor;

    move-result-object p1

    return-object p1
.end method
