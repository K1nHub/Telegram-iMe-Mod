.class public final synthetic Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/LinkActionView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/LinkActionView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/LinkActionView;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkActionView;->setAvatar(Landroid/graphics/Bitmap;)V

    return-void
.end method
