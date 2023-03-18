.class public final Lorg/fork/controller/AlbumsController$Companion;
.super Ljava/lang/Object;
.source "AlbumsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/controller/AlbumsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$9bvOYwCyIHQquMTpbuwlwJVHU5w(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lorg/fork/controller/AlbumsController;
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/AlbumsController$Companion;->getInstance$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lorg/fork/controller/AlbumsController;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/controller/AlbumsController$Companion;-><init>()V

    return-void
.end method

.method private static final getInstance$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lorg/fork/controller/AlbumsController;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/fork/controller/AlbumsController;

    return-object p0
.end method


# virtual methods
.method public final getInstance(I)Lorg/fork/controller/AlbumsController;
    .locals 3

    .line 105
    invoke-static {}, Lorg/fork/controller/AlbumsController;->access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/fork/controller/AlbumsController$Companion$getInstance$1;

    invoke-direct {v2, p1}, Lorg/fork/controller/AlbumsController$Companion$getInstance$1;-><init>(I)V

    new-instance p1, Lorg/fork/controller/AlbumsController$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p1, v2}, Lorg/fork/controller/AlbumsController$Companion$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v1, p1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "accountIndex: Int) = acc\u2026ontroller(accountIndex) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/fork/controller/AlbumsController;

    return-object p1
.end method
