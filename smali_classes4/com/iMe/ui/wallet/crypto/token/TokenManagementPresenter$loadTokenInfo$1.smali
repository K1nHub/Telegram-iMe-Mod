.class final Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TokenManagementPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->loadTokenInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenManagementPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenManagementPresenter.kt\ncom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$1\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,322:1\n7#2:323\n*S KotlinDebug\n*F\n+ 1 TokenManagementPresenter.kt\ncom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$1\n*L\n194#1:323\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lcom/iMe/storage/domain/model/Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "validationResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    new-instance p1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    .line 192
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$1;->this$0:Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->access$getValidationErrorText(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)Ljava/lang/String;

    move-result-object v2

    .line 193
    sget-object v3, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->VALIDATION_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    .line 191
    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 189
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
