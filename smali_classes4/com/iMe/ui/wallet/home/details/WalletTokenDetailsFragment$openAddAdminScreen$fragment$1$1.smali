.class public final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1;
.super Ljava/lang/Object;
.source "WalletTokenDetailsFragment.kt"

# interfaces
.implements Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->openAddAdminScreen(JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $boxId:Ljava/lang/String;

.field final synthetic $this_apply:Lorg/telegram/ui/ChatRightsEditActivity;

.field final synthetic $walletBotId:J

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;


# direct methods
.method public static synthetic $r8$lambda$Zlar0I730eDoNQEkOJqP2IIk3aM(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1;->didSetRights$lambda$0(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatRightsEditActivity;JLcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1;->$this_apply:Lorg/telegram/ui/ChatRightsEditActivity;

    iput-wide p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1;->$walletBotId:J

    iput-object p4, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    iput-object p5, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1;->$boxId:Ljava/lang/String;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final didSetRights$lambda$0(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 509
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createPromoteToAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 512
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method


# virtual methods
.method public didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    return-void
.end method

.method public didSetRights(ILorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;)V
    .locals 0

    .line 505
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1;->$this_apply:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1;->$walletBotId:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 507
    iget-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    new-instance p3, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;Lorg/telegram/tgnet/TLRPC$User;)V

    const-wide/16 p1, 0xc8

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 516
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1;->$boxId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->showCryptoBoxRefreshConfirmation(Ljava/lang/String;)V

    return-void
.end method
