.class final Lcom/smedialink/di/KoinJavaAppKt$start$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KoinJavaApp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/di/KoinJavaAppKt;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/koin/core/KoinApplication;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/di/KoinJavaAppKt$start$1;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lorg/koin/core/KoinApplication;

    invoke-virtual {p0, p1}, Lcom/smedialink/di/KoinJavaAppKt$start$1;->invoke(Lorg/koin/core/KoinApplication;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/KoinApplication;)V
    .locals 2

    const-string v0, "$this$startKoin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/smedialink/di/KoinJavaAppKt$start$1;->$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lorg/koin/android/ext/koin/KoinExtKt;->androidContext(Lorg/koin/core/KoinApplication;Landroid/content/Context;)Lorg/koin/core/KoinApplication;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 14
    invoke-static {p1, v0, v1, v0}, Lorg/koin/android/ext/koin/KoinExtKt;->androidLogger$default(Lorg/koin/core/KoinApplication;Lorg/koin/core/logger/Level;ILjava/lang/Object;)Lorg/koin/core/KoinApplication;

    .line 15
    invoke-static {}, Lcom/smedialink/storage/data/di/DataComponentKt;->getDataModules()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/storage/domain/di/DomainComponentKt;->getDomainModules()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/di/PresentationComponentKt;->getPresentationModules()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/iMe/i_staking/di/StakingModuleKt;->getStakingModule()Lorg/koin/core/module/Module;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/koin/core/KoinApplication;->modules(Ljava/util/List;)Lorg/koin/core/KoinApplication;

    return-void
.end method
