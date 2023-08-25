.class final Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$binding$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoBoxStatusInfoBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $parentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$binding$2;->$parentActivity:Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$binding$2;->invoke()Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$binding$2;->$parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentCryptoboxStatusInfoBinding;

    move-result-object v0

    return-object v0
.end method
