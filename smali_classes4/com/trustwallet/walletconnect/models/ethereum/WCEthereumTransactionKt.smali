.class public final Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt;
.super Ljava/lang/Object;
.source "WCEthereumTransaction.kt"


# static fields
.field private static final ethTransactionSerializer:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer<",
            "Ljava/util/List<",
            "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt$ethTransactionSerializer$1;->INSTANCE:Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt$ethTransactionSerializer$1;

    invoke-static {v0}, Lcom/github/salomonbrys/kotson/GsonBuilderKt;->jsonDeserializer(Lkotlin/jvm/functions/Function1;)Lcom/google/gson/JsonDeserializer;

    move-result-object v0

    sput-object v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt;->ethTransactionSerializer:Lcom/google/gson/JsonDeserializer;

    return-void
.end method

.method public static final getEthTransactionSerializer()Lcom/google/gson/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/JsonDeserializer<",
            "Ljava/util/List<",
            "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;",
            ">;>;"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransactionKt;->ethTransactionSerializer:Lcom/google/gson/JsonDeserializer;

    return-object v0
.end method
