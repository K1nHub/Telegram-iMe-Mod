.class public final Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$Companion;
.super Ljava/lang/Object;
.source "CryptoBoxStatusInfoBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Landroid/app/Activity;)Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;
    .locals 1

    const-string v0, "parentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;

    invoke-direct {v0, p1}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoBottomSheetDialog;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
