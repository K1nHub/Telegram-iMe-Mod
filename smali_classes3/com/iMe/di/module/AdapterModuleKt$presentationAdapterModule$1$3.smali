.class final Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$3;
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
        "Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdapterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdapterModule.kt\ncom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$3\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,205:1\n129#2,5:206\n129#2,5:211\n129#2,5:216\n129#2,5:221\n129#2,5:226\n129#2,5:231\n129#2,5:236\n129#2,5:241\n*S KotlinDebug\n*F\n+ 1 AdapterModule.kt\ncom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$3\n*L\n67#1:206,5\n68#1:211,5\n69#1:216,5\n70#1:221,5\n71#1:226,5\n72#1:231,5\n73#1:236,5\n74#1:241,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$3;

    invoke-direct {v0}, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$3;-><init>()V

    sput-object v0, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$3;->INSTANCE:Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;
    .locals 10

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const-class p2, Lcom/iMe/ui/adapter/provider/BannerProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 67
    move-object v2, p2

    check-cast v2, Lcom/iMe/ui/adapter/provider/BannerProvider;

    .line 133
    const-class p2, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 68
    move-object v3, p2

    check-cast v3, Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;

    .line 133
    const-class p2, Lcom/iMe/ui/adapter/provider/BinanceTokenBalanceProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 69
    move-object v7, p2

    check-cast v7, Lcom/iMe/ui/adapter/provider/BinanceTokenBalanceProvider;

    .line 133
    const-class p2, Lcom/iMe/ui/adapter/provider/CardButtonProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 70
    move-object v4, p2

    check-cast v4, Lcom/iMe/ui/adapter/provider/CardButtonProvider;

    .line 133
    const-class p2, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 71
    move-object v9, p2

    check-cast v9, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    .line 133
    const-class p2, Lcom/iMe/ui/adapter/provider/HeaderProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 72
    move-object v6, p2

    check-cast v6, Lcom/iMe/ui/adapter/provider/HeaderProvider;

    .line 133
    const-class p2, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 73
    move-object v5, p2

    check-cast v5, Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    .line 133
    const-class p2, Lcom/iMe/ui/adapter/provider/TotalBalanceProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 74
    move-object v8, p1

    check-cast v8, Lcom/iMe/ui/adapter/provider/TotalBalanceProvider;

    .line 66
    new-instance p1, Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;-><init>(Lcom/iMe/ui/adapter/provider/BannerProvider;Lcom/iMe/ui/adapter/provider/BinanceAccountProvider;Lcom/iMe/ui/adapter/provider/CardButtonProvider;Lcom/iMe/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;Lcom/iMe/ui/adapter/provider/HeaderProvider;Lcom/iMe/ui/adapter/provider/BinanceTokenBalanceProvider;Lcom/iMe/ui/adapter/provider/TotalBalanceProvider;Lcom/iMe/ui/adapter/provider/GlobalStateProvider;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$3;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/wallet/home/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object p1

    return-object p1
.end method
