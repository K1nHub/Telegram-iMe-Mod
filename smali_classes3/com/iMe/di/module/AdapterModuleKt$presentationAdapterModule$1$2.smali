.class final Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$2;
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
        "Lcom/iMe/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdapterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdapterModule.kt\ncom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$2\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,205:1\n129#2,5:206\n129#2,5:211\n129#2,5:216\n*S KotlinDebug\n*F\n+ 1 AdapterModule.kt\ncom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$2\n*L\n60#1:206,5\n61#1:211,5\n62#1:216,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$2;

    invoke-direct {v0}, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$2;-><init>()V

    sput-object v0, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$2;->INSTANCE:Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter;
    .locals 4

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance p2, Lcom/iMe/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter;

    .line 133
    const-class v0, Lcom/iMe/ui/adapter/provider/CexProtocolProvider;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/adapter/provider/CexProtocolProvider;

    .line 133
    const-class v2, Lcom/iMe/ui/adapter/provider/DexProtocolProvider;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/adapter/provider/DexProtocolProvider;

    .line 133
    const-class v3, Lcom/iMe/ui/adapter/provider/HeaderProvider;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/adapter/provider/HeaderProvider;

    .line 59
    invoke-direct {p2, v0, v2, p1}, Lcom/iMe/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter;-><init>(Lcom/iMe/ui/adapter/provider/CexProtocolProvider;Lcom/iMe/ui/adapter/provider/DexProtocolProvider;Lcom/iMe/ui/adapter/provider/HeaderProvider;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/di/module/AdapterModuleKt$presentationAdapterModule$1$2;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/ui/wallet/swap/adapter/WalletSwapProtocolsRecycleAdapter;

    move-result-object p1

    return-object p1
.end method
