.class public final Lcom/smedialink/storage/domain/model/Result$Companion;
.super Ljava/lang/Object;
.source "Result.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/Result$Companion;-><init>()V

    return-void
.end method

.method public static synthetic error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 232
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/domain/model/Result$Companion;->error(Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fail$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Throwable;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 216
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/domain/model/Result$Companion;->fail(Ljava/lang/Throwable;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final error(Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/smedialink/storage/data/network/model/error/ErrorModel;",
            "TT;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/storage/domain/model/Result$Error;-><init>(Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final fail(Ljava/lang/Throwable;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            "TT;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/smedialink/storage/domain/model/Result$Fail;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/storage/domain/model/Result$Fail;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final loading(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "TT;>;"
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/smedialink/storage/domain/model/Result$Loading;

    invoke-direct {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Loading;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "TT;>;"
        }
    .end annotation

    .line 203
    new-instance v0, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-direct {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Success;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
