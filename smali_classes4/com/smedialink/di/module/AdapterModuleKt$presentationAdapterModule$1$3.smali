.class final Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$3;
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
        "Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdapterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdapterModule.kt\ncom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$3\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,113:1\n127#2,5:114\n127#2,5:119\n127#2,5:124\n*S KotlinDebug\n*F\n+ 1 AdapterModule.kt\ncom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$3\n*L\n49#1:114,5\n50#1:119,5\n51#1:124,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$3;

    invoke-direct {v0}, Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$3;-><init>()V

    sput-object v0, Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$3;->INSTANCE:Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;
    .locals 10

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const-class p2, Lcom/smedialink/ui/adapter/provider/HeaderProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 49
    move-object v6, p2

    check-cast v6, Lcom/smedialink/ui/adapter/provider/HeaderProvider;

    .line 131
    const-class p2, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 49
    move-object v5, p2

    check-cast v5, Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;

    .line 131
    const-class p2, Lcom/smedialink/ui/adapter/provider/BannerProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 49
    move-object v2, p2

    check-cast v2, Lcom/smedialink/ui/adapter/provider/BannerProvider;

    .line 131
    const-class p2, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 50
    move-object v3, p2

    check-cast v3, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;

    .line 131
    const-class p2, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 50
    move-object v7, p2

    check-cast v7, Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;

    .line 131
    const-class p2, Lcom/smedialink/ui/adapter/provider/CardButtonProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 50
    move-object v4, p2

    check-cast v4, Lcom/smedialink/ui/adapter/provider/CardButtonProvider;

    .line 131
    const-class p2, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 51
    move-object v9, p2

    check-cast v9, Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;

    .line 131
    const-class p2, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 51
    move-object v8, p1

    check-cast v8, Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;

    .line 48
    new-instance p1, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;-><init>(Lcom/smedialink/ui/adapter/provider/BannerProvider;Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;Lcom/smedialink/ui/adapter/provider/CardButtonProvider;Lcom/smedialink/ui/adapter/provider/HeaderWithNetworkSwitcherProvider;Lcom/smedialink/ui/adapter/provider/HeaderProvider;Lcom/smedialink/ui/adapter/provider/BinanceTokenBalanceProvider;Lcom/smedialink/ui/adapter/provider/TotalBalanceProvider;Lcom/smedialink/ui/adapter/provider/GlobalStateProvider;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/di/module/AdapterModuleKt$presentationAdapterModule$1$3;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/adapter/BinancePayRecycleAdapter;

    move-result-object p1

    return-object p1
.end method
