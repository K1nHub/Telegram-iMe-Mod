.class final Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "DataSourceModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSourceFactory;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataSourceModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataSourceModule.kt\ncom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$4\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,150:1\n129#2,5:151\n*S KotlinDebug\n*F\n+ 1 DataSourceModule.kt\ncom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$4\n*L\n65#1:151,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$4;

    invoke-direct {v0}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$4;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$4;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSourceFactory;
    .locals 3

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance p2, Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSourceFactory;

    .line 65
    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getETH_CANCEL_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    .line 133
    const-class v1, Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSource;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSource;

    .line 64
    invoke-direct {p2, p1}, Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSourceFactory;-><init>(Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSource;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$4;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/data/datasource/cancel/WalletCancelDataSourceFactory;

    move-result-object p1

    return-object p1
.end method
