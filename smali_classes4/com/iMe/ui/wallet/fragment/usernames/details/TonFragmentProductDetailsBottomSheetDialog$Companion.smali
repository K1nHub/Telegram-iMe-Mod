.class public final Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$Companion;
.super Ljava/lang/Object;
.source "TonFragmentProductDetailsBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;Lcom/iMe/fork/utils/Callbacks$Callback;)Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "productItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onBuyClickAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;

    invoke-direct {v0, p2, p1, p3}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;-><init>(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-object v0
.end method
