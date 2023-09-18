.class abstract Lorg/solovyev/android/checkout/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected final mApiVersion:I

.field private final mId:I

.field private mListener:Lorg/solovyev/android/checkout/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/solovyev/android/checkout/RequestListener<",
            "TR;>;"
        }
    .end annotation
.end field

.field private mListenerCalled:Z

.field private mTag:Ljava/lang/Object;

.field private final mType:Lorg/solovyev/android/checkout/RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/solovyev/android/checkout/Request;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lorg/solovyev/android/checkout/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/solovyev/android/checkout/Request<",
            "TR;>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget-object v0, p1, Lorg/solovyev/android/checkout/Request;->mType:Lorg/solovyev/android/checkout/RequestType;

    iput-object v0, p0, Lorg/solovyev/android/checkout/Request;->mType:Lorg/solovyev/android/checkout/RequestType;

    .line 71
    iget v0, p1, Lorg/solovyev/android/checkout/Request;->mId:I

    iput v0, p0, Lorg/solovyev/android/checkout/Request;->mId:I

    .line 72
    iget v0, p1, Lorg/solovyev/android/checkout/Request;->mApiVersion:I

    iput v0, p0, Lorg/solovyev/android/checkout/Request;->mApiVersion:I

    .line 73
    monitor-enter p1

    .line 74
    :try_start_0
    iget-object v0, p1, Lorg/solovyev/android/checkout/Request;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    iput-object v0, p0, Lorg/solovyev/android/checkout/Request;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    .line 75
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method constructor <init>(Lorg/solovyev/android/checkout/RequestType;)V
    .locals 1

    const/4 v0, 0x3

    .line 60
    invoke-direct {p0, p1, v0}, Lorg/solovyev/android/checkout/Request;-><init>(Lorg/solovyev/android/checkout/RequestType;I)V

    return-void
.end method

.method constructor <init>(Lorg/solovyev/android/checkout/RequestType;I)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/solovyev/android/checkout/Request;->mType:Lorg/solovyev/android/checkout/RequestType;

    .line 65
    iput p2, p0, Lorg/solovyev/android/checkout/Request;->mApiVersion:I

    .line 66
    sget-object p1, Lorg/solovyev/android/checkout/Request;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    iput p1, p0, Lorg/solovyev/android/checkout/Request;->mId:I

    return-void
.end method

.method private checkListenerCalled()Z
    .locals 2

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-boolean v0, p0, Lorg/solovyev/android/checkout/Request;->mListenerCalled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 137
    monitor-exit p0

    return v1

    .line 139
    :cond_0
    iput-boolean v1, p0, Lorg/solovyev/android/checkout/Request;->mListenerCalled:Z

    .line 140
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onError(ILjava/lang/Exception;)V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lorg/solovyev/android/checkout/Request;->getListener()Lorg/solovyev/android/checkout/RequestListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0}, Lorg/solovyev/android/checkout/Request;->checkListenerCalled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/solovyev/android/checkout/RequestListener;->onError(ILjava/lang/Exception;)V

    :cond_1
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/Request;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    if-eqz v0, :cond_0

    .line 111
    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->cancel(Lorg/solovyev/android/checkout/RequestListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lorg/solovyev/android/checkout/Request;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method abstract getCacheKey()Ljava/lang/String;
.end method

.method protected getId()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/solovyev/android/checkout/Request;->mId:I

    return v0
.end method

.method getListener()Lorg/solovyev/android/checkout/RequestListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "TR;>;"
        }
    .end annotation

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/Request;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 182
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTag()Ljava/lang/Object;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/solovyev/android/checkout/Request;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method getType()Lorg/solovyev/android/checkout/RequestType;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/solovyev/android/checkout/Request;->mType:Lorg/solovyev/android/checkout/RequestType;

    return-object v0
.end method

.method protected final handleError(I)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Request;->onError(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final handleError(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "RESPONSE_CODE"

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    .line 167
    :goto_0
    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Request;->handleError(I)Z

    move-result p1

    return p1
.end method

.method protected onError(I)V
    .locals 3

    .line 145
    invoke-static {p1}, Lorg/solovyev/android/checkout/ResponseCodes;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " request"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->error(Ljava/lang/String;)V

    .line 147
    new-instance v0, Lorg/solovyev/android/checkout/BillingException;

    invoke-direct {v0, p1}, Lorg/solovyev/android/checkout/BillingException;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/solovyev/android/checkout/Request;->onError(ILjava/lang/Exception;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 151
    instance-of v0, p1, Lorg/solovyev/android/checkout/BillingException;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/solovyev/android/checkout/Billing;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    const/16 v0, 0x2711

    .line 153
    invoke-direct {p0, v0, p1}, Lorg/solovyev/android/checkout/Request;->onError(ILjava/lang/Exception;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lorg/solovyev/android/checkout/Request;->getListener()Lorg/solovyev/android/checkout/RequestListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-direct {p0}, Lorg/solovyev/android/checkout/Request;->checkListenerCalled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-interface {v0, p1}, Lorg/solovyev/android/checkout/RequestListener;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method setListener(Lorg/solovyev/android/checkout/RequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "TR;>;)V"
        }
    .end annotation

    .line 186
    monitor-enter p0

    .line 188
    :try_start_0
    iput-object p1, p0, Lorg/solovyev/android/checkout/Request;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    .line 189
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method setTag(Ljava/lang/Object;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/solovyev/android/checkout/Request;->mTag:Ljava/lang/Object;

    return-void
.end method

.method abstract start(Lcom/android/vending/billing/IInAppBillingService;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/solovyev/android/checkout/RequestException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 194
    invoke-virtual {p0}, Lorg/solovyev/android/checkout/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
