.class final Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$convert$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoBoxProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/CryptoBoxProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/CryptoBoxItem;)V
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
.field final synthetic $this_with:Lcom/iMe/model/cryptobox/CryptoBoxItem;


# direct methods
.method constructor <init>(Lcom/iMe/model/cryptobox/CryptoBoxItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$convert$1$1;->$this_with:Lcom/iMe/model/cryptobox/CryptoBoxItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$convert$1$1;->invoke(Landroidx/appcompat/widget/AppCompatImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 7

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$convert$1$1;->$this_with:Lcom/iMe/model/cryptobox/CryptoBoxItem;

    invoke-virtual {v0}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getChatAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$convert$1$1;->$this_with:Lcom/iMe/model/cryptobox/CryptoBoxItem;

    invoke-virtual {v0}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getChatAvatarUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/CryptoBoxProvider$convert$1$1;->$this_with:Lcom/iMe/model/cryptobox/CryptoBoxItem;

    .line 53
    invoke-virtual {v2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getChatId()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/iMe/model/cryptobox/CryptoBoxItem;->getChatName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2, v0}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
