.class public final synthetic Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda14;->f$0:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda14;->f$0:Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->deleteWallets()V

    return-void
.end method
