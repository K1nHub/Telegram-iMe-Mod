.class public final Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;
.super Ljava/lang/Object;
.source "CryptoBoxConditionsBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lorg/telegram/tgnet/TLRPC$Chat;ILjava/lang/Object;)Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 278
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lorg/telegram/tgnet/TLRPC$Chat;)Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lorg/telegram/tgnet/TLRPC$Chat;)Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoBoxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;

    invoke-direct {v0, p2, p3, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;-><init>(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-object v0
.end method
