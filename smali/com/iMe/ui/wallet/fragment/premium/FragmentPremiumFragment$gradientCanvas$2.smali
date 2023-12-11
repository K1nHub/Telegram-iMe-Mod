.class final Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientCanvas$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentPremiumFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Canvas;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientCanvas$2;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Canvas;
    .locals 2

    .line 79
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientCanvas$2;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->access$getGradientTextureBitmap(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientCanvas$2;->invoke()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method
