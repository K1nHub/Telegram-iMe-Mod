.class final Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$setupViews$1$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateCryptoBoxFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$setupViews$1$2$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$setupViews$1$2$1$1;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$setupViews$1$2$1$1;-><init>()V

    sput-object v0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$setupViews$1$2$1$1;->INSTANCE:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$setupViews$1$2$1$1;

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

    .line 369
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$setupViews$1$2$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
