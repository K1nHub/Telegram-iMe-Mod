.class public final Lcom/smedialink/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "WalletConnectSessionsRecycleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 13
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_connect_session:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget v0, Lorg/telegram/messenger/R$id;->constraint_root:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 20
    sget v2, Lorg/telegram/messenger/R$id;->text_peer_name:I

    aput v2, v0, v1

    sget v3, Lorg/telegram/messenger/R$id;->text_peer_url:I

    const/4 v4, 0x1

    aput v3, v0, v4

    const-string v5, "windowBackgroundWhiteBlackText"

    invoke-static {p1, v5, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    new-array v0, v4, [I

    aput v2, v0, v1

    .line 21
    invoke-static {p1, v0}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getPeerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getPeerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 24
    sget v0, Lorg/telegram/messenger/R$id;->image_peer_icon:I

    invoke-virtual {p2}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getPeerIconUrl()Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_logo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, p2, v1, v4}, Lcom/smedialink/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;Z)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/adapter/WalletConnectSessionsRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;)V

    return-void
.end method
