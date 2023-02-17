.class Lorg/solovyev/android/checkout/Billing$CachingRequestListener;
.super Lorg/solovyev/android/checkout/RequestListenerWrapper;
.source "Billing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Billing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachingRequestListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/solovyev/android/checkout/RequestListenerWrapper<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final mRequest:Lorg/solovyev/android/checkout/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/solovyev/android/checkout/Request<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/solovyev/android/checkout/Billing;


# direct methods
.method public constructor <init>(Lorg/solovyev/android/checkout/Billing;Lorg/solovyev/android/checkout/Request;Lorg/solovyev/android/checkout/RequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/solovyev/android/checkout/Request<",
            "TR;>;",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "TR;>;)V"
        }
    .end annotation

    .line 1243
    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$CachingRequestListener;->this$0:Lorg/solovyev/android/checkout/Billing;

    .line 1244
    invoke-direct {p0, p3}, Lorg/solovyev/android/checkout/RequestListenerWrapper;-><init>(Lorg/solovyev/android/checkout/RequestListener;)V

    .line 1245
    invoke-static {p1}, Lorg/solovyev/android/checkout/Billing;->access$000(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/ConcurrentCache;

    move-result-object p1

    invoke-virtual {p1}, Lorg/solovyev/android/checkout/ConcurrentCache;->hasCache()Z

    .line 1246
    iput-object p2, p0, Lorg/solovyev/android/checkout/Billing$CachingRequestListener;->mRequest:Lorg/solovyev/android/checkout/Request;

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Exception;)V
    .locals 2

    .line 1272
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$CachingRequestListener;->mRequest:Lorg/solovyev/android/checkout/Request;

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/Request;->getType()Lorg/solovyev/android/checkout/RequestType;

    move-result-object v0

    .line 1275
    sget-object v1, Lorg/solovyev/android/checkout/Billing$7;->$SwitchMap$org$solovyev$android$checkout$RequestType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 1284
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$CachingRequestListener;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->access$000(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/ConcurrentCache;

    move-result-object v0

    sget-object v1, Lorg/solovyev/android/checkout/RequestType;->GET_PURCHASES:Lorg/solovyev/android/checkout/RequestType;

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/RequestType;->getCacheKeyType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/solovyev/android/checkout/ConcurrentCache;->removeAll(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 1279
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$CachingRequestListener;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->access$000(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/ConcurrentCache;

    move-result-object v0

    sget-object v1, Lorg/solovyev/android/checkout/RequestType;->GET_PURCHASES:Lorg/solovyev/android/checkout/RequestType;

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/RequestType;->getCacheKeyType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/solovyev/android/checkout/ConcurrentCache;->removeAll(I)V

    .line 1288
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/solovyev/android/checkout/RequestListenerWrapper;->onError(ILjava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1251
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$CachingRequestListener;->mRequest:Lorg/solovyev/android/checkout/Request;

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 1252
    iget-object v1, p0, Lorg/solovyev/android/checkout/Billing$CachingRequestListener;->mRequest:Lorg/solovyev/android/checkout/Request;

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/Request;->getType()Lorg/solovyev/android/checkout/RequestType;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1255
    new-instance v4, Lorg/solovyev/android/checkout/Cache$Entry;

    iget-wide v5, v1, Lorg/solovyev/android/checkout/RequestType;->expiresIn:J

    add-long/2addr v2, v5

    invoke-direct {v4, p1, v2, v3}, Lorg/solovyev/android/checkout/Cache$Entry;-><init>(Ljava/lang/Object;J)V

    .line 1256
    iget-object v2, p0, Lorg/solovyev/android/checkout/Billing$CachingRequestListener;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v2}, Lorg/solovyev/android/checkout/Billing;->access$000(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/ConcurrentCache;

    move-result-object v2

    invoke-virtual {v1, v0}, Lorg/solovyev/android/checkout/RequestType;->getCacheKey(Ljava/lang/String;)Lorg/solovyev/android/checkout/Cache$Key;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Lorg/solovyev/android/checkout/ConcurrentCache;->putIfNotExist(Lorg/solovyev/android/checkout/Cache$Key;Lorg/solovyev/android/checkout/Cache$Entry;)V

    .line 1258
    :cond_0
    sget-object v0, Lorg/solovyev/android/checkout/Billing$7;->$SwitchMap$org$solovyev$android$checkout$RequestType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1264
    :cond_1
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$CachingRequestListener;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->access$000(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/ConcurrentCache;

    move-result-object v0

    sget-object v1, Lorg/solovyev/android/checkout/RequestType;->GET_PURCHASES:Lorg/solovyev/android/checkout/RequestType;

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/RequestType;->getCacheKeyType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/solovyev/android/checkout/ConcurrentCache;->removeAll(I)V

    .line 1267
    :goto_0
    invoke-super {p0, p1}, Lorg/solovyev/android/checkout/RequestListenerWrapper;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
