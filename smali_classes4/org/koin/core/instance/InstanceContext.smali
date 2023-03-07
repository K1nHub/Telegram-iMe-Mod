.class public final Lorg/koin/core/instance/InstanceContext;
.super Ljava/lang/Object;
.source "InstanceContext.kt"


# instance fields
.field private final koin:Lorg/koin/core/Koin;

.field private final parameters:Lorg/koin/core/parameter/ParametersHolder;

.field private final scope:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>(Lorg/koin/core/Koin;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)V
    .locals 1

    const-string v0, "koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/koin/core/instance/InstanceContext;->koin:Lorg/koin/core/Koin;

    .line 30
    iput-object p2, p0, Lorg/koin/core/instance/InstanceContext;->scope:Lorg/koin/core/scope/Scope;

    .line 31
    iput-object p3, p0, Lorg/koin/core/instance/InstanceContext;->parameters:Lorg/koin/core/parameter/ParametersHolder;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/koin/core/Koin;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 28
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/koin/core/instance/InstanceContext;-><init>(Lorg/koin/core/Koin;Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)V

    return-void
.end method


# virtual methods
.method public final getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/koin/core/instance/InstanceContext;->koin:Lorg/koin/core/Koin;

    return-object v0
.end method

.method public final getParameters()Lorg/koin/core/parameter/ParametersHolder;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/koin/core/instance/InstanceContext;->parameters:Lorg/koin/core/parameter/ParametersHolder;

    return-object v0
.end method

.method public final getScope()Lorg/koin/core/scope/Scope;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/koin/core/instance/InstanceContext;->scope:Lorg/koin/core/scope/Scope;

    return-object v0
.end method
