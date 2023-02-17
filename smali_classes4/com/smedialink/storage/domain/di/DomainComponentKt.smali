.class public final Lcom/smedialink/storage/domain/di/DomainComponentKt;
.super Ljava/lang/Object;
.source "DomainComponent.kt"


# static fields
.field private static domainModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    invoke-static {}, Lcom/smedialink/storage/domain/di/module/InteractorModuleKt;->getInteractorModule()Lorg/koin/core/module/Module;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/di/DomainComponentKt;->domainModules:Ljava/util/List;

    return-void
.end method

.method public static final getDomainModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/koin/core/module/Module;",
            ">;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/smedialink/storage/domain/di/DomainComponentKt;->domainModules:Ljava/util/List;

    return-object v0
.end method
