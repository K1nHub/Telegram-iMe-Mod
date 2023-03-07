.class public final Lorg/fork/controller/NeuroBotsController$Companion;
.super Ljava/lang/Object;
.source "NeuroBotsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/controller/NeuroBotsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$saEjK6HbIYJEPR1PHCmHpbqjfQ8(ILjava/lang/Integer;)Lorg/fork/controller/NeuroBotsController;
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/NeuroBotsController$Companion;->getInstance$lambda-0(ILjava/lang/Integer;)Lorg/fork/controller/NeuroBotsController;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/controller/NeuroBotsController$Companion;-><init>()V

    return-void
.end method

.method private static final getInstance$lambda-0(ILjava/lang/Integer;)Lorg/fork/controller/NeuroBotsController;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance p1, Lorg/fork/controller/NeuroBotsController;

    invoke-direct {p1, p0}, Lorg/fork/controller/NeuroBotsController;-><init>(I)V

    return-object p1
.end method


# virtual methods
.method public final getInstance(I)Lorg/fork/controller/NeuroBotsController;
    .locals 3

    .line 45
    invoke-static {}, Lorg/fork/controller/NeuroBotsController;->access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/fork/controller/NeuroBotsController$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/fork/controller/NeuroBotsController$Companion$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1, v2}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "accountInstances.compute\u2026ontroller(accountIndex) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/fork/controller/NeuroBotsController;

    return-object p1
.end method
