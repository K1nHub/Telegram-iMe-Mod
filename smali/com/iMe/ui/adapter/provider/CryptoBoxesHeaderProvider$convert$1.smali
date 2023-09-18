.class final Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoBoxesHeaderProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/CryptoBoxesHeaderItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/ui/Components/RLottieImageView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$convert$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$convert$1;

    invoke-direct {v0}, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$convert$1;-><init>()V

    sput-object v0, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$convert$1;->INSTANCE:Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$convert$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/CryptoBoxesHeaderProvider$convert$1;->invoke(Lorg/telegram/ui/Components/RLottieImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 45
    sget v0, Lorg/telegram/messenger/R$raw;->fork_cryptoboxes:I

    const/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 46
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method
