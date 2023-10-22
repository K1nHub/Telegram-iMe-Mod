.class public final Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1;
.super Ljava/lang/Object;
.source "CreateCryptoBoxFragment.kt"

# interfaces
.implements Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;->openAddAdminScreen(JLorg/telegram/tgnet/TLRPC$Chat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic $this_apply:Lorg/telegram/ui/ChatRightsEditActivity;

.field final synthetic $walletBotId:J

.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;


# direct methods
.method public static synthetic $r8$lambda$lx943v9NgXge8DBfXiE2HIL_cpU(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1;->didSetRights$lambda$0(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatRightsEditActivity;JLcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1;->$this_apply:Lorg/telegram/ui/ChatRightsEditActivity;

    iput-wide p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1;->$walletBotId:J

    iput-object p4, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;

    iput-object p5, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1;->$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final didSetRights$lambda$0(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 261
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createPromoteToAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 264
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

    .line 257
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1;->$this_apply:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1;->$walletBotId:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 259
    iget-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;

    new-instance p3, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;Lorg/telegram/tgnet/TLRPC$User;)V

    const-wide/16 p1, 0xc8

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;->access$getPresenter(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;)Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1;->$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p1, p2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->onWalletBotAdminRightsGranted(Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method
