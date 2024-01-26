.class final synthetic Lio/ktor/network/selector/InterestSuspensionsMap$Companion$updaters$1$property$3;
.super Lkotlin/jvm/internal/MutablePropertyReference1Impl;
.source "InterestSuspensionsMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/network/selector/InterestSuspensionsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/network/selector/InterestSuspensionsMap$Companion$updaters$1$property$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/network/selector/InterestSuspensionsMap$Companion$updaters$1$property$3;

    invoke-direct {v0}, Lio/ktor/network/selector/InterestSuspensionsMap$Companion$updaters$1$property$3;-><init>()V

    sput-object v0, Lio/ktor/network/selector/InterestSuspensionsMap$Companion$updaters$1$property$3;->INSTANCE:Lio/ktor/network/selector/InterestSuspensionsMap$Companion$updaters$1$property$3;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const-class v0, Lio/ktor/network/selector/InterestSuspensionsMap;

    const-string v1, "acceptHandlerReference"

    const-string v2, "getAcceptHandlerReference()Lkotlinx/coroutines/CancellableContinuation;"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Lio/ktor/network/selector/InterestSuspensionsMap;

    invoke-static {p1}, Lio/ktor/network/selector/InterestSuspensionsMap;->access$getAcceptHandlerReference$p(Lio/ktor/network/selector/InterestSuspensionsMap;)Lkotlinx/coroutines/CancellableContinuation;

    move-result-object p1

    return-object p1
.end method
