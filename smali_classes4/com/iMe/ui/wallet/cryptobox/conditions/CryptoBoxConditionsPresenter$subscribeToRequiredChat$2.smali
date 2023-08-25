.class final Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoBoxConditionsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->subscribeToRequiredChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/tgnet/TLRPC$Chat;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$2;->this$0:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 208
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$2;->invoke(Lorg/telegram/tgnet/TLRPC$Chat;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$2;->this$0:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;

    const/4 v1, 0x0

    .line 211
    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    .line 210
    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->access$setSourceChat$p(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 213
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter$subscribeToRequiredChat$2;->this$0:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->access$updateActionButtonType(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;)V

    return-void
.end method
