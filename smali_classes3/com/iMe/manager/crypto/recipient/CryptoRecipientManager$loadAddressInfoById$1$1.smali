.class final Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$1$1;
.super Ljava/lang/Object;
.source "CryptoRecipientManager.kt"

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->loadAddressInfoById(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $recipient:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;


# direct methods
.method constructor <init>(Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$1$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    iput-object p2, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$1$1;->$recipient:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$1$1;->this$0:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    iget-object v1, p0, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager$loadAddressInfoById$1$1;->$recipient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->requestAddressPermission(Ljava/lang/String;)V

    return-void
.end method
