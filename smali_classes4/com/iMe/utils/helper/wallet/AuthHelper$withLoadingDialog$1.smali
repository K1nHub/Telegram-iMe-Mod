.class final Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/utils/helper/wallet/AuthHelper;->withLoadingDialog(Lio/reactivex/Observable;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/reactivex/disposables/Disposable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1;


# direct methods
.method public static synthetic $r8$lambda$EbRsPU4IY3a9c6kWIhJM8MzBIok(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1;->invoke$lambda$0(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 223
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 224
    sget-object p0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    invoke-static {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->access$onAuthFlowFinished(Lcom/iMe/utils/helper/wallet/AuthHelper;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 221
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1;->invoke(Lio/reactivex/disposables/Disposable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 222
    invoke-static {}, Lcom/iMe/utils/helper/wallet/AuthHelper;->access$getDelegate$p()Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/disposables/Disposable;)V

    invoke-interface {v0, v1}, Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;->showLoadingDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    :cond_0
    return-void
.end method
