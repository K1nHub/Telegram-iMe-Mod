.class final Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$1;
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
        "Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdapterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdapterModule.kt\ncom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$1\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,205:1\n129#2,5:206\n129#2,5:211\n129#2,5:216\n129#2,5:221\n129#2,5:226\n129#2,5:231\n129#2,5:236\n129#2,5:241\n129#2,5:246\n129#2,5:251\n129#2,5:256\n129#2,5:261\n129#2,5:266\n*S KotlinDebug\n*F\n+ 1 AdapterModule.kt\ncom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$1\n*L\n43#1:206,5\n44#1:211,5\n45#1:216,5\n46#1:221,5\n47#1:226,5\n48#1:231,5\n49#1:236,5\n50#1:241,5\n51#1:246,5\n52#1:251,5\n53#1:256,5\n54#1:261,5\n55#1:266,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$1;

    invoke-direct {v0}, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$1;-><init>()V

    sput-object v0, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$1;->INSTANCE:Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "$this$factory"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/BannerProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    move-object v13, v1

    check-cast v13, Lcom/iMe/ui/adapter/provider/BannerProvider;

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/CreateAccountProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    move-object v4, v1

    check-cast v4, Lcom/iMe/ui/adapter/provider/CreateAccountProvider;

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    move-object v14, v1

    check-cast v14, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    move-object v12, v1

    check-cast v12, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/HeaderProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    move-object v7, v1

    check-cast v7, Lcom/iMe/ui/adapter/provider/HeaderProvider;

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    move-object v15, v1

    check-cast v15, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    move-object v11, v1

    check-cast v11, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/NftTokenProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    move-object/from16 v16, v1

    check-cast v16, Lcom/iMe/ui/adapter/provider/NftTokenProvider;

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/AddTokensProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    move-object v6, v1

    check-cast v6, Lcom/iMe/ui/adapter/provider/AddTokensProvider;

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    move-object v5, v1

    check-cast v5, Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/ServiceProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    move-object v8, v1

    check-cast v8, Lcom/iMe/ui/adapter/provider/ServiceProvider;

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    move-object v9, v1

    check-cast v9, Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;

    .line 133
    const-class v1, Lcom/iMe/ui/adapter/provider/TotalBalanceProvider;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    move-object v10, v0

    check-cast v10, Lcom/iMe/ui/adapter/provider/TotalBalanceProvider;

    .line 42
    new-instance v0, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-object v3, v0

    invoke-direct/range {v3 .. v16}, Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;-><init>(Lcom/iMe/ui/adapter/provider/CreateAccountProvider;Lcom/iMe/ui/adapter/provider/SelectableHeaderProvider;Lcom/iMe/ui/adapter/provider/AddTokensProvider;Lcom/iMe/ui/adapter/provider/HeaderProvider;Lcom/iMe/ui/adapter/provider/ServiceProvider;Lcom/iMe/ui/adapter/provider/TokenBalanceProvider;Lcom/iMe/ui/adapter/provider/TotalBalanceProvider;Lcom/iMe/ui/adapter/provider/NftCollectionProvider;Lcom/iMe/ui/adapter/provider/GlobalStateProvider;Lcom/iMe/ui/adapter/provider/BannerProvider;Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;Lcom/iMe/ui/adapter/provider/NftTokenProvider;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$1;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/wallet/home/adapter/BalancesRecycleAdapter;

    move-result-object p1

    return-object p1
.end method
