.class final Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$5;
.super Lkotlin/jvm/internal/Lambda;
.source "AdapterModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdapterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdapterModule.kt\ncom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$5\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,114:1\n127#2,5:115\n127#2,5:120\n*S KotlinDebug\n*F\n+ 1 AdapterModule.kt\ncom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$5\n*L\n61#1:115,5\n62#1:120,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$5;

    invoke-direct {v0}, Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$5;-><init>()V

    sput-object v0, Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$5;->INSTANCE:Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$5;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;
    .locals 5

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance p2, Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    .line 131
    const-class v0, Lcom/smedialink/ui/adapter/provider/StakingOperationProvider;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/adapter/provider/StakingOperationProvider;

    const-class v2, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    const-class v3, Lcom/smedialink/ui/adapter/provider/HeaderProvider;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smedialink/ui/adapter/provider/HeaderProvider;

    .line 131
    const-class v4, Lcom/smedialink/ui/adapter/provider/TokenTransactionProvider;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {p1, v4, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/adapter/provider/TokenTransactionProvider;

    .line 60
    invoke-direct {p2, v0, v2, v3, p1}, Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;-><init>(Lcom/smedialink/ui/adapter/provider/StakingOperationProvider;Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;Lcom/smedialink/ui/adapter/provider/HeaderProvider;Lcom/smedialink/ui/adapter/provider/TokenTransactionProvider;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$5;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/ui/wallet/transaction/adapter/WalletTransactionsRecycleAdapter;

    move-result-object p1

    return-object p1
.end method
