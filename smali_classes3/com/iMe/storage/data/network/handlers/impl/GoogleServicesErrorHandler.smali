.class public final Lcom/iMe/storage/data/network/handlers/impl/GoogleServicesErrorHandler;
.super Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;
.source "GoogleServicesErrorHandler.kt"


# instance fields
.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/network/handlers/impl/GoogleServicesErrorHandler;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic handleError(Ljava/lang/Object;)Lcom/iMe/storage/data/network/model/error/ErrorModel;
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/network/handlers/impl/GoogleServicesErrorHandler;->handleError(Ljava/lang/Throwable;)Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    return-object p1
.end method

.method public handleError(Ljava/lang/Throwable;)Lcom/iMe/storage/data/network/model/error/ErrorModel;
    .locals 4

    .line 18
    instance-of v0, p1, Lretrofit2/HttpException;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 19
    move-object v0, p1

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v2

    const/16 v3, 0x190

    if-eq v2, v3, :cond_2

    const/16 v3, 0x191

    if-eq v2, v3, :cond_1

    const/16 v3, 0x193

    if-eq v2, v3, :cond_2

    const/16 v3, 0x1ad

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    .line 34
    :cond_0
    new-instance v1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    .line 35
    iget-object v2, p0, Lcom/iMe/storage/data/network/handlers/impl/GoogleServicesErrorHandler;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lcom/iMe/storage/R$string;->translation_rate_limit_error:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 37
    sget-object v3, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->RATE_LIMIT:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    .line 34
    invoke-direct {v1, v2, v0, v3, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 20
    :cond_1
    new-instance v1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    .line 21
    invoke-virtual {v0}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 23
    sget-object v3, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->UNAUTHORIZED:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    .line 20
    invoke-direct {v1, v2, v0, v3, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 27
    :cond_2
    new-instance v1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    .line 28
    invoke-virtual {v0}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 30
    sget-object v3, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->PERMISSION_DENIED:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    .line 27
    invoke-direct {v1, v2, v0, v3, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 45
    :cond_3
    instance-of v0, p1, Lcom/google/firebase/ml/common/FirebaseMLException;

    if-eqz v0, :cond_5

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/ml/common/FirebaseMLException;

    invoke-virtual {v0}, Lcom/google/firebase/ml/common/FirebaseMLException;->getCode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    const/16 v2, 0xe

    if-eq v1, v2, :cond_4

    .line 54
    new-instance v1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->BAD_RESPONSE:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    invoke-direct {v1, v0, v2, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 47
    :cond_4
    new-instance v1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v0}, Lcom/google/firebase/ml/common/FirebaseMLException;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 50
    sget-object v3, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->PERMISSION_DENIED:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    .line 47
    invoke-direct {v1, v2, v0, v3, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 58
    :cond_5
    instance-of v0, p1, Lcom/google/firebase/FirebaseException;

    if-eqz v0, :cond_8

    .line 59
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/FirebaseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 60
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    instance-of v2, v2, Ljava/io/IOException;

    :goto_0
    if-eqz v2, :cond_7

    new-instance v1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 62
    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NO_CONNECTION:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    .line 60
    invoke-direct {v1, v0, v2, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 66
    :cond_7
    new-instance v0, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->BAD_RESPONSE:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    invoke-direct {v0, v1, v2, p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    move-object v1, v0

    :cond_8
    :goto_1
    if-eqz v1, :cond_9

    const-string v0, "ErrorHandler"

    .line 74
    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 77
    :cond_9
    invoke-super {p0, p1}, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;->handleError(Ljava/lang/Throwable;)Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v1

    :goto_2
    return-object v1
.end method
