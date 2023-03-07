.class public Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionMakeTransferCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletNotificationDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionMakeTransferCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final code:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field public final isContactSelected:Z

.field public final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field public final userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;ZLjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    .line 176
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "actionMakeTransfer"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 178
    iput-object p2, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionMakeTransferCommand;->code:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 179
    iput-object p3, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionMakeTransferCommand;->userId:Ljava/lang/String;

    .line 180
    iput-boolean p4, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionMakeTransferCommand;->isContactSelected:Z

    .line 181
    iput-object p5, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionMakeTransferCommand;->address:Ljava/lang/String;

    .line 182
    iput-object p6, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionMakeTransferCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView;)V
    .locals 6

    .line 187
    iget-object v1, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionMakeTransferCommand;->code:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionMakeTransferCommand;->userId:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionMakeTransferCommand;->isContactSelected:Z

    iget-object v4, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionMakeTransferCommand;->address:Ljava/lang/String;

    iget-object v5, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionMakeTransferCommand;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/smedialink/manager/wallet/WalletLinkClickableView;->actionMakeTransfer(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;ZLjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 163
    check-cast p1, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionMakeTransferCommand;->apply(Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView;)V

    return-void
.end method
