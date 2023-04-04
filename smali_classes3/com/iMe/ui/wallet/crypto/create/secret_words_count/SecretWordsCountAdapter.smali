.class public final Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SecretWordsCountAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Ljava/lang/Integer;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 3

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_secret_words_count:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget v0, Lorg/telegram/messenger/R$id;->text_words_count:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleForeground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const-string v2, "windowBackgroundWhite"

    .line 21
    invoke-static {p1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    const-string v2, "dialogTextBlack"

    .line 22
    invoke-static {p1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 23
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountAdapter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_import_words_count:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void
.end method
