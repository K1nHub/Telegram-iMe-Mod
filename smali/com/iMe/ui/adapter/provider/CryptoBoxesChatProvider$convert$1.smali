.class final Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoBoxesChatProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/ui/custom/TitledInputFieldView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;


# direct methods
.method constructor <init>(Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider$convert$1;->$item:Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lcom/iMe/ui/custom/TitledInputFieldView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider$convert$1;->invoke(Lcom/iMe/ui/custom/TitledInputFieldView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/ui/custom/TitledInputFieldView;)V
    .locals 4

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 31
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrChannel:I

    const-string v1, "AccDescrChannel"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"AccDescrChann\u2026R.string.AccDescrChannel)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/iMe/ui/custom/TitledInputFieldView;->setTitle(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/iMe/ui/custom/TitledInputFieldView;->getInputView()Lorg/telegram/ui/Components/LinkActionView;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxesChatProvider$convert$1;->$item:Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;

    const/4 v2, 0x1

    .line 33
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkActionView;->hideAllActionButtons(Z)V

    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkActionView;->setMode(Z)V

    .line 35
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LinkActionView;->setOptionsViewIcon(I)V

    .line 36
    invoke-virtual {v1}, Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LinkActionView;->setAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 37
    invoke-virtual {v1}, Lcom/iMe/model/cryptobox/CryptoBoxesChatItem;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LinkActionView;->setText(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LinkActionView;->setFieldEnabled(Z)V

    .line 40
    invoke-virtual {p1}, Lcom/iMe/ui/custom/TitledInputFieldView;->setupColors()V

    return-void
.end method
