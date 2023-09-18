.class Lorg/telegram/ui/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity;->startLoginTokenGenerator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->common_unexpected_error_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public onTokenAuthorized(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/LoginActivity;->access$100(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    return-void
.end method

.method public onTokenGenerated(Ljava/lang/String;I)V
    .locals 2

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setLoginToken(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_0
    sget-object v0, Lcom/iMe/fork/enums/ExternalApp;->QUICK_LOGIN:Lcom/iMe/fork/enums/ExternalApp;

    invoke-virtual {v0}, Lcom/iMe/fork/enums/ExternalApp;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.iMe.quicklogin.AUTHORIZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "token"

    .line 338
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "tokenLifeTime"

    .line 339
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lcom/iMe/common/IdFabric$RequestCode;->QUICK_LOGIN_AUTHORIZE:I

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTwoStepVerificationNeeded()V
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/QRCodeBottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$1;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$200(Lorg/telegram/ui/LoginActivity;)V

    return-void
.end method
