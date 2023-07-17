.class final Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/utils/helper/wallet/AuthHelper;->subscribeWithCommonErrorHandling(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$2;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$2;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$2;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 250
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    .line 253
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 254
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onError$default(Lcom/iMe/utils/helper/wallet/AuthHelper;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 255
    :cond_0
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {v0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->access$onError(Lcom/iMe/utils/helper/wallet/AuthHelper;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
