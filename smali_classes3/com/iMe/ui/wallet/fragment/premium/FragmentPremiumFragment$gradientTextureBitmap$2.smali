.class final Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientTextureBitmap$2;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientTextureBitmap$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientTextureBitmap$2;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientTextureBitmap$2;-><init>()V

    sput-object v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientTextureBitmap$2;->INSTANCE:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientTextureBitmap$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Bitmap;
    .locals 2

    .line 77
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x28

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientTextureBitmap$2;->invoke()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
