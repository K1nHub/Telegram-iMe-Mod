.class public final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createActionBarBackground$1;
.super Landroid/view/View;
.source "CreateWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->createActionBarBackground()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createActionBarBackground$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    .line 467
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 468
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createActionBarBackground$1;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createActionBarBackground$1;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createActionBarBackground$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    const-string v2, "windowBackgroundWhite"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 473
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v5, v1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createActionBarBackground$1;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 474
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$createActionBarBackground$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getParentLayout$p$s1606076837(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    return-void
.end method
