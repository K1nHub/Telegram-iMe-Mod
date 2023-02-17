.class Lorg/telegram/ui/Components/PasscodeView$9;
.super Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;->checkFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;

.field final synthetic val$cryptoObject:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;

.field final synthetic val$fingerprintManager:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;)V
    .locals 0

    .line 1403
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    iput-object p2, p0, Lorg/telegram/ui/Components/PasscodeView$9;->val$fingerprintManager:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    iput-object p3, p0, Lorg/telegram/ui/Components/PasscodeView$9;->val$cryptoObject:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-direct {p0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 9

    .line 1407
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1600(Lorg/telegram/ui/Components/PasscodeView;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-nez v0, :cond_1

    if-ne p1, v2, :cond_1

    .line 1408
    iget-object v3, p0, Lorg/telegram/ui/Components/PasscodeView$9;->val$fingerprintManager:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1700(Lorg/telegram/ui/Components/PasscodeView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/PasscodeView$9;->val$cryptoObject:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;

    :cond_0
    move-object v4, v1

    const/4 v5, 0x0

    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1800(Lorg/telegram/ui/Components/PasscodeView;)Landroidx/core/os/CancellationSignal;

    move-result-object v6

    const/4 v8, 0x0

    move-object v7, p0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->authenticate(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    .line 1412
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1900(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1413
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PasscodeView;->access$1900(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1416
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1418
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/PasscodeView;->access$1902(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_1

    .line 1419
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1600(Lorg/telegram/ui/Components/PasscodeView;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eq p1, v2, :cond_4

    .line 1420
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PasscodeView;->access$2000(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    .line 1431
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    sget v1, Lorg/telegram/messenger/R$string;->FingerprintNotRecognized:I

    const-string v2, "FingerprintNotRecognized"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->access$2000(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1426
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/PasscodeView;->access$2000(Lorg/telegram/ui/Components/PasscodeView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 2

    .line 1437
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1900(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1900(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1441
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1443
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->access$1902(Lorg/telegram/ui/Components/PasscodeView;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1445
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1700(Lorg/telegram/ui/Components/PasscodeView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$2100(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 1446
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->access$2100(Lorg/telegram/ui/Components/PasscodeView;)Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationResult;->getCryptoObject()Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;->onFingerPrintConfirmed(Ljavax/crypto/Cipher;)V

    goto :goto_1

    .line 1448
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$9;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PasscodeView;->access$1200(Lorg/telegram/ui/Components/PasscodeView;Z)V

    :goto_1
    return-void
.end method
