.class final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Long;",
        "Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$4;

    invoke-direct {v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$4;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$4;->INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 100
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;

    invoke-virtual {p0, v0, v1, p2}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$4;->invoke(JLcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(JLcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
    .locals 0

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
