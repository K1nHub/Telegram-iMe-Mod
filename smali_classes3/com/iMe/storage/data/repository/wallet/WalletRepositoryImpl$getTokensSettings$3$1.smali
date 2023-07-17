.class final Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$1;
.super Ljava/lang/Object;
.source "WalletRepositoryImpl.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getTokensSettings(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable;"
    }
.end annotation


# instance fields
.field final synthetic $networkId:Ljava/lang/String;

.field final synthetic $response:Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$1;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$1;->$response:Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    iput-object p3, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$1;->$networkId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$1;->call()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final call()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$1;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$1;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    iget-object v2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$1;->$response:Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    iget-object v3, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$1;->$networkId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->access$getTokensSettingsFromDisplayResponse(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$1;->$networkId:Ljava/lang/String;

    .line 169
    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->saveTokensSettings(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
