.class public final Lcom/smedialink/storage/data/network/handlers/impl/DbErrorHandler;
.super Ljava/lang/Object;
.source "DbErrorHandler.kt"

# interfaces
.implements Lcom/smedialink/storage/data/network/handlers/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/storage/data/network/handlers/ErrorHandler<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleError(Ljava/lang/Object;)Lcom/smedialink/storage/data/network/model/error/ErrorModel;
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/network/handlers/impl/DbErrorHandler;->handleError(Ljava/lang/Throwable;)Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    return-object p1
.end method

.method public handleError(Ljava/lang/Throwable;)Lcom/smedialink/storage/data/network/model/error/ErrorModel;
    .locals 3

    const-string v0, "ErrorHandler"

    .line 12
    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 15
    instance-of v0, p1, Landroidx/room/EmptyResultSetException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smedialink/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;->EMPTY:Lcom/smedialink/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/smedialink/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;->UNKNOWN:Lcom/smedialink/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    .line 18
    :goto_0
    new-instance v1, Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v1, v2, v0, p1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Lcom/smedialink/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    return-object v1
.end method
