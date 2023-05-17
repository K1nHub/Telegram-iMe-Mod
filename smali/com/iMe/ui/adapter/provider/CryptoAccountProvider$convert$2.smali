.class final Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoAccountProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/CryptoAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/CryptoAccountItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/ui/Components/BackupImageView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/home/CryptoAccountItem;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/home/CryptoAccountItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$2;->$item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$2;->invoke(Lorg/telegram/ui/Components/BackupImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 3

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$dimen;->telegram_avatar_size_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$2;->$item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 63
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$2;->$item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 64
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundInProfileBlue:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    .line 65
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 61
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    return-void
.end method
