.class final Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoBoxStatusInfoRecycleAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter$convert$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter$convert$1;->$item:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter$convert$1;->invoke(Landroidx/appcompat/widget/AppCompatImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter$convert$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/adapter/CryptoBoxStatusInfoRecycleAdapter$convert$1;->$item:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->getColorResId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    return-void
.end method
