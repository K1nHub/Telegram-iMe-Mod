.class final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$gsonBuilder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;-><init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/google/gson/GsonBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$gsonBuilder$2;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/google/gson/GsonBuilder;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$gsonBuilder$2;->this$0:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->access$getGson$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/Gson;->newBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$gsonBuilder$2;->invoke()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method
