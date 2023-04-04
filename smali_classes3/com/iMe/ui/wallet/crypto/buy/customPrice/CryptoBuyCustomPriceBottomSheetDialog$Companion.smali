.class public final Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$Companion;
.super Ljava/lang/Object;
.source "CryptoBuyCustomPriceBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;Lkotlin/jvm/functions/Function2;)Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Lcom/iMe/storage/domain/model/crypto/simplex/Currency;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method
