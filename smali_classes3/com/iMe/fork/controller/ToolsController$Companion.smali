.class public final Lcom/iMe/fork/controller/ToolsController$Companion;
.super Ljava/lang/Object;
.source "ToolsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/controller/ToolsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$CRO3p-pjU2gKs7yd4nLzFCv6loU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/fork/controller/ToolsController;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/ToolsController$Companion;->getInstance$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/fork/controller/ToolsController;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/controller/ToolsController$Companion;-><init>()V

    return-void
.end method

.method private static final getInstance$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/fork/controller/ToolsController;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/controller/ToolsController;

    return-object p0
.end method


# virtual methods
.method public final getInstance(I)Lcom/iMe/fork/controller/ToolsController;
    .locals 3

    .line 140
    invoke-static {}, Lcom/iMe/fork/controller/ToolsController;->access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/iMe/fork/controller/ToolsController$Companion$getInstance$1;

    invoke-direct {v2, p1}, Lcom/iMe/fork/controller/ToolsController$Companion$getInstance$1;-><init>(I)V

    new-instance p1, Lcom/iMe/fork/controller/ToolsController$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p1, v2}, Lcom/iMe/fork/controller/ToolsController$Companion$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v1, p1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "accountIndex: Int) = acc\u2026ontroller(accountIndex) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/controller/ToolsController;

    return-object p1
.end method
