.class final Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$13;
.super Lkotlin/jvm/internal/Lambda;
.source "AdapterModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/iMe/feature/twitter/search/adapter/TwitterUsersRecycleAdapter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdapterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdapterModule.kt\ncom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$13\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,118:1\n129#2,5:119\n*S KotlinDebug\n*F\n+ 1 AdapterModule.kt\ncom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$13\n*L\n89#1:119,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$13;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$13;

    invoke-direct {v0}, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$13;-><init>()V

    sput-object v0, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$13;->INSTANCE:Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$13;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/feature/twitter/search/adapter/TwitterUsersRecycleAdapter;
    .locals 3

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const-class p2, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 89
    check-cast p2, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/TwitterUserProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    check-cast v1, Lcom/iMe/ui/adapter/provider/TwitterUserProvider;

    .line 133
    const-class v2, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 89
    check-cast p1, Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;

    new-instance v0, Lcom/iMe/feature/twitter/search/adapter/TwitterUsersRecycleAdapter;

    invoke-direct {v0, p2, p1, v1}, Lcom/iMe/feature/twitter/search/adapter/TwitterUsersRecycleAdapter;-><init>(Lcom/iMe/ui/adapter/provider/GlobalStateProvider;Lcom/iMe/ui/adapter/provider/TwitterInviteProvider;Lcom/iMe/ui/adapter/provider/TwitterUserProvider;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$13;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/feature/twitter/search/adapter/TwitterUsersRecycleAdapter;

    move-result-object p1

    return-object p1
.end method
