.class final Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$2$1;
.super Ljava/lang/Object;
.source "CryptoRecipientManager.kt"

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->requestAddressPermission(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $chatId:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;


# direct methods
.method constructor <init>(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$2$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    iput-object p2, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$2$1;->$chatId:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$2$1;->this$0:Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;

    invoke-static {v0}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;->access$getViewState(Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager;)Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientManager$requestAddressPermission$2$1;->$chatId:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v1, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-interface {v0, v1, v2}, Lcom/smedialink/manager/crypto/recipient/CryptoRecipientView;->openChatScreen(J)V

    return-void
.end method
