.class public Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;
.super Ljava/lang/Object;
.source "ApiErrorHandler.kt"

# interfaces
.implements Lcom/iMe/storage/data/network/handlers/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/storage/data/network/handlers/ErrorHandler<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getHttpError(Lretrofit2/HttpException;)Lcom/iMe/storage/data/network/model/error/ErrorModel;
    .locals 4

    .line 62
    :try_start_0
    new-instance v0, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->BAD_RESPONSE:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    new-instance v1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NOT_DEFINED:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    invoke-direct {v1, v0, v2, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method


# virtual methods
.method public bridge synthetic handleError(Ljava/lang/Object;)Lcom/iMe/storage/data/network/model/error/ErrorModel;
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;->handleError(Ljava/lang/Throwable;)Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    return-object p1
.end method

.method public handleError(Ljava/lang/Throwable;)Lcom/iMe/storage/data/network/model/error/ErrorModel;
    .locals 5

    const-string v0, "ErrorHandler"

    .line 22
    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 27
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_1

    .line 29
    move-object v0, p1

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    .line 30
    new-instance v1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    invoke-virtual {v0}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->UNAUTHORIZED:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 32
    :cond_0
    invoke-direct {p0, v0}, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;->getHttpError(Lretrofit2/HttpException;)Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v1

    goto :goto_2

    .line 37
    :cond_1
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/io/IOException;

    :goto_0
    if-eqz v0, :cond_3

    .line 38
    new-instance v1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NO_CONNECTION:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    invoke-direct {v1, v0, v2, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 41
    :cond_3
    instance-of v0, p1, Lcom/google/firebase/FirebaseException;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 42
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/FirebaseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 43
    instance-of v4, v3, Ljava/net/SocketTimeoutException;

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    instance-of v1, v3, Ljava/io/IOException;

    :goto_1
    if-eqz v1, :cond_5

    new-instance v1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NO_CONNECTION:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    invoke-direct {v1, v0, v2, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 44
    :cond_5
    new-instance v1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->BAD_RESPONSE:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    invoke-direct {v1, v2, v0, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 47
    :cond_6
    new-instance v1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_7
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->BAD_RESPONSE:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    invoke-direct {v1, v2, v0, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    :goto_2
    if-nez v1, :cond_8

    .line 50
    new-instance v1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->BAD_RESPONSE:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const-string v3, "No Defined Error!"

    invoke-direct {v1, v3, v0, v2, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    :cond_8
    return-object v1
.end method
