.class public final Lorg/koin/core/instance/SingleInstanceFactory;
.super Lorg/koin/core/instance/InstanceFactory;
.source "SingleInstanceFactory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/koin/core/instance/InstanceFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/koin/core/definition/BeanDefinition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "beanDefinition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    return-void
.end method

.method public static final synthetic access$setValue$p(Lorg/koin/core/instance/SingleInstanceFactory;Ljava/lang/Object;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lorg/koin/core/instance/SingleInstanceFactory;->value:Ljava/lang/Object;

    return-void
.end method

.method private final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/koin/core/instance/SingleInstanceFactory;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Single instance created couldn\'t return value"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public create(Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/instance/InstanceContext;",
            ")TT;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lorg/koin/core/instance/SingleInstanceFactory;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 46
    invoke-super {p0, p1}, Lorg/koin/core/instance/InstanceFactory;->create(Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0}, Lorg/koin/core/instance/SingleInstanceFactory;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public get(Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/instance/InstanceContext;",
            ")TT;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    new-instance v1, Lorg/koin/core/instance/SingleInstanceFactory$get$1;

    invoke-direct {v1, p0, p1}, Lorg/koin/core/instance/SingleInstanceFactory$get$1;-><init>(Lorg/koin/core/instance/SingleInstanceFactory;Lorg/koin/core/instance/InstanceContext;)V

    invoke-virtual {v0, p0, v1}, Lorg/koin/mp/KoinPlatformTools;->synchronized(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 56
    invoke-direct {p0}, Lorg/koin/core/instance/SingleInstanceFactory;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCreated(Lorg/koin/core/instance/InstanceContext;)Z
    .locals 0

    .line 33
    iget-object p1, p0, Lorg/koin/core/instance/SingleInstanceFactory;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
