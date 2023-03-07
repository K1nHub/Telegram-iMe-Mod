.class final Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$1;
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
        "Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdapterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdapterModule.kt\ncom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$1\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,114:1\n127#2,5:115\n127#2,5:120\n127#2,5:125\n127#2,5:130\n127#2,5:135\n*S KotlinDebug\n*F\n+ 1 AdapterModule.kt\ncom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$1\n*L\n35#1:115,5\n36#1:120,5\n37#1:125,5\n38#1:130,5\n39#1:135,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$1;

    invoke-direct {v0}, Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$1;-><init>()V

    sput-object v0, Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$1;->INSTANCE:Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "$this$factory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const-class v1, Lcom/smedialink/ui/adapter/provider/BannerProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    move-object v13, v1

    check-cast v13, Lcom/smedialink/ui/adapter/provider/BannerProvider;

    .line 131
    const-class v1, Lcom/smedialink/ui/adapter/provider/CreateAccountProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    move-object v4, v1

    check-cast v4, Lcom/smedialink/ui/adapter/provider/CreateAccountProvider;

    .line 131
    const-class v1, Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    move-object v14, v1

    check-cast v14, Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider;

    .line 131
    const-class v1, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    move-object v15, v1

    check-cast v15, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    .line 131
    const-class v1, Lcom/smedialink/ui/adapter/provider/SelectableHeaderProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    move-object v5, v1

    check-cast v5, Lcom/smedialink/ui/adapter/provider/SelectableHeaderProvider;

    .line 131
    const-class v1, Lcom/smedialink/ui/adapter/provider/SelectTokenProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    move-object v6, v1

    check-cast v6, Lcom/smedialink/ui/adapter/provider/SelectTokenProvider;

    .line 131
    const-class v1, Lcom/smedialink/ui/adapter/provider/ServiceProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    move-object v8, v1

    check-cast v8, Lcom/smedialink/ui/adapter/provider/ServiceProvider;

    .line 131
    const-class v1, Lcom/smedialink/ui/adapter/provider/TokenBalanceProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    move-object v9, v1

    check-cast v9, Lcom/smedialink/ui/adapter/provider/TokenBalanceProvider;

    .line 131
    const-class v1, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    move-object v10, v1

    check-cast v10, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;

    .line 131
    const-class v1, Lcom/smedialink/ui/adapter/provider/HeaderProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    move-object v7, v1

    check-cast v7, Lcom/smedialink/ui/adapter/provider/HeaderProvider;

    .line 131
    const-class v1, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    move-object v12, v1

    check-cast v12, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    .line 131
    const-class v1, Lcom/smedialink/ui/adapter/provider/NftCollectionProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    move-object v11, v1

    check-cast v11, Lcom/smedialink/ui/adapter/provider/NftCollectionProvider;

    .line 131
    const-class v1, Lcom/smedialink/ui/adapter/provider/NftTokenProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    move-object/from16 v16, v0

    check-cast v16, Lcom/smedialink/ui/adapter/provider/NftTokenProvider;

    .line 34
    new-instance v0, Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-object v3, v0

    invoke-direct/range {v3 .. v16}, Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;-><init>(Lcom/smedialink/ui/adapter/provider/CreateAccountProvider;Lcom/smedialink/ui/adapter/provider/SelectableHeaderProvider;Lcom/smedialink/ui/adapter/provider/SelectTokenProvider;Lcom/smedialink/ui/adapter/provider/HeaderProvider;Lcom/smedialink/ui/adapter/provider/ServiceProvider;Lcom/smedialink/ui/adapter/provider/TokenBalanceProvider;Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;Lcom/smedialink/ui/adapter/provider/NftCollectionProvider;Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;Lcom/smedialink/ui/adapter/provider/BannerProvider;Lcom/smedialink/ui/adapter/provider/CryptoAccountProvider;Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;Lcom/smedialink/ui/adapter/provider/NftTokenProvider;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$1;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/ui/wallet/home/v2/adapter/BalancesRecycleAdapter;

    move-result-object p1

    return-object p1
.end method
