.class public Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupMessageClickableLinkCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletNotificationDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupMessageClickableLinkCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final clickableText:Ljava/lang/String;

.field public final message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 217
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupMessageClickableLink"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 219
    iput-object p2, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupMessageClickableLinkCommand;->message:Ljava/lang/String;

    .line 220
    iput-object p3, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupMessageClickableLinkCommand;->clickableText:Ljava/lang/String;

    .line 221
    iput-object p4, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupMessageClickableLinkCommand;->action:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupMessageClickableLinkCommand;->message:Ljava/lang/String;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupMessageClickableLinkCommand;->clickableText:Ljava/lang/String;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupMessageClickableLinkCommand;->action:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/manager/wallet/WalletLinkClickableView;->setupMessageClickableLink(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 209
    check-cast p1, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$SetupMessageClickableLinkCommand;->apply(Lcom/smedialink/ui/wallet/notifications/details/WalletNotificationDetailsView;)V

    return-void
.end method
