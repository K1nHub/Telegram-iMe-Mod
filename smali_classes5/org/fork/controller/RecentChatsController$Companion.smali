.class public final Lorg/fork/controller/RecentChatsController$Companion;
.super Ljava/lang/Object;
.source "RecentChatsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/controller/RecentChatsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$mHmitL9envpU773QKCo467Aj5j8(ILjava/lang/Integer;)Lorg/fork/controller/RecentChatsController;
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/RecentChatsController$Companion;->getInstance$lambda-0(ILjava/lang/Integer;)Lorg/fork/controller/RecentChatsController;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/controller/RecentChatsController$Companion;-><init>()V

    return-void
.end method

.method private static final getInstance$lambda-0(ILjava/lang/Integer;)Lorg/fork/controller/RecentChatsController;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance p1, Lorg/fork/controller/RecentChatsController;

    invoke-direct {p1, p0}, Lorg/fork/controller/RecentChatsController;-><init>(I)V

    return-object p1
.end method


# virtual methods
.method public final getInstance(I)Lorg/fork/controller/RecentChatsController;
    .locals 3

    .line 114
    invoke-static {}, Lorg/fork/controller/RecentChatsController;->access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/fork/controller/RecentChatsController$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/fork/controller/RecentChatsController$Companion$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1, v2}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "accountInstances.compute\u2026ontroller(accountIndex) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/fork/controller/RecentChatsController;

    return-object p1
.end method
