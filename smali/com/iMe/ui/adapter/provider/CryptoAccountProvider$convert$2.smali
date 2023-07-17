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

    .line 65
    check-cast p1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$2;->invoke(Lorg/telegram/ui/Components/BackupImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 1

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CryptoAccountProvider$convert$2;->$item:Lcom/iMe/model/wallet/home/CryptoAccountItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/CryptoAccountItem;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method
